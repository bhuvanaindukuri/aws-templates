### CloudFront
- Content Delivery Network
- 216 edge locations
- DDos protection, integration with shield, AWS Web Application FireWall
- Origin
  - S3
    - Use Origin Access control & S3 bucket policy for S3 to be made accessible only from cloudfront
  - Custom Origin (HTTP)
    - To serve from EC2, it must be public and must allow all edge location ips in the security group
    - To serve from ALB, it must be piblic and can access private EC2
- Geo Restriction
  - Can specify allow or block list
  - Can provide a list of countries
- Cost
  - Data out varies for edge locations
  - 3 price classes
    - All edge locations
    - Price class 200: Most regions but excludes most expensive regions
    - Price class 100: only the least expensive regions

#### Hands-on Lab
Configure a CloudFront Distribution for an Amazon S3 Bucket - https://app.pluralsight.com/labs/detail/ab2ba13a-8c5c-4127-b619-7d85524625a6/toc \
Serve Static Content Using Amazon S3 and CloudFront - https://app.pluralsight.com/labs/detail/d9f69d69-1869-47d0-979f-937420a8d06f/toc \
Create a CloudFront Distribution with an ALB Origin on AWS - https://app.pluralsight.com/labs/detail/c6410233-4de8-4480-908c-4458aa0c897e \

#### Global Accelerator
- Uses Anycast IP
- Traffic goes to the nearest edge location and uses AWS network from edge location to the resource(ALB)
- 2 Anycast IPs created for each global accelerator
- Can add endpoints with resources
- If there are multiple endpoints Traffic goes to the one nearest
- Works with Elastic IP, EC2 instances, ALB, NLB, public or private
- Consistent Performance
  - Intelligent routing to lowest latency and fast regional failover
  - No issue with client cache (because the IP doesn’t change)
  - Internal AWS network
- Health Checks
  - Global Accelerator performs a health check of your applications
  - Helps make your application global (failover less than 1 minute for unhealthy)
  - Great for disaster recovery (thanks to the health checks)
- Security
  - only 2 external IP need to be whitelisted 
  - DDoS protection thanks to AWS Shield
- Usecases
  - Global Accelerator 
  - Improves performance for a wide range of applications over TCP or UDP 
  - Proxying packets at the edge to applications running in one or more AWS Regions.
  - Good fit for non-HTTP use cases, such as gaming (UDP), IoT (MQTT), or Voice over IP
  - Good for HTTP use cases that require static IP addresses 
  - Good for HTTP use cases that required deterministic, fast regional failover
- Pricing
  - Fixed price per accelerator + Data tranfer cost based on the region
#### Unicast IP vs AnyCast IP
- Unicast
  - one server holds one ip address
- Anycast
  - All servers have same IP
  - Client routed to nearest one
