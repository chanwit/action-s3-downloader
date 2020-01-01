#
# WORKDIR = /github/workspace
#
set -x

mc config host add s3 ${S3_ENDPOINT} ${AWS_ACCESS_KEY_ID} ${AWS_SECRET_ACCESS_KEY}
mc cp s3/${S3_BUCKET_AND_FILE} .
