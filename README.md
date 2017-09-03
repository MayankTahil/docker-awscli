AWS cli in minimal footprint
============================

Automatic built minimal docker image for AWS cli based on Alpine Linux (`library/alpine:latest`), around 77MB.

## Usage

You can run the utility in an ephemeral container to evoke the aws cli utility. Now you can directly drop into a AWS CLI prompt with double-tab auto completion and also have access to the current working directory as well. 

Create an alias to your `~/.bashrc file` or equivalent to evoke the AWS CLI prompt:

```
alias aws="docker run -it \
--rm \
-e AWS_ACCESS_KEY_ID=${your-key-id} \
-e AWS_SECRET_ACCESS_KEY=${your-access-key} \
-e AWS_DEFAULT_REGION=us-${your-default-region} \
-v $(pwd):/aws aws-cli"
```

Remember to `source ~/.bashrc` before running the AWS command or logout and login again to your shell.

Try entering the command `aws` to drop down into the AWS CLI prompt. Then try entering in the following command `aws ec2 describe-instances` to show details of your EC2 isntances in the defailt region.


Refer to <http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html> for more detail.

## More information
Alpine Linux: <https://registry.hub.docker.com/_/alpine/>

AWS cli: <https://aws.amazon.com/cli/>
