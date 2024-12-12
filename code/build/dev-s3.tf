provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"
  acl           = "public-read-write"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "2ef35e15-0816-42ad-aea0-89f77c783724"
    git_commit           = "d7c4be067669bb1dd1dadb28ff78aab99eb12038"
    git_file             = "code/build/dev-s3.tf"
    git_last_modified_at = "2024-12-11 17:27:49"
    git_last_modified_by = "tprendervill+12dso@paloaltonetworks.com"
    git_modifiers        = "tprendervill+12dso"
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
