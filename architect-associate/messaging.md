### Simple Queue Service(SQS)

#### Intro
- Unlimited throughput and unlimited messages in the queue
- Retention of messages - 4-14 days
- LOw latency <10ms
- Limitation of 256KB per message sent
- Can have duplicate messages
- Can be out of order
- Message persisted until consumer deletes it
- Consumer can receive upto 10 messages at a time
- Can ne used as a buffer for database writes

#### SQS Security
- Encryption:
  - In-flight encryption using HTTPS API
  - At-rest encryption using KMS keys
  - Client-side encryption if the client wants to perform encryption/decryption itself 
- Access Controls: IAM policies to regulate access to the SQS API
- SQS Access Policies (similar to S3 bucket policies)
  - Useful for cross-account access to SQS queues
  - Useful for allowing other services (SNS, S3…) to write to an SQS queue

#### Hands-on lab
- Create and Use an Amazon SQS Queue https://app.pluralsight.com/labs/detail/ab046f27-7361-49b1-950e-b9e5defcabac/toc \

#### Message Visiblity Timeout
- Acts as a lock for the message to avoid duplicate processing
- Polled message not visible for other consumers during the time
- Default 30 s . Can be changed using the API or from console

#### Long polling
- Default polling time is 20 sec ( Possible: 1- 20 sec)
- Longer time reduces number of calls to SQS
- Can be set at queue level or API level

#### FIFO queue
- Maintains order
- name has to end with .fifo
- 

### Simple Notification Service (SNS)
- Publish Subscribe model
- Fanout pattern can be achieved by integrating SNS with SQS
- Cross-Region delivery - Publish to queue in other regions
- SNS FIFO can only have SQS FIFO queues as subscribers
- 2 Types - Standard, FIFO

#### Hands-on lab
- Configure an Amazon SNS Topic Using the AWS Management Console - https://app.pluralsight.com/labs/detail/a34f7c5b-4b06-4ffc-8f16-f187e4a65549/toc

#### SNS Security
- Encryption:
  - In-flight encryption using HTTPS API
  - At-rest encryption using KMS keys
  - Client-side encryption if the client wants to perform encryption/decryption itself 
- Access Controls: IAM policies to regulate access to the SNS API
- SNS Access Policies (similar to S3 bucket policies)
  - Useful for cross-account access to SNS topics
  - Useful for allowing other services (S3…) to write to an SNS topics

#### Message Filtering
- JSON based filter policy can be applied at subscriber level
