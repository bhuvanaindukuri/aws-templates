### INtro
- Managed NFS (network file system) that can be mounted on many EC2 instances
- Per region so can be mounted in Multi-AZs
- Uses security groups to control access
- Only compatible to Amazon Linux and not Windows
- Encryption at rest using KMS
- Scales automatically and no capacity planning

#### Storage classes
- Performance Mode
  - General Purpose
  - Max I/O
- Throughput Mode
  - Bursting - IO mapped to storage
  - Provisioned - Throughput regardless of storage size
  - Elastic - Automatically scales throughput up or down based on workloads
  
#### Storage Tiers
- STandard
- Infrequent Access(IA)
- One Zone
- One Zone IA
