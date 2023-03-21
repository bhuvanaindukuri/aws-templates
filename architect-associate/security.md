#### AWS WAF
- Level 7 protection
- Define set of rules and apply for resources
- Define ACL

#### AWS Shield
- Protection from DDoS attack
- Can be applied to any Edge based content delivery like CloudFront, Global Accelerator and Route53
- Can be applied to load balancers
- 2 modes
  - Standard (Free for all)
  - Advanced + 3K per month per organization

#### AWS Firewall Manager
- Manage rules in all accounts of organization
- Region level
- Applied to new resources added
- Common set of security rules
  - WAF Rules
  - Security groups
  - Network firewall
  - Shield advanced
  - Route 53 resolver DNS Firewall   

#### GuardDuty
- ML Based threat detection
- Uses
  - CloudTrail event logs
  - VPC Flow logs
  - DNS logs
  - EKS audit logs
- Can protect from cryptcurrency attacks

#### Inspector
- Automated security assessments (Vulnerabilities)
- Reporting & integration with AWS Security hub
- Send findings to event bridge
- Only for EC2 instances, Container images in ECR and Lambda functions
- Scanning only when needed

#### Macie
- ML and pattern matching to identify personal information


