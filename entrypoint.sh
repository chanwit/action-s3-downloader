#
# WORKDIR = /github/workspace
#
set -x

mc config host add s3 ${INPUT_S3ENDPOINT} ${INPUT_AWSACCESSKEYID} ${INPUT_AWSSECRETACCESSKEY}
mc cp s3/${INPUT_S3BUCKETANDFILE} .
