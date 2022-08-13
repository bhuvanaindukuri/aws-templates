### EC2

- Sessions manager can be used to trace the activities done in a session ( User connection to EC2 instance)
- AMI
- Auto-Scaling group
- IAM Role
- EC2 user data scripts can be used for bootstrapping
- To access any AWS service from EC2 instance use only IAM roles and never use AWS configure command

#### Types fo EC2 instances - Based on resources\
Each type has different classes
- General purpose instances
- Compute optimized
  - Good for batch processing 
- Memory optimized
  - Good for high performance databases
- Accelerated computing
- Storage optimized instances
- Instance features
- Measuring instance performance

#### Types fo EC2 instances
- On-Demand
- Reserved instances
  - Reserved for 1 or 3 years
  - 3 payment options - 1) No upfront 2) Partially upfront 3) All upfront
  - Convertible reserved instances can change EC2 instance type, family, OS, scope and tenancy
- Spot Instances
- EC2 Savings plan - Committed to an amount of usage, long workload
- Dedicated host
  - Apt for licensed tools
  - Dedicated physical server
- Dedicated Instances
- Capacity reservation
  - Similar to On-demand but capacity is reserved
  - Charged even if not used

#### Scaling EC2 instances
- Dynamic scaling
- Predictive scaling

#### EC2 Image builder
- Used to automate creation of VMs or container images
- Builds the instance, creates AMI , terminate instance, build instance from AMI, tests it and distributes
- EBS Snapshot and AMI gets created in the process 

#### EC2 Instance store
- Ephemeral storage or physical hard drive for EC2
- High performant
- Data loss on termination




