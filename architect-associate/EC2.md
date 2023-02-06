om
IAAS

#### OS Supported
- Windows
- Linux
- Mac OS

#### Notes

- EC2 User Data - Scripts to be executed when the machine starts
- Naming convention - <instance type><generation>.<resource size> Ex: t2.micro
- To connect to EC2
  - Use Putty in case of Windows
  - SSH for Linux or MacOS or Windows > 10
  - EC2 Instance store in any case(Any OS)
#### Types fo EC2 instances - Based on resources

Each type has different classes
- General purpose instances
  - Balance between compute, memory and networking
  - Starts with t, m and A
- Compute optimized
  - Good for batch processing, Media transcoding, ML etc
  - Start with C
- Memory optimized
  - Good for high performance databases
  - STarts with R(Stands for RAM),X
- Accelerated computing
- Storage optimized instances
  -  storage-intensive tasks that require high, sequential read and write access to large data sets on local storage
- Instance features
- Measuring instance performance

#### Security Group
- Acts as a Firewall
- Regulates access to ports and authorized IP ranges
- Controls access at resource level within the subnet
- Check only entrance and not exit  
- Stateful
- Inbound - Doesnt allow any traffic by default
- Outbound - Allows all traffic by default
- Locked to a region/ VPC combination
- Timeout while connecting to resource is mostly a SG related issue
- Can sutorize IPs or other security groups

#### EC2 Purchasing options
- On-Demand
- Reserved instances
  - Reserved for 1 or 3 years
  - 3 payment options - 1) No upfront 2) Partially upfront 3) All upfront
  - Convertible reserved instances can change EC2 instance type, family, OS, scope and tenancy. Discount up to 66%.
  - Up to 72% discount
- Spot Instances
  - Up to 90% discount
  - Strategies
    - Define max spot price and continue as long as current price < max spot price
    - Spot block for a timeframe (1-6 hours) - Deprecated feature
    - Spot Fleet = set of spot instances + (optional) On-Demand Instances
    - Spot fleet strategies
       - Lowest Price
       - Diversified
       - Capacity optimized
- EC2 Savings plan 
  - Committed to an amount of usage, long workload
  - Locked to a specific instance type & Region
- Dedicated host
  - Apt for licensed tools
  - Dedicated physical server
- Dedicated Instances
  - May share hardware with other instances in same account
  - Can access underlying server/hardware
- Capacity reservation
  - Similar to On-demand but capacity is reserved
  - Charged even if not used
  - No billing discount

  
