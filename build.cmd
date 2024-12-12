set AWS_ACCOUNT_ID="123456789012"

aws --profile alpha-access ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin %AWS_ACCOUNT_ID%.dkr.ecr.ap-southeast-2.amazonaws.com

docker --log-level warn build ./calculator -t calculator-app

docker tag calculator-app:latest %AWS_ACCOUNT_ID%.dkr.ecr.ap-southeast-2.amazonaws.com/app-ecr-repo:calculator-app

docker push %AWS_ACCOUNT_ID%.dkr.ecr.ap-southeast-2.amazonaws.com/app-ecr-repo:calculator-app
