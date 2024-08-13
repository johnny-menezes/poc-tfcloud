##### output secretsmanager ########

output "arn" {
  description = "AWS SecretManager Secret ARN"
  value       = module.asm_gopoints.aws_secretsmanager_secret.secret_demo.arn
}

output "id" {
  description = "AWS SecretManager Secret ARN"
  value       = module.asm_gopoints.aws_secretsmanager_secret.secret_demo.id
}

output "secret" {
  description = "AWS SecretManager Secret resource"
  value       = module.asm_gopoints.aws_secretsmanager_secret.secret_demo
}

output "secret_version" {
  description = "AWS SecretManager Secret Version resource"
  value       = module.asm_gopoints.aws_secretsmanager_secret_version.secret_demo
  sensitive   = true
}
