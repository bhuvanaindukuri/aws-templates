### Intro
- Runs docker containers
- EFS can be mounted for both launch types
- S3 cannot be mounted as file system

#### Hands-on lab
- Deploy Docker Containers on AWS with Amazon Elastic Container Service (ECS) - https://app.pluralsight.com/labs/detail/183ed8b9-e132-4f99-8b8f-831e6c192b54/toc
- Implement Auto Scaling for Amazon ECS - https://app.pluralsight.com/labs/detail/d9f357a4-e625-4ed3-9f2a-353ff386a01c/toc

#### EC2 Launch Type
- EC2 instance should run ECS agent
- IAM Roles
  - EC2 Instance Profile
    - Used by ECS AGent
    - Permissions to make API calls to ECS Service
    - Send container logs to cloudwatch logs
    - pull docker image from ECR
    - Reference sensitive data in secrets manager
  - ECS Task Role
    - Used by ECS Tasks
    - Different roles for different ECS services based on the need

#### Fargate Launch Type
- Serverless

#### Load balancer integration
- ALB - Preferred
- NLB - Exceptional cases
- ELB - Supported by not recommended, Fargate not supported

