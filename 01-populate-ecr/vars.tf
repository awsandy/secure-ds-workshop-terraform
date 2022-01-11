variable "ecr_repo" {
  description = "The name of the ECR repo"
  type        = string
  default     = "ds-shared-container-images"
}
variable "image_name" {
  description = "The name of the custom image"
  type        = string
  default     = "ds-custom-tensorflow241"
}

variable "region" {
  description = "The name of the region"
  type        = string
  default     = "eu-west-2"
}

variable "profile" {
  description = "The name of the profile to use"
  type        = string
  default     = "Pub1"
}
