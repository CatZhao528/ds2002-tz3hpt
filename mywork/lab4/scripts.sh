#!/bin/bash

# Variables
bucket_name="bucket-name"
file_path="/local/path/to/your/image.jpg"
file_name="image.jpg"

# Upload the file
aws s3 cp "$file_path" "s3://$bucket_name/$file_name"

# Make the file public
aws s3api put-object-acl --bucket $bucket_name --key $file_name --acl public-read

# Generate a presigned URL
aws s3 presign "s3://$bucket_name/$file_name" --expires-in 604800
