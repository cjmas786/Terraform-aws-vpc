variable "region" {
  description = "Aws Region where Shared Services VPC  to be deployed"
  default     = "eu-central-1"
}

variable "vpc-cidr" {
  description = "Vpc-cidr range to be assigned"
  default     = ""
}

variable "vpc-name" {
  description = "Vpc name to be assigned"
  default     = ""
}


variable "vpc_id" {

  default = "aws_vpc.main.id"
}

# subnet variables

variable "subnet_cidr_block" {
  type = list(any)
  default = []
}
variable "availability_zone" {
  type = list(any)
  default = []
}

variable "subnet_name_map" {
  type = map(string)
  default = {}
}