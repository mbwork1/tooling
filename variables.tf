variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0b8c6b923777519db"
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
  default     = "t3.large"
}


variable "key_name" {
  description = "The key name for the instances"
  type        = string
  default     = "oregon1web"
}

###########################
#Sonaqube instance
##########################
variable "security_group_id" {
  type    = string
  default = "sg-0acac897a37874205"
}

variable "subnet_id" {
  type    = string
  default = "subnet-040de6219e9432362"
}

# variable "security_group_id" {
#   description = "The security group ID to attach to the instance"
#   type        = string

# }
##################
#sonarqube db 
###################
# variable "subnet_id" {
#   description = "The subnet ID where the instance will be deployed"
#   type        = string
#   default     = "subnet-088fc8010dadc4d2a"
# }

# variable "db_name" {
#   description = "The name of the PostgreSQL database"
#   type        = string
#   default     = "sonarqube"
# }

# variable "db_username" {
#   description = "The username for the PostgreSQL database"
#   type        = string
#   default     = "sonar"
# }

# variable "db_password" {
#   description = "The password for the PostgreSQL database"
#   type        = string
#   sensitive   = true
#   default     = "Team@123"
# }

# variable "db_security_group_id" {
#   description = "The security group ID for the PostgreSQL database"
#   type        = list(string)
#   default     = ["sg-0c1cfb0a8d4d80c6d"]
# }

# variable "db_subnet_group" {
#   description = "The subnet group for the PostgreSQL database"
#   type        = string
#   default     = "default-vpc-08dcf780b5e752f2c"
# }

variable "s3_bucket" {
  description = "The name of the S3 bucket for storing Terraform state"
  type        = string
  default     = "west-eks-tfstate"
}

variable "dynamodb_table" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "terraform-state-lock-table"
}

variable "main-region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}
