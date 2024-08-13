#variable "TF_VAR_region" {
#  description = "AWS region."
#  type = string
#}



########################
## Resource Variables ##
########################
variable "secretname" {
    type    = string
    default = "value"
}
variable "clientid"{
    default = {
        client_id     = "initial_value"
        client_secret = "initial_value"
    }
    type    = map(string)
}

####################
## Tags Variables ##
####################
variable "environment"{
    description = "Environment of the application"
    type        = string
    default     = "dev"
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