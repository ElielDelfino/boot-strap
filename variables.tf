variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  description = "Nome da role do projeto que será criada"
}

variable "github_owner" {
  description = "Usuário ou organização do GitHub"
}

variable "github_repo" {
  description = "Nome do repositório do GitHub"
}

variable "s3_bucket_name" {
  description = "Nome do bucket S3 para armazenar o estado do Terraform"
}

variable "extra_permissions" {
  description = "Permissões adicionais personalizadas em JSON"
  type        = string
  default     = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:GetRole",
        "iam:ListRolePolicies",
        "iam:ListAttachedRolePolicies",
        "iam:AttachRolePolicy",
        "iam:DetachRolePolicy",
        "iam:ListInstanceProfilesForRole",
        "iam:CreateInstanceProfile",
        "iam:DeleteInstanceProfile",
        "iam:AddRoleToInstanceProfile",
        "iam:RemoveRoleFromInstanceProfile",
        "iam:GetInstanceProfile",
        "iam:PassRole",
        "ecr:CreateRepository",
        "ecr:DeleteRepository",
        "ecr:DescribeRepositories",
        "ecr:ListImages",
        "ecr:BatchDeleteImage",
        "ecr:DescribeImages",
        "ssm:SendCommand",
        "ssm:GetCommandInvocation",
        "ssm:ListCommandInvocations",
        "ssm:CancelCommand"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}
  
