### Elastic Container Service (ECS)
- Launch Docker container in AWS
- Can be run on EC2 instances

### AWS Fargate
- Serverless
- Launch Docker container

### Elastic Container Registry (ECR)
- Private docker container registry

### AWS Lambda
- Serverless
- Event-Driven
- up to 10GB of RAM
- Lambda container image must implement Lambda runtime API
- Pricing
  - Pay per calls
  - Pay per duration

### API Gateway
- Can be used as an interface for Lambda
- Serverless & Scalable
- Supports RESTful APIs and Websocket APIs
- Support for security, user authentication, API Throttling, API Keys, monitoring

### AWS Batch
- Any job which has start and end
- Batch will dynamically launch EC2 instances or spot instances
- Provisions right amount of compute/memory
- submit or schedule batch jobs
- Defined as docker images and run on ECS

### Amazon Lightsail
- Virtual Servers, storage, databases and networking
- Low & Predictive pricing
- Simple web applications
- No Auto-scaling
- Meant for users with low cloud experience