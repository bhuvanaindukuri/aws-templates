### Simple Queuing Service(SQS)

#### Intro
- Unlimited throughput and unlimited messages in the queue
- Retention of messages - 4-14 days
- LOw latency <10ms
- Limitation of 256KB per message sent
- Can have duplicate messages
- Can be out of order
- Message persisted until consumer deletes it
- Consumer can receive upto 10 messages at a time

#### SQS Security
- Encryption:
  - In-flight encryption using HTTPS API
  - At-rest encryption using KMS keys
  - Client-side encryption if the client wants to perform encryption/decryption itself 
- Access Controls: IAM policies to regulate access to the SQS API
- SQS Access Policies (similar to S3 bucket policies)
  - Useful for cross-account access to SQS queues
  - Useful for allowing other services (SNS, S3…) to write to an SQS queue
