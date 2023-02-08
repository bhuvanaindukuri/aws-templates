###Intro
- Managed SQL databases
- Supported DB
  - Postgres
  - MySQL
  - MariaDB
  - Oracle
  - Microsoft SQL Server
  - Aurora (AWS Proprietary database)


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
