#### Athena
- Serverless query service based on Presto
- Read data from S3
- Supports CSV, JSON, ORC, Avro, and Parquet
- Pricing based on data scanned
- Columnar data formats reduce data scanned ( Cost saving)
- Compress data for smaller retreivals
- Partition datasets
- Federated Query
  - Allows to run SQL queries across data stored in relational, non-relational, object, and custom data sources (AWS or on-premises)
  - Uses Data Source Connectors that run on AWS Lambda to run Federated Queries (e.g., CloudWatch Logs, DynamoDB, RDS, …)
  - Store the results back in Amazon S3

#### RedShift
- based on PostgreSQL
- OLAP and not for OLTP
- 10x better performance than other data warehouses, scale to PBs of data
- Columnar storage of data (instead of row based) & parallel query engine
- BI tools such as Amazon Quicksight or Tableau integrate with it
- vs Athena: faster queries / joins / aggregations thanks to indexes
- Redshift has “Multi-AZ” mode for some clusters
- Snapshots & DR
  - Incremental snapshots
  - Can be automated or Manual
  - Can be configured to copy snapshots to another region
- Data loading
  - Large inserts preferred
  - Options
    - Amazon Kinesis Data Firehose
    - S3 using COPY command
    - EC2 Instance JDBC driver
- Redshift Spectrum
  - Query data that is already in S3 without loading it
  - Must have a Redshift cluster available to start the query
  - The query is then submitted to thousands of Redshift Spectrum nodes

#### Amazon OpenSearch Service
- Renamed from ElasticSearch Service
- Search any field, even partially matches
- Not serverless and requires cluster
- Does not support SQL (it has its own query language)
- Ingestion from Kinesis Data Firehose, AWS IoT, and CloudWatch Logs, Lambda?
- Security through Cognito & IAM, KMS encryption, TLS
- Comes with OpenSearch Dashboards (visualization)

#### Amazon EMR
- EMR helps creating Hadoop clusters (Big Data) to analyze and process vast amount of data
- The clusters can be made of hundreds of EC2 instances
- EMR comes bundled with Apache Spark, HBase, Presto, Flink…
- EMR takes care of all the provisioning and configuration
- Auto-scaling and integrated with Spot instances
- Node Types
  - Master Node
  - Core Node
  - Task Node (optional)

#### QuickSight
- Serverless machine learning-powered business intelligence service to create interactive dashboards
- In-memory computation using SPICE engine if data is imported into QuickSight
- Enterprise edition: Possibility to setup Column-Level security (CLS)
- Users & Groups(Only in enterprise version) exclusive to QuickSight and not in IAM

#### Glue
- Serverless ETL
- Glue Data Catalog: catalog of datasets
- Glue Job Bookmarks: prevent re-processing old data
- Glue Elastic Views: 
  - Combine and replicate data across multiple data stores using SQL
  - No custom code, Glue monitors for changes in the source data, serverless
  - Leverages a “virtual table” (materialized view)
- Glue DataBrew: clean and normalize data using pre-built transformation
- Glue Studio: new GUI to create, run and monitor ETL jobs in Glue
- Glue Streaming ETL (built on Apache Spark Structured Streaming): compatible with Kinesis Data Streaming, Kafka, MSK (managed Kafka)

#### AWS Lake Formation
- Fully managed service that makes it easy to setup a data lake in days
- Discover, cleanse, transform, and ingest data into your Data Lake
- Automates many complex manual steps (collecting, cleansing, moving, cataloging data, …) and de-duplicate (using ML Transforms)
- Combine structured and unstructured data in the data lake
- Out-of-the-box source blueprints: S3, RDS, Relational & NoSQL DB…
- Fine-grained Access Control for your applications (row and column-level)
- Built on top of AWS Glue
- Main usecase is centralized access control

#### Kinesis Data Analytics for SQL applications
- Kinesis Data Analytics (SQL application)
  - Real-time analytics on Kinesis Data Streams & Firehose using SQL
  - Add reference data from Amazon S3 to enrich streaming data
  - Fully managed, no servers to provision
  - Automatic scaling
  - Pay for actual consumption rate
  - Output:
    - Kinesis Data Streams: create streams out of the real-time analytics queries
    - Kinesis Data Firehose: send analytics query results to destinations
  - Use cases:
    - Time-series analytics
    - Real-time dashboards
    - Real-time metrics
- Kinesis Data Analytics for Apache Flink
  - Use Flink (Java, Scala or SQL) to process and analyze streaming data
  - Run any Apache Flink application on a managed cluster on AWS
    - provisioning compute resources, parallel computation, automatic scaling
    - application backups (implemented as checkpoints and snapshots)
    - Use any Apache Flink programming features
    - Flink does not read from Firehose (use Kinesis Analytics for SQL instead)
    - Can only read from Kinesis Data Streams and Amazon MSK


- Amazon Managed Streaming for Apache Kafka (Amazon MSK)
  - Alternative to Amazon Kinesis
  - Fully managed Apache Kafka on AWS
  - Allow you to create, update, delete clusters 
  - MSK creates & manages Kafka brokers nodes & Zookeeper nodes for you
  - Deploy the MSK cluster in your VPC, multi-AZ (up to 3 for HA)
  - Automatic recovery from common Apache Kafka failures
  - Data is stored on EBS volumes for as long as you want
  - MSK Serverless
  - Run Apache Kafka on MSK without managing the capacity
  - MSK automatically provisions resources and scales compute & storage
