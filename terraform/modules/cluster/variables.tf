
variable "serviceprinciple_id" {
    type = string
}

variable "serviceprinciple_key" {
    type = string
}

variable "location" {
  default = "southafricanorth"
}


variable "kubernetes_version" {
    default = "1.20.7"
}

variable "ssh_key" {
    type = string
}