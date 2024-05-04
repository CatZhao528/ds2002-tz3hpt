#!/bin/bash

bucket_name="ds2002-tz3hpt"
file_path="C:/Users/surface/Desktop/Cat_August_2010-4.jpg"
file_name="Cat_August_2010-4.jpg"

# Upload
aws s3 cp "$file_path" "s3://$bucket_name/$file_name"

# Make the file public
aws s3api put-object-acl --bucket $bucket_name --key $file_name --acl public-read

aws s3 presign "s3://$bucket_name/$file_name" --expires-in 604800
