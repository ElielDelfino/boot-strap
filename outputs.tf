output "project_role_arn" {
  value = aws_iam_role.project_role.arn
}

output "s3_bucket_name" {
  value = aws_s3_bucket.terraform_state.bucket
}

output "s3_bucket_region" {
  value = aws_s3_bucket.terraform_state.region
}
