variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = "string"
  description = "Name (e.g. `external-dns`)"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name`, and `attributes`"
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`Cluster`,`k8s.domain.com`)"
}

variable "masters_name" {
  type        = "string"
  default     = "masters"
  description = "K8s masters subdomain name in the Kops DNS zone"
}

variable "nodes_name" {
  type        = "string"
  default     = "nodes"
  description = "K8s nodes subdomain name in the Kops DNS zone"
}
