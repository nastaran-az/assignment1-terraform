resource "aws_ecr_repository" "webapp" {
  name = "${var.name_prefix}-webapp"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "mysql" {
  name = "${var.name_prefix}-mysql"
  image_scanning_configuration {
    scan_on_push = true
  }
}
