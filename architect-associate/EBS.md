### Elastic Block Storage(EBS)
 - It’s a network drive (i.e. not a physical drive)
   - Uses the network to communicate the instance, which means there might be a bit of latency
   - It can be detached from an EC2 instance and attached to another one quickly
- Locked to an Availability Zone (AZ)
- To move a volume across, you first need to snapshot it
- Have a provisioned capacity (size in GBs, and IOPS)
- Billed for all the provisioned capacity
- You can increase the capacity of the drive over time
- Can be attached to only one instance at a time which means it cant be used for sharing data (Except for EBS Multi-attach)


#### Additional features
- EBS SNapshot
  - Used to backup data and to copy data from one AZ to another AZ or Region
- EBS Snapshot archieve
  - Can help to save cost up to 75%
  - Takes 24-72 hours for retrieval
-  Recycle bin for snapshots
  - Helps in restoring in case of accidental deletion
-  Fast Snapshot Restore (FSR)
  - No latency on first use
  - Costly    
- EBS Multi-attach
  - Supported only for IO1/IO2 volume types
  - Max 16 instances
  - Within same AZ
- EBS Encryption
  - When encryption is enabled, both Data at Rest and transit is encrypted
  - Minimal latency
  - Uses keys from KMS  

#### Volume Types
- GP2/ GP3 
  - General purpose SSD volume  
  - Balances price and performance 
- IO1/IO2
  - Highest-performance SSD volume for mission-critical 
  - low-latency or high-throughput workloads
- st 1
  - Low cost HDD volume
  -  designed for frequently accessed, throughput- intensive workloads
  -  Cannot be root volume
- sc 1
  - Lowest cost HDD volume
  - designed for less frequently accessed workload
  - Cannot be root volume
