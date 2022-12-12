variable "credentials" {
  description = "GCP Service Account Key Credentials"
}
variable "name" {
  description = "prefix in resources name"
  type        = string
}
variable "gcp_project" {
  description = "Project Id of the GCP account"
  type        = string
}
variable "region" {
  description = "Region in which the resources will create"
  type        = string
}
variable "zone" {
  description = "Zone in which the resources will create"
  type        = string
}
variable "subnet_cidr_range" {
  description = "Subnet CIDR IP range"
}
#########################################################################
variable "data_base_version" {
  type        = string
  default     = "MYSQL_5_6" #MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB
  description = "specifies the database version"
}


variable "db_password" {
  type        = string
  default     = "admin"
  description = "description"
}

variable "db_username" {
  type        = string
  default     = "pedrobalza"
  description = "input the database authorized user "
}

variable "db_host" {
  type        = string
  default     = "%"
  description = "description"
  
}

variable "db_name" {
  type        = string
  default     = "random"
  description = "description"
}
variable "dbinstance_name" {
  type        = string
  default     = "kildare"
  description = "name of database instance"
}

variable "authorized_networks" {
  type        = string
  default     = "0.0.0.0/0"
  description = "authorized networks ip incoming to the database"
}