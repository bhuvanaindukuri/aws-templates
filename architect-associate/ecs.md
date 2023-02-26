### Intro
- Runs docker containers
- EFS can be mounted for both launch types
- S3 cannot be mounted as file system
- Task can be invoked from Event Bridge to create serverless architecture

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

#### ECS Service Autoscaling
- Automatically increase/decrease the desired number of ECS tasks
- Uses AWS Application Auto Scaling
   - ECS Service Average CPU Utilization
   - ECS Service Average Memory Utilization - Scale on RAM
   - ALB Request Count Per Target – metric coming from the ALB 
 - Types
   - Target Tracking – scale based on target value for a specific CloudWatch metric
   - Step Scaling – scale based on a specified CloudWatch Alarm
   - Scheduled Scaling – scale based on a specified date/time (predictable changes


#### EC2 Launch Type – Auto Scaling EC2 Instance
- Accommodate ECS Service Scaling by adding underlying EC2 Instances
- Types
  - Auto Scaling Group Scaling
    - Scale your ASG based on CPU Utilization
    - Add EC2 instances over time
  - ECS Cluster Capacity Provider
    - Capacity Provider paired with an Auto Scaling Group
    - Add EC2 Instances when there are not enough resources to create a new task
