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

#### Notes
- Ephimeral ports are temporary ports on the client side to be able to receive the response

