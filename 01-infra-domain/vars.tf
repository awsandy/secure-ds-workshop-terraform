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
  default     = "eu-west-2" #tagregion
}

variable "profile" {
  description = "The name of the profile to use"
  type        = string
  default     = "default" #tagprofile
}

variable "art-domain" {
  description = "The name of the artifact domain"
  type        = string
  default     = "ds-domain"
}

variable "ds-shared-repo" {
  description = "The name of the data sci shared repo"
  type        = string
  default     = "ds-shared-repo"
}

variable "ds-public-upstream-repo" {
  description = "The name of the data sci upstream public repo"
  type        = string
  default     = "ds-public-upstream-repo"
}

variable "external-conn" {
  description = "The name of the external connection"
  type        = string
  default     = "public:pypi"
}

variable "bucket-name" {
  description = "The name of the DS bucket"
  type        = string
  default     = "secure-data-science-cloudformation-andyt"
}

output "tprofile" {
  value = var.profile
}
