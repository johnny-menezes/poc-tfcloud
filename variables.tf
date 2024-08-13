########################
## Resource Variables ##
########################

variable "kms_key_id" {
  default     = null
  description = "Optional. The KMS Key ID to encrypt the secret. KMS key arn or alias can be used."
}

variable "policy" {
  default     = null
  description = "Optional. The resource policy which controls access to the secret."
}

variable "secret_name" {
  description = "Name of secret to store"
  type        = string
}

variable "secret_values"{
    default = {
        cliente     = "initial_value"
        portal      = "initial_value"
    }
    type    = map(string)
}



####################
## Tags Variables ##
#################### 

variable "environment"{
    description = "Environment of the application"
    type        = string
    default     = "demo"
}

variable "provisioner" {
    description = "IAC language type"
    type        = string
    default     = "Terraform"
}

variable "repo" {
    description = "Repository of the application"
    type        = string
    default     = "GitHub"
}