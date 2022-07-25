### Shared responsibility model

- AWS responsibility “Security of the Cloud”\
  This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services.
- Customer responsibility “Security in the Cloud”
  - Customers are responsible for managing their data (including encryption options), classifying their assets, and using IAM tools to apply the appropriate permissions.
  - Applications
  - User data

Least privilege access
- MFA should be enabled for root user

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
  - To allow external traffic a gateway can be used
  - To allow only specific traffic a Virtual private gateway can be used

Subnet
  - Grouping within the VPC
  - Created for providing access to the gateway
  - Each subnet has a Network Acess Control List(ACL) to check the allowed 
  - Network ACL checks control at the entrance and exit
  - Network ACL is stateless
  - Network ACL allows all inbound and outbound traffic by default
 
Security Group
 - Controls access at resource level within the subnet
 - Check only entrance and not exit
 - Stateful
 - Doesnt allow any traffic by default
 - Acts as a Firewaal
 
Stateless | Stateful
  
AWS Direct Connect
  - Dedicated direct connection between datacenter and VPC
  - Low latency and high throughput and security  
  - Doesnt travel over the public internet



<b>AWS IAM</b>

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
