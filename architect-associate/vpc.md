#### Classless Inter-Domain Routing(CIDR)
- Help define IP Ranges
- Consists of 2 components
  - Base IP
  - Subnet Mask 
    - Y = (32-X) No of IPs = 2^Y

#### Private IPs
- Allowed ranges
  - 10.0.0.0 - 10.255.255.255 (10.0.0.0/8)
  - 172.16.0.0 - 172.31.255.255 (172.16.0.0/12) - Default AWS
  - 192.168.0.0 - 192.168.255.255 (192.168.0.0/16)

#### Subnet
- One subnet per AZ by default in default VPC
- Each has
  - CIDR
  - Route table
  - Network ACL
- AWS reserves 5 IP addresses in each subnet (First 4 and last 1)
- IPs cant overlap with other subnets in VPC

#### Route Table
- Can be assigned to multiple subnets

#### VPC
- Max 5 VPCs per region (Soft limit)
- Max 5 CIDRs per VPC
  - Min size /28
  - Max size /16
- Should be only private IPs
- Has 
  - CIDR blocks 

#### Internet Gateway
- Allows resources in a VPC connect to internet
- Seperate from VPC
- One VPC - One Gateway
- Route tables to be edited

#### Route Tables
- Should map the Public IP range to internet gateway for public access to work

#### Bastion Host
- EC2 instance in public subnet
- Allows ssh to EC2 instances in private subnet
- Allows internet access

#### NAT Instance (Outdated but part of exam)
- EC2 instance which helps in providing internet access to EC2 instance in private subnet
- Must be in public subnet
- Must attach Elastic IP
- Route tables should be configured to route traffic from EC2 instances to NAT Instance
- Modifies Source and destination IP 
  - Hides IP of the original instance
  - Sets the external IP as source in the response

#### NAT Gateway
- Helps in providing internet access to EC2 instance in private subnet
- Must be in public subnet
- Must attach Elastic IP
- Internet Gateway is mandatory
- Highly available and can failover to another instance in case of AZ failure
- AWS Managed

#### Security Group & NACL
- NACL 
  - at subnet level
  - stateless which means both Inbound & Outbound rules are always checked
  - Can define both allow & deny rules
  - Rules ordered by priority and the first match wins
  - Allows all inbound & outbound by default
- SG is 
  - within subnet
  - stateful which means only one way is checked(Whichever is first)
  - Only Allow rules
  - All rules checked to decide

#### VPC Peering
- Privately connect two VPCs using AWS’ network
- Make them behave as if they were in the same network
- Must not have overlapping CIDRs 
- VPC Peering connection is NOT transitive (must be established for each VPC that need to communicate with one another)
- You must update route tables in each VPC’s subnets to ensure EC2 instances can communicate with each other
- The CIDR of the other VPC should be routed to the peering connection
- VPCs can be in different regions and different accounts

#### VPC Endpoints
- Helps in accessing AWS services through AWS private network instead of internet
- Remove the need for NATGW Gateway + Internet Gateway
- Removes the need for full internet access from the EC2 instances
- Types
  - Internet endpoints
    - Provisions an ENI as an entry point
    - Supports most AWS services
    - Billing per hour + Per GB data
  - Gateway endpoints 
    - Provisions a gateway and must be used as a target in a route table (does not use security groups)
    - Supports both S3 and DynamoDB
    - Free

#### VPC Flow logs
- Capture information about IP traffic going into your interfaces:
  - VPC Flow Logs
  - Subnet Flow Logs
  - Elastic Network Interface (ENI) Flow Logs
- Helps to monitor & troubleshoot connectivity issues
- Flow logs data can go to S3 / CloudWatch Logs
- Captures network information from AWS managed interfaces too: ELB, RDS, ElastiCache, Redshift, WorkSpaces, NATGW, Transit Gateway

#### Site-to-Site VPN
- Allows to connect AWS with the private network/datacenter over the internet
- Requires 2 components on either side of the connection
  - Virtual Private Gateway (VGW)
     - VPN concentrator on the AWS side of the VPN connection
     - VGW is created and attached to the VPC from which you want to create the Site-to-Site VPN connection
     - Possibility to customize the ASN (Autonomous System Number)
  - Customer Gateway (CGW)
     - Software application or physical device on customer side of the VPN connection
     - https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html#DevicesTested
- Important step: enable Route Propagation for the Virtual Private Gateway in the route table that is associated with your subnets
- If you need to ping your EC2 instances from on-premises, make sure you add the ICMP protocol on the inbound of your security groups
- VPN CloudHub can be used if multiple private networks need to be connected
- To set it up, connect multiple VPN connections on the same VGW, setup dynamic routing and configure route tables

#### Direct Connect
- Provides a dedciated private connection from a remote network
- Dedicated connection must be setup between your DC and AWS Direct Connect locations
- You need to setup a Virtual Private Gateway on your VPC
- Access public resources (S3) and private (EC2) on same connection
- If you want to setup a Direct Connect to one or more VPC in many different regions (same account), you must use a Direct Connect Gateway
- Lead times are often longer than 1 month to establish a new connection
- Types
  - Dedicated Connections: 1Gbps,10 Gbps and 100 Gbps capacity
    - Physical ethernet port dedicated to a customer
    - Request made to AWS first, then completed by AWS Direct Connect Partners
    - Hosted Connections: 50Mbps, 500 Mbps, to 10 Gbps
  - Connection requests are made via AWS Direct Connect Partners
    - Capacity can be added or removed on demand 
    - 1, 2, 5, 10 Gbps available at select AWS Direct Connect Partners
- Data in transit is not encrypted but is private
- AWS Direct Connect + VPN provides an IPsec-encrypted private connection
- Good for an extra level of security, but slightly more complex to put in place
- Resiliency
  - One connection at multiple locations - High Resiliency
  - Maximum resilience is achieved by separate connections terminating on separate devices in more than one location. - Maximum resiliency
- Site-to-Site VPN can be used as a backup for Direct connect

#### Notes
- Ephimeral ports are temporary ports on the client side to be able to receive the response

