
#Create VPC

variable "region" {
    type = string
    default = "ap-south-1"
}

variable "vpc_name" {
    type = string
    default = "demo"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet_az1_cidr" {
    type = string
    default = "10.0.1.0/24"
}


variable "public_subnet_az2_cidr" {
    type = string
    default = "10.0.2.0/24"
}

variable "private_subnet_az1_cidr" {
    type = string
    default = "10.0.10.0/24"
}


variable "private_subnet_az2_cidr" {
    type = string
    default = "10.0.11.0/24"
}

# Security Group for vpc
variable "security_group_name" {
  type = string
  default = "mysg0001"
}

# EC2
variable "ec2_ami" {
  type = string
  default = "ami-006d3995d3a6b963b"
}
variable "ec2_type" {
  default = "t2.micro"
}

variable "ec2_name" {
  type = string
  default = "myec2000"
}
variable "key_name" {
    description = "SSH keys to connect to ec2 instance"
    default = "h-key"
}


# Create RDS

variable "allocated_storage" {
  type = string
  default = "20"
}

variable "db_engine" {
  type = string
  default = "mysql"
}

variable "engine_version" {
  type = string
  default = "8.0.28"
}

variable "instance_class" {
  type = string
  default = "db.t2.micro"
}

variable "db_name" {
  type = string
  default = "my_RDS_database"
}

variable "username" {
  type = string
  default = "harsha"
}

variable "password" {
  type = string
  default = "harsha12420"
}

variable "skip_final_snapshot" {
  type = bool
  default = "true"
}

variable "db_subnet_group_name" {
  type = string
  default = "rds_database_subnet1"
}

variable "subnet_group_tag" {
  type = string
  default = "rds_databse_saabnet"
}

#S3 Bucket
variable "bucket_name" {  
  type        = string  
  default = "harshapatel"
} 

variable "bucket_tag" {  
  type        = string  
  default = "harshapatel.ml"
} 

# Cert Manager
variable "wild_domain_name" {  
  type        = string  
  default = "*.harshapatel.ml"
}
variable "w_domain_name" {  
  type        = string  
  default = "www.harshapatel.ml"
}
variable "cert_managertag" {  
  type        = string  
  default = "harshapatel.ml-certmanager"
}
/* variable "type" { 
  type    = string
  default = "A"
 } */
# Route 53
variable "domain_name" {  
  type        = string  
  default = "harshapatel.ml"
} 

