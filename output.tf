##### output secretsmanager ########

/*

output "arn" {
  description = "AWS SecretManager Secret ARN"
  value       = module.asm_gopoints.arn
}

output "id" {
  description = "AWS SecretManager Secret ARN"
  value       = module.asm_gopoints.id
}

output "secret" {
  description = "AWS SecretManager Secret resource"
  value       = module.asm_gopoints.secret
}

output "secret_version" {
  description = "AWS SecretManager Secret Version resource"
  value       = module.asm_gopoints.secret_version
  sensitive   = true
}

*/