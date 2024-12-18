provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-test-123-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "53eedec9-da67-418a-8145-65c4abbbc1de"
    git_commit           = "231d1f19fe19afcef04d428f778d815b5332aa63"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-12 06:13:04"
    git_last_modified_by = "62313955+ludli@users.noreply.github.com"
    git_modifiers        = "62313955+ludli"
    git_org              = "ludli"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
