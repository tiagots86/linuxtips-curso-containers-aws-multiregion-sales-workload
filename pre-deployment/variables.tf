variable "project_name" {
  type = string
}

variable "region_primary" {
  type = string
}

variable "region_secondary" {
  type = string

}

variable "active_states" {
  type = object({
    us-east-1 = string
    sa-east-1 = string
  })

}

