### Shared responsibility model

- AWS responsibility “Security of the Cloud”\
  This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services.
- Customer responsibility “Security in the Cloud”
  - Customers are responsible for managing their data (including encryption options), classifying their assets, and using IAM tools to apply the appropriate permissions.
  - Applications
  - User data

Least privilege access
- MFA should be enabled for root user
- MFA options
  - Google authenticator
  - Authy
  - Yubikey
  - Hardware key fob MFA device

Creation of user involves
- Specify what the user needs to access like programatic access or console
- set permissions/policy
- Add tag
  
  
### Services

<b>Amazon Virtual Private Cloud(VPC)</b>
   - Isolate from internet
   - Can connect to other private networks using IPSec tunnels and AWS Direct connect
---- Network ------
AWS Virtual Private Cloud(VPC)
   - Can choose IP range
   - Further grouped into subnets
   - Region level
   - To allow external traffic an internet gateway need to be used ()
   - To allow traffic from approved network, virtual private gateway need to be used ( Similar to a VPN)
   - Private link can be used to connect multiple VPCs and avoid traffic in the internet
   - 2 types of VPC endpoints available
     1. Gateway endpoint
     2. Interface endpoint
   - Each VPC has a router/route table
     - A route table contains a set of rules, called routes, that are used to determine where network traffic is directed.
     - Each subnet in your VPC must be associated with a route table; the table controls the routing for the subnet. A subnet can only be associated with one route table at a time, but you can associate multiple subnets with the same route table.  

Subnet
  - Grouping within the VPC
  - Created for providing access to the gateway
  - AZ level
  - Each subnet has a Network Acess Control List(ACL) to check the allowed 
  - Network ACL checks control at the entrance and exit
  - Network ACL is stateless
  - Network ACL allows all inbound and outbound traffic by default

#### NAT Gateway 
- Helps private subnet access resources in internet
- Attached to subnet

#### Internet Gateway
- Helps in exposing a subnet to the internet
- Attached to VPC

### VPC Features
1. Network hardening

#### VPC Flow logs
- Capture information about IP traffic going into interfaces
- Can be loaded to S3 or CloudWatch logs

#### VPC Peering
- Connect 2 VPCs privately
- Not transitive
- Must not have overlapping CIDR IP range
- Can be across regions also

#### VPC Endpoints
- Allow to connect to AWS services using a private network
- VPC Endpoint Gateway allows only S3 & DynamoDB
- VPC Endpoint Interface allows to access the rest of the services

### Security Group
 - Controls access at resource level within the subnet
 - Check only entrance and not exit
 - Stateful
 - Doesnt allow any traffic by default
 - Acts as a Firewaal
 - Can sutorize IPs or other security groups

 Note: 3389 - Port for RDP(Remote Desktop Protocol)


Stateless | Stateful

#### AWS Private link
- Most secure and scalable to expose a service to 1000s of VPCs

#### Site-to-Site VPN
- Connect on-premise VPN to AWS
- Goes over public network
- Encrypted
- Customer Gateway(CGW) is required on client side
- Virtual Private Gateway (VPG) required on AWS side

#### AWS Client VPN
- Connect from any computer using OpenVPN to your private network in AWS and On-Premises
- Goes over public network
- Allows connecting to EC2 using private IP

  
### AWS Direct Connect(DX)
  - Dedicated direct connection between datacenter and VPC
  - Low latency and high throughput and security  
  - Doesnt travel over the public internet
  - setup by a local partner

### AWS Transit Gateway
- Transitive peering between thousands of VPCs and On-premises
- Star connection
- One single gateway
- Simplifies complex network topology

<b>AWS IAM</b>
- Global service
- Group can have multiple users but not other groups
- Policies defined in JSON and contains permissions
- Policy file structure
  - Statement
    - Id
    - Effect - Allow/Deny
    - Principal - User
    - Action - Scopes of the APIs or permissions
    - Resource - Resource details
- Usage
   - User - User id/password
   - CLI/SDK - Access key/secret
   - Automate - IAM roles (May be from another service)
- Security tools
  - Credentials report (Account level)
  - Access advisor (user level) - Helps with least privilege



### Others

<b>AWS Congnito</b>
  - End user access
  - 2 types
    - User pool
    - Identity  Pool - Provide temporary AWS credentials

<b>AWS Organizations</b>
   - Automate account creation and management
   - Create groups of accounts based on business needs
   - Govern access to AWS services resources region by policies
   - Setup single payment method for all AWS accounts with consolidated billing
   - Share resources across accounts

<b>AWS SSO</b>
  - Can be used for single-signon for users across applications in AWS and On-prem

<b>AWS Cloud directory/AWS Directory service</b>
 - Can integrate with an existing MS active directory
 - AD Connector can establish a trusted relationship between your corporate Active Directory and AWS

###IAM

#### Group
  - Combination of policies
  - Can be assigned to a user

#### User
3 ways to assign permissions to users
1. Add user to group
2. Copy permissions from another user
3. Attach existing policies directly

#### Policy
  - User can create a policy to group required permissions

### Audit
---

#### CloudTrail
- Used to monitor the usage of services, security configuration etc
- Can setup rules to monitor and alert
- Can be triggered on change or scheduled

#### Inspector  
 - automated security assessment service
 - Assesses applications for exposure, vulnerabilities and deviations from best practices
 - Have 3 components
   - Network configuration reachability piece
   - Agent
   - Security assessment service

#### AWS Config
 - Monitors resource configuration against desired state

#### Trusted Advisor
 - Assists you in provisioning your AWS resources using best practices
 - Produces reports under 5 categories

#### Guard Duty
 - Threat detection tool
 - Uses ML
 - Categorizes to 3 levels
    - Low
    - Medium
    - High
 -  
#### Security Hub
 - Amazon GuardDuty
 - Amazon Inspector
 - Amazon Macie
 - Amazon partner solutions

### AWS Shield
- Provides DDoS protection
- 2 components
  - Shield Standard (Free for all)
  - Shield advances (Paid)

### Web Application Firewall (WAF)
- Layer 7
- Protects web applications
- Deploy on Application Load Balancer, API Gateway and CloudFront
- Define WebACL
- Protects from SQL Injection and XSS 
- Rate based rules for DDoS protection

## Encryption services

### AWS Key Management Service(KMS)
- AWS manages encryption keys for us

### CloudHSM
- AWS provisions encryption hardware
- encryption keys to be managed by users
- Types of Customer Master Keys
  - Customer managed CMK
  - AWS managed CMK
  - AWS owned CMK
  - CloudHSM Keys

## Certificate Management

### AWS Certificate Manager (ACM)
- Manage SSL/TLS Certificates
- Automatic TLS renewal

## Secrets Management

### AWS Secrets Manager
- Store secrets
- Secrets encrypted using KMS
- Rotation can be automated using Lambda

### AWS Artifact (Not a service)
- Portal that provides customers with on-demand access to AWS compliance documentation and agreements

### Amazon GuardDuty
- ML based threat detection
- Can protect against CryptoCurrency attacks

### Amazon Inspector
- Automated security assessments
- Only for EC2 and container Infra
- Provides report with risk score

### AWS Config
- Audit and compliance of AWS resources
- Predefined rules available

### Macie
- Data security & Data privacy service
- Uses ML and pattern matching to discover and protect sensitive data

### Security Hub
- Central security tools
- Integrated dashboard

### Amazon detective
- Identify root cause of security issues

### AWS abuse
- Report suspected resources