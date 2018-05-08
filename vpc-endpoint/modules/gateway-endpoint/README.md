# Gateway VPC Endpoint

Creates a VPC with the following:

* public subnet with IG and one instance
* private subnet with one instance (no internet access)
* S3 bucket
* VPC endpoint for S3 access associated with private subnet route table

You can reach the S3 bucket from the private instance with curl but will not have permissions.  Access roles/credentials, etc. out of scope.
