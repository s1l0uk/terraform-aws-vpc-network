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

variable "subject_cidr_range_public" {
  description = "[Optional] The Primary Region to run operations and build within."
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.0.1/24", "10.0.0.2/24"]
}

variable "subject_cidr_range_mid" {
  description = "[Optional] The Primary Region to run operations and build within."
  type        = list(string)
  default     = []
}

variable "subject_cidr_range_data" {
  description = "[Optional] The Primary Region to run operations and build within."
  type        = list(string)
  default     = []
}

variable "extra_tags" {
  description = "[Optional] Extra Tags to add to your stack."
  type        = map
  default     = {}
}

variable "enable_internet_gateway" {
  description = "[Optional] If to enable the Internet Gateway Service."
  type        = bool
  default     = true
}
