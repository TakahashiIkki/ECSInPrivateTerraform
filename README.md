# ECSInPrivateTerraform

## Terraform

required 1.1.9

### use tfenv

```bash
$ tfenv install 1.1.9
$ tfenv use 1.1.9
```

# How to Setup

## 1. setup env

```
# Register credentials in .env
$ cp .env.sample .env
$ vim .env
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export AWS_DEFAULT_REGION=ap-northeast-1

# Read credential information written in .env files
$ source .env
```

## 2. terraform init

```bash
$ terraform init
```
