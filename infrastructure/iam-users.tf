resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/developers/"
}