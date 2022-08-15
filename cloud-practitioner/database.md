### Amazon RDS
- Managed relational DB
- Supports PostGre, MySQL, MariaDB, Oracle, MS SQL Server and Aurora

### Aurora
- Proprietary technology from AWS
- Supports PostGre and MySQL
- AWS cloud optimized and highly performant
- Costlier

#### RDS Deployment options
- Read Replicas
- Multi-AZ
- Multi Region (Read Replica)

### Dynamo DB
- Fully Managed highly available with replication across 3 AZ
- No SQL
- Distributed serverless database (Can create tables without DB)
- Scales to millions of requests and trillions of rows
- Schema can be defined per key
- No links possible between tables
- DymanoDB Accelerator(DAX) 
  - Fully managed in-memory cache only for Dynamo DB

#### DynamoDB Global tables
- DymanoDB table accessible with low latency in multiple regions
- 2 way replication (Active-Active)

### Redshift
- Based on PostGreSQL
- OLAP
- load data every hour
- Columnar storage
- Massively parallel query execution (MPP)
- Integration with AWS Quicksight or Tableau

### Amazon EMR (Elastic Map Reduce)
- Clusters can be made of hundreds of EC2 instances
- Supports Spark, HBase, Presto, Flink etc 

### Amazon Athena
- Serverless query service to perform analytics against S3 objects
- Uses standard SQL language
- Supports CSV, JSON, ORC, Avro and Parquet
- Built on Presto

### Amazon QuickSight
- Serverless BI

### Amazon DocumentDB
- Aurora version for MongoDB
- NoSQL

### Amazon ElasticCache
- Managed caching service
- Supports Redis or Memcached
- Can be used for any database

### Amazon Neptune
- Fully managed Graph database
- Highly available with 3 AZ

### Amazon QLDB
- Quantum Ledger Database
- Immutable system
- Fully managed serverless
- Centralized data storage opposed to a blockchain

### Amazon Managed blockchain
- Decentralized blockchain
- Managed service
  - join public blockchain networks
  - Create your own scalable private network
- Compatible with Hyperledger Fabric & Ethereum

### Amazon DMS (Data Migration Service)
- Can run on EC2
- Source available during migration
- Supports
  - Homogeneous migration
  - Heterogeneous migration

### AWS Glue
- Fully serverless
- ETL service
- Glue Data catalog (Catalog of datasets)