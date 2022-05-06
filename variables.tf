variable "cluster-name" {
  type        = string
  description = "The name of the rds-cluster/server that will be created"
}

variable "cluster-availability-zones" {
  type        = list(string)
  description = "The list of AZs in which this server should be deployed"
}

variable "database-name" {
  type        = string
  description = "The name of the initial database hosted within the deployed cluster/server"
}

variable "database-secret-name" {
  type        = string
  description = "The name of the secrets manager secret containing the username and password to be used as the master username/password for the database"
}
