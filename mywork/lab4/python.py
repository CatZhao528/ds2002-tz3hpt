import boto3
import requests

BUCKET_NAME = 'ds2002-tz3hpt'
OBJECT_NAME = 'Cat_August_2010-4.jpg'
URL = 'https://en.wikipedia.org/wiki/File:Cat_August_2010-4.jpg'  # URL of the image you want to download

# Download
response = requests.get(URL)
with open(OBJECT_NAME, 'wb') as file:
    file.write(response.content)

s3_client = boto3.client('s3')

# Upload the file
s3_client.upload_file(OBJECT_NAME, BUCKET_NAME, OBJECT_NAME, ExtraArgs={'ACL':'public-read'})

url = s3_client.generate_presigned_url('get_object',
                                      Params={'Bucket': BUCKET_NAME, 'Key': OBJECT_NAME},
                                      ExpiresIn=604800)

print("Presigned URL:", url)
