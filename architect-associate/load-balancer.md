### Intro
- DNS mapping/common URL
- Health checks
- Elastic

#### Hands-on
- Application Load Balancer with EC2 Target group
  - https://app.pluralsight.com/labs/detail/2179e97e-190a-45a2-b6ed-8d87a101de9f

#### Types of Load balancers in AWS
- Classic Load Balancers
  - Support HTTP, HTTPS, TCP, SSL
  - v1 old generation
  - Deprecated
- Application Load balancers
  - Support HTTP, HTTPS, Websocket
  - Layer 7 only
  - v2 new generation
  - Accessed through security groups
  - Routing is possible
    - By Path
    - By hostname
    - By query string or parameters
  - IP of the client is passed as headers X-Forwarded-For, X-Forwarded-Port and X-Forwarded-Proto 
- Network Load Balancer
  - TCP, TLS, UDP
  - v2 new generation
- Gateway load balancer
  - Layer 3/ Network layer
  - IP Protocol
