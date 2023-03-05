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
