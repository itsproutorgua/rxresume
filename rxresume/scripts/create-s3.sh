#!/bin/bash

bucket_name="rxresume3bucket"

aws s3api head-bucket --bucket "$bucket_name" --region us-east-2 2>/dev/null

if [[ $? -eq 0 ]]; then
  echo "Bucket $bucket_name alredy exist."
else
  aws s3api create-bucket --region us-east-2 --bucket "$bucket_name" 
  echo "Bucket $bucket_name created successfully."
fi





