#### List Ec2 instances in table format
aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId, PrivateIpAddress, State.Name, Tags[?Key==`Name`].Value[] | [0]]' --output table

#### Change permissions of SSH key
sudo chmod 600 /home/ec2-user/.ssh/id_rsa_ec2

#### Connect to EC2 instance using ssh
sudo ssh ec2-user@10.0.21.207 -i /home/ec2-user/.ssh/id_rsa_ec2 \

aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId, PrivateIpAddress, State.Name, Tags[?Key==`Name`].Value[] | [0]]' --output table

-------------------------------------------------------------------- \
|                         DescribeInstances                        | \
+----------------------+---------------+----------+----------------+ \
|  i-05ea510ed48ea5ac3 |  10.0.20.147  |  running |  web-server-A  | \
|  i-081de018ac75972db |  10.0.100.155 |  running |  jumpbox       | \
|  i-0b621ff23831ac4e0 |  10.0.21.207  |  running |  web-server-B  | \
+----------------------+---------------+----------+----------------+ 

#### Create file named install with instructions to install and start web server. Type Ctrl-D once the instructions are pasted

cat > install

#!/bin/bash

yum -y install httpd

echo "<html><head><title>Web Server</title></head>\<h1\>Web X\</h1\>\<p\>This is the web X server.\</p\>\</html\>" > /var/www/html/index.html

chmod 644 /var/www/html/index.html

chown apache.apache /var/www/html/index.html

systemctl enable httpd.service

systemctl start httpd.service

--------

#### change permissions of the file
chmod u+x ./install
#### Run the file with the commands
sudo ./install

#### List Load balancer target groups
aws elbv2 describe-target-groups 

Sample content \
"TargetGroupArn": "arn:aws:elasticloadbalancing:us-west-2:453745077389:targetgroup/target-group/a1e4cf846a25248e",

#### Check the health of ELB
aws elbv2 describe-target-health --target-group-arn arn:aws:elasticloadbalancing:us-west-2:453745077389:targetgroup/target-group/a1e4cf846a25248e

#### Create Security group by specifying VPC id
aws ec2 create-security-group --vpc-id <VpcId> --group-name web-sg --description "Allow Web traffic" \
Ex: aws ec2 create-security-group --vpc-id vpc-0d2e275201219c375 --group-name web-sg --description "Allow Web traffic"

Sample output with group id \
"GroupId": "sg-0df0268c7e2d622b3"

#### Specify rules for incoming traffic for security group. The sample allows http traffic from all IPs
aws ec2 authorize-security-group-ingress --group-id sg-0df0268c7e2d622b3 --protocol tcp --port 80 --cidr 0.0.0.0/0

#### List security groups
aws ec2 describe-security-groups --group-id sg-0df0268c7e2d622b3 --output table

#### List security groups using custom filter
aws ec2 describe-security-groups --query 'SecurityGroups[*].[GroupId,GroupName,VpcId,Description,Tags[?Key==`Name`].Value[] | [0]]' --output table

#### Assign security groups to EC2 instances
aws ec2 modify-instance-attribute --instance-id <web-server-A> --groups <web-sg> <ssh-sg>
aws ec2 modify-instance-attribute --instance-id i-05ea510ed48ea5ac3 --groups sg-0df0268c7e2d622b3 sg-0ee9c061b993a0c80
aws ec2 modify-instance-attribute --instance-id i-0b621ff23831ac4e0 --groups sg-0df0268c7e2d622b3 sg-0ee9c061b993a0c80

#### Check the assignment of security groups to EC2 instances
aws ec2 describe-instance-attribute --instance-id i-05ea510ed48ea5ac3 --attribute groupSet
aws ec2 describe-instance-attribute --instance-id i-0b621ff23831ac4e0 --attribute groupSet

#### Health check of ELB
aws elbv2 describe-target-health --target-group-arn arn:aws:elasticloadbalancing:us-west-2:453745077389:targetgroup/target-group/a1e4cf846a25248e


------------------------------------------------------------------------------------------------------------------------------
|                                                    DescribeLoadBalancers                                                   |
+----------------------------------------------------------------------------------------------------------------------------+
||                                                       LoadBalancers                                                      ||
|+-----------------------+--------------------------------------------------------------------------------------------------+|
||  CanonicalHostedZoneId|  Z18D5FSROUN65G                                                                                  ||
||  CreatedTime          |  2022-11-04T03:11:28.677Z                                                                        ||
||  DNSName              |  lab-nlb-69a979b2fa9247d4.elb.us-west-2.amazonaws.com                                            ||
||  IpAddressType        |  ipv4                                                                                            ||
||  LoadBalancerArn      |  arn:aws:elasticloadbalancing:us-west-2:453745077389:loadbalancer/net/lab-nlb/69a979b2fa9247d4   ||
||  LoadBalancerName     |  lab-nlb                                                                                         ||
||  Scheme               |  internet-facing                                                                                 ||
||  Type                 |  network                                                                                         ||
||  VpcId                |  vpc-0d2e275201219c375                                                                           ||
|+-----------------------+--------------------------------------------------------------------------------------------------+|
