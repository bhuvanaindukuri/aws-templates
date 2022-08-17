### CloudWatch Metrics
- Captures metrics of all services
- Alarms can be set
- Dashboards can be created
- Alarm actions can be like Auto scaling, EC2 actions or SNS Notifications

### Cloudwatch logs
- Can capture logs
- For EC2 need to run the agent

### EventBridge (Earlier called ClodWatch Events)
- Can react to events
- Can create actions based on different events or schedule cron
- Can receive events from partner services

### CloudTrail
- Audit, compliance and governance
- All calls to AWS services are tracked
- 3 types of events
  - Management events (Resource changes or reads)
  - Data events
  - CloudTrail Insights events ( Need to enable & Pay)
    - Insights into the events

### AWS X-Ray
- Log aggregation & Application request tracking in microservices kind of setup
- Distributed tracing
- Similar to Zipkin/Sleuth view

### CodeGuru
- ML-Powered service for code review and application performance recommendations
- 2 functionalities
  - CodeGuru reviewer
  - CodeGuru Profiler (Runtime behaviour)

### Service Health Dashboard
- Shows health of services

### Personal health Dashboard
- Health of relevant services and outages
