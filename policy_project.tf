# Policy gerenciada AmazonEC2FullAccess
resource "aws_iam_role_policy_attachment" "ec2_fullaccess" {
  role       = aws_iam_role.project_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

# Policy gerenciada AmazonEC2ContainerRegistryFullAccess
resource "aws_iam_role_policy_attachment" "ecr_fullaccess" {
  role       = aws_iam_role.project_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}

#Policy gerenciada AmazonS3FullAccess
resource "aws_iam_role_policy_attachment" "s3_fullaccess" {
  role       = aws_iam_role.project_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

# Inline policy customizada (todas as permissões extra)
resource "aws_iam_role_policy" "custom_permissions" {
  role   = aws_iam_role.project_role.id
  policy = var.extra_permissions
}
