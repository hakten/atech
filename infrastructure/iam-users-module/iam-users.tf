resource "aws_iam_user" "developers" {
  name  = "${var.user_names}"
  count = length(var.user_names)
  path  = "/"
}

resource "aws_iam_group_membership" "developers" {
  name = "developers-group-membership"

  users = "${var.user_names}"
  count = length(var.user_names)

  group = "${aws_iam_group.developers.name}"
}

variable "user_names" {}

