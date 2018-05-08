# Autoscaling Group with Application Load Balancer

* VPC with internet gateway
* spans 3 availability zones
* public subnet in each AZ
* AG launches instance in each AZ
* each instance launches Nginx docker image with index.html and health check page
