#### AWS Serverless services
- AWS Lambda 
- DynamoDB 
- AWS Cognito 
- AWS API Gateway
- Amazon S3 
- AWS SNS & SQS 
- AWS Kinesis Data Firehose 
- Aurora Serverless 
- Step Functions 
- Fargate

#### AWS Lambda 
- Possible to run containers only if the container image implements Lambda Runtime API
- Runtime settings like the runtime and handler indicate the name of the main file and the function that Lambda looks for
- Execution Limits
  - Memory alocation 128MB - 10GB in 1MB increments
  - Max timeout 15minutes
  - Max 4KB environment variables
  - Disk capacity in function container (/tmp) 512MB - 10GB
  - Concurrency executions: 1000 (Can be increased)
- Deployment limits
  - Lambda function deployment size (compressed .zip): 50 MB
  - Size of uncompressed deployment (code + dependencies): 250 MB
  - Can use the /tmp directory to load other files at startup
  - Size of environment variables: 4 KB 
- Invoke Lambda from RDS & AUrora
  - Allows to process data events/ acts as trigger
  - Supported for RDS for PostGreSQL and Aurora MySQL
  - Different from RDS event notifications which are audit events (ex: user creation) 

#### Lambda Network
- Launched in AWS-owned VPC by default
- Can be launched in VPC
- RDS Proxy acts as connection pool for Lambda functions


#### CloudFront Customizations
- 2 options available
  - CloudFront Functions
    - Javascript functions
    - Can be used to change viewer request and response
    - Code entirely managed at CloudFront
    - Max execution time <1mS
  - Lambda@Edge
    - Nodeja or Python
    - Can modify Viewer Request, response and origin request/response 
    - Max execution time 5-10 secs
