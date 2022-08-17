###Regions

#### Reasons for choosing a region
- Compliance with data governance and legal requirements
- Proximity to your customers
- Available services within a Region
- Pricing

### Edge locations

An edge location is a site that Amazon CloudFront uses to store cached copies of your content closer to your customers for faster delivery.

### AWS Global Accelerator
- Helps speed application performance
- First connects to edge locations and then to regions from there
- Avoids bandwidth issues and too many hops
- Helps with DDoS protection

### AWS Outposts
- Server racks that offer same AWS Infra on-prem
- Physical security is customer responsibility
- Run some AWS services

### AWS Wavelength
- 5G
- Bring AWS services to the edge of 5G network
- No additional charges

### AWS Local zones
- Zones that can be used to reduce latency
- Can create subnets in local zones and use them in services
- Not all regions have local zones