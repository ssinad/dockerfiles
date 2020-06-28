from sys import argv
from google.oauth2 import service_account
import googleapiclient.discovery
from googleapiclient.http import MediaFileUpload

SCOPES = ['https://www.googleapis.com/auth/drive']
SERVICE_ACCOUNT_FILE = argv[1]
FILE_ID = argv[2]

credentials = service_account.Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE, scopes=SCOPES)

google_drive_service = googleapiclient.discovery.build('drive', 'v3', credentials=credentials)
media = MediaFileUpload('thesis.pdf', mimetype='application/pdf', resumable=True)
google_drive_service.files().update(fileId=FILE_ID, media_body=media).execute()