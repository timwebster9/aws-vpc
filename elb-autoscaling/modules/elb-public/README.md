# Autoscaling Group with Application Load Balancer

* VPC with internet gateway
* spans 3 availability zones
* public subnet in each AZ
* ASG launches instance in each AZ
* each instance launches Nginx docker image with index.html and health check page: https://hub.docker.com/r/timwebster9/nginx-aws/
* ASG has ELB health check type
* Target Tracking Autoscaling policy for ALB
