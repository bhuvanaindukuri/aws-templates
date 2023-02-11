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
