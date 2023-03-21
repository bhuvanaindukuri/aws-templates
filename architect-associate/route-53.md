### Route 53

- DNS Server & Domain Registrar
- Possible to have health check
- 100% availability SLA
- Supports A/AAAA/CNAME and NS

 

#### Record contains

- Domain/Subdomain name
- Record Type
- value
- Routing policy
- TTL 
    - Time for which the record is cached on the client side
    - dig command displays the remaining TTL

#### Record Types
- A - Maps hostname to IPv4
- AAAA - Maps hostname to IPv6
- CNAME - Map hostname to another hostname
- NS - Name servers for the hosted zone

#### Mapping Types:

#### CNAME
- Cant be set to apex record (Ex: sgtest.com)
Alias Records
- Can be used to map to resources
- TTL cant be set
- Cant be set to EC2 dns alias
- Free

#### Hosted Zones
- Container for records that define how to route traffic to a domain and its subdomain
- Public
- Private
   - Meant within a VPC
   - Map to Private IPs
         
#### Routing policy
- Simple
  - Multiple values are returned to the client if available and the client randomly chooses one
  - When alias is enabled then no healthcheck
- Weighted
  - Control the % of requests going to each record
  - Can be used load balancing
- Latency
  - Closest to the user
- Failover
  - Can be used for disaster recovery
  - Add multiple records and mention primary and secondary
  - Health check is mandatory for primary
  - If primary's health check fails, the dns points to secondary 
- Geolocation
  - Useful for website localization
- Geoproximity
  - Helps in routing more traffic to specific region
  - Based on bias
- Multi-value
  - Use when routing traffic to multiple resources
  - Can be associated with Health Checks (return only values for healthy resources)
  - Up to 8 healthy records are returned for each Multi-Value query
  - Multi-Value is not a substitute for having an ELB


#### Health checks
- Health Check => Automated DNS Failover:
  - Health checks that monitor an endpoint (application, server, other AWS resource)
  - Health checks that monitor other health checks (Calculated Health Checks)
  - Health checks that monitor CloudWatch Alarms (full control !!) – e.g., throttles of DynamoDB, alarms on RDS, custom metrics, … (helpful for private resources)
- Integrated with CW Metrics
- About 15 global health checkers check endpoint health
- If > 18% checks pass, it is considered healthy
- For private hosted zone, health check can be done using cloudwatch metrics
- Can be created for IP or hostname

#### Calculated health checks
- Combine results of multiple health checks
- Or, ANd and not opeartors can be used
- Upto 256 chilc health checks
- Specify that of health checks that need to pass
