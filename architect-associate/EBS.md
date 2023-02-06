### Elastic Block Storage(EBS)
 - It’s a network drive (i.e. not a physical drive)
   - Uses the network to communicate the instance, which means there might be a bit of latency
   - It can be detached from an EC2 instance and attached to another one quickly
- Locked to an Availability Zone (AZ)
- To move a volume across, you first need to snapshot it
- Have a provisioned capacity (size in GBs, and IOPS)
- Billed for all the provisioned capacity
- You can increase the capacity of the drive over time
- Can be assigned to only one instance at a time which means it cant be used for sharing data

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
