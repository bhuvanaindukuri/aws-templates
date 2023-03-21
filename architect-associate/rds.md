### Intro
- Managed SQL databases
- Supported DB
  - Postgres
  - MySQL
  - MariaDB
  - Oracle
  - Microsoft SQL Server
  - Aurora (AWS Proprietary database)

#### Hands-on
- Create RDS DB from console: https://app.pluralsight.com/labs/detail/5750de25-3c00-495f-a030-c4347c534419
- Created RDS from Snapshot: https://app.pluralsight.com/labs/detail/2f8cbc84-bbac-40fa-9574-23c37195ac19

#### Features
- Automated provisioning, OS patching
- Continuous backups and restore to specific timestamp (Point in Time Restore)!
- Monitoring dashboards
- Read replicas for improved read performance
- Multi AZ setup for DR (Disaster Recovery)
- Maintenance windows for upgrades
- Scaling capability (vertical and horizontal)
- Storage backed by EBS (gp2 or io1)

#### RDS - Storage Auto scaling
- Storage scaled automatically when the maximum & minimum threshold is reached
- Can set a Maximum storage threshold beyond which scaling doesnt happen
- Supports all database types

#### Read Replicas
- Max 5 replicas
- 3 options for Read replicas
  - Within AZ
  - Cross AZ - Not charged since it is manages service
  - Cross Region - Additional charge for data transfer
- Async replication so eventual consistency
- Applications must explicitly use the connection string of read replicas
- Read replicas can be promoted to seperate DBs

#### RDS Multi-AZ
- Sync replication
- Automatic app failover and one DNS name
- Zero downtime to enable Multi-AZ
- Meant for DR/ High availability

#### RDS Proxy
- Acts as a connection pool
- Reduced RDS & Aurora failover time by up 66%
- Enforce IAM Authentication for DB, and securely store credentials in AWS Secrets Manager
- RDS Proxy is never publicly accessible (must be accessed from VPC)
- Supports RDS(POstGre, MySql, MariaDB) and Aurora

#### RDS Deployment options
- Multi-AZ DB Cluster
  - One primary
  - 2 readable standby replicas in different AZ 
- Multi-AZ DB Instance
  - One primary
  - One Standaby in different AZ
- Single DB Instance
  - Only primary

#### RDS Custom
- Supports only Oracle & MS SQL Servers
- Full admin access to OS & Databases
- Can connect to EC2 Instances
- Need to deactivate automation mode

#### Aurora
- proprietary technology from AWS (not open sourced)
- Postgres and MySQL are both supported as Aurora DB (that means your drivers will work as if Aurora was a Postgres or MySQL database)
- “AWS cloud optimized” and claims 5x performance improvement over MySQL on RDS, over 3x the performance of Postgres on RDS
- storage automatically grows in increments of 10GB, up to 128 TB
- Can have 15 replicas 
- Instantaneous Failover
- 20% more costlier than RDS
- Backtrack: restore data at any point of time without using backups

#### Aurora High availability & Scaling
- 6 copies of data across 3 AZs
- 1 instance for writes + upto 15 read replicas
- Support for cross region replication
- Auto scaling can be done on read replicas
- Writer endpoint & Reader endpoint act as DNS for accessing master & read replicas respectively

#### Aurora Features
- Custom endpoints - Can be defined for specific purposes by including the instances of choice Ex: Analytics
- Serverless - No need to provision capacity
- Database cloning
- Multi-Master 
  - All instances can do writes
  - Immediate failover for write
- Global Aurora 
  - Cross Region Read replicas
    - Useful for disaster recovery
    - Simple to put in place
  - Global database(Recommended) 
    - 1 Primary Region (read / write) 
    - Up to 5 secondary (read-only) regions, replication lag is less than 1 second
    - Up to 16 Read Replicas per secondary region
    - Helps for decreasing latency
    - Promoting another region (for disaster recovery) has an RTO of < 1 minute
    - Typical cross-region replication takes less than 1 second
- Machine-learning
  - Enables you to add ML-based predictions to your applications via SQL
  - Supports
    - Amazon SageMaker - ML Models
    - Amazon Comprehend -Sentiment Analysis   
