# Example Node.js Project

This is a sample Node.js calculator project and auto deployment code in AWS cloud environment using Terraform.

## Table of Contents

- [Build](#build)
- [Installation](#installation)
- [Security](#security)
- [Architecture](#architecture)

## Build

The calculator application is referred from https://github.com/andrewagain/calculator. The source code is used AS IS.

To build and test locally, the application can be built using Node.js. In our example, Node.js 16 is used to be compatible with the packages.

To install the dependencies, run the following command:

```bash
npm install
```

The below command can run the application locally:

```bash
npm start
```

To build the application, Terraform, AWS CLI, and Docker components are required. The build script will create a Docker image and upload the image to ECR.

An AWS profile needs to be created in the CLI command. In this project, the `alpha-access` profile name is used. The profile has elevated privileges. The AWS Account Number needs to be provided in the build and Terraform main script.

The below command creates the ECR repository, which is required for uploading the image to ECR.

```bash
cd ./platform
terraform init
terraform apply -target=module.ecr
```

To build the Docker image and upload it to ECR, execute the build script:

```bash
sh ./build.sh
```

For Windows environment:

```cmd
build.cmd
```

## Installation

The Terraform code will create network components, an application load balancer, and an ECS service task.

```bash
cd ./platform
terraform init
terraform apply
```

## Security

The code does not use SSL, authentication, or DNS. However, it is strictly advised to use them.

## Architecture 

![Architecture Diagram](./images/High-level-architecture-diagram.png)
