### AWS API Gateway
- Support for the WebSocket Protocol 
- Handle API versioning (v1, v2…) 
- Handle different environments (dev, test, prod…) 
- Handle security (Authentication and Authorization) 
- Create API keys, handle request throttling 
- Swagger / Open API import to quickly define APIs 
- Transform and validate requests and responses 
- Generate SDK and API specifications 
- Cache API response
- Timeout can be specified (Default - 30sec)

#### API Gateway – Integrations High Level
- Lambda Function
- HTTP
- AWS Service

#### Endpoint Types
- Edge-Optimized (default)
- Regional
- Private

#### Security
- User Authentication through
  - IAM Roles (useful for internal applications)
  - Cognito (identity for external users – example mobile users)
  - Custom Authorizer (your own logic
- Custom Domain Name HTTPS security through integration with AWS Certificate Manager (ACM)
