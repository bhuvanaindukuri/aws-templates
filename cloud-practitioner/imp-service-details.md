### Elastic Block storage
- Network drive so could create slight delays 
- Block storage
- Can be mounted only to one instance at a time
- Bound to a specific AZ
- Can be deleted on termination of EC2 instance
- Cannot be attached to EC2 instances ouside the AZ of the volume

#### EBS Snapshots
- EBS Snapshots can be done to take a backup of data on EBS storage
- Possible to copy data from/to snapshots across AZ
- EBS Snapshot archive can help save cost but takes time to restore
- Can setup recycle bin to avoid accidental deletions

### Elastic File System (EFS)
- Works only with Linux
- Works in multiple AZ
- Can be mounted on any number of instances
- Costly almost by 3X

#### EFS- Infrequent access (EFS - IA)
- Storage class for cost-optimized option
- Access is similar to EFS and no delays involved
- Handled by EFS internally
- Can be handled using lifecycle methods

### Amazon FSx
- Launch 3rd party high-performance file system on AWS
- Fully managed service
- 3 types
  - FSx for Lustre(Linux + Cluster)
  - FSx for Windows File Server
  - FSx for NetApp

### Route 53
- DNS Mapping
- Routing policies
 - Latency based
 - Geolocation
 - Geoproximity
 - Weighted round robin

- Sessions manager can be used to trace the activities done in a session ( User connection to EC2 instance)
- AMI
- Auto-Scaling group
- IAM Role

### Route 53

- DNS mapping
- Routing policy
  - Latency-based
  - Geolocation
  - Geoproximity
  - weighted round robin

### Elastic Load Balancer(ELB)
- SSL termination
- Health check to instances
- Single point of access
- Seemlessly handle failure of downstream instances
- High availability across zones
- 3 kinds of load balancers
  - Application load balancers (HTTP/HTTPS) L7
  - Network load balancer (TCP) L4
  - Classic load balancer L4 & L7
