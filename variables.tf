variable "name" {
  description = "[Optional] The root name for the Project."
  type        = string
  default     = "Awesome Project!"
}

variable "region" {
  description = "[Required] The Region to run operations and build within."
  type        = string
}

variable "network_cidr_range" {
  description = "[Optional] The Primary Region to run operations and build within."
  type        = string
  default     = "10.0.0.0/8"
}

variable "tags" {
  description = "[Optional] Extra Tags to add to your stack."
  type        = map
  default     = {}
}

variable "enable_internet_gateway" {
  description = "[Optional] If to enable the Internet Gateway Service."
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "[Optional] If to enable the NAT Gateway Service."
  type        = bool
  default     = true
}

variable "tiers" {
  description = "[Optional] How many uniform tiers to create, use 'public' to create a public tier."
  default     = ["public", "data", "mid"]
  type        = list(string)
}

variable "availability_zones" {
  description = "[Optional] A list of Availability zones to operate in."
  default     = ["a", "b", "c", "d"]
  type        = list(string)
}

variable "network_bits" {
  description = "[Optional] The number of network bits to be allocated"
  default     = 8
}
