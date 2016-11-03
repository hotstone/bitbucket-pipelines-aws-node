Deploy Node.js project To AWS Environment With Bitbucket Pipelines
---

This is a basic image to deploy Node.js project to AWS Environment with Bitbucket Pipelines.
It is based on node:4.6 docker image.

Included in this image:
- AWS CLI 1.11.12 with Python 2.7.9
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
