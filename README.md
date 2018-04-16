Deploy Node.js project To AWS Environment With Bitbucket Pipelines
---

This is a basic image to deploy Node.js project to AWS Environment with Bitbucket Pipelines.
It is based on node:8.10.0 docker image.

Included in this image:
- Debian 8.10
- Linux/4.9.87-linuxkit-aufs botocore/1.10.4
- AWS CLI 1.15.4 with Python 2.7.9
- EB CLI 3.12.4 (Python 2.7.9)
- zip
- git

AWS Lambda Sample Deployment Script

```
- echo BITBUCKET_BRANCH $BITBUCKET_BRANCH
- echo BITBUCKET_COMMIT $BITBUCKET_COMMIT
- echo AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID
- npm install
- zip -r file.zip . -x '*.git*'
- aws --region ap-northeast-1 lambda update-function-code --function-name xxxxx --zip-file fileb://./file.zip
```
