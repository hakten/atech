
resource "aws_iam_group" "group" {
  name = var.aws_iam_group_name
}


resource "aws_iam_group_policy_attachment" "group-attachment" {
  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/${var.iam_group_policy_name}"
}

resource "aws_iam_user" "users" {
  count = "${length(var.iam_users)}"
  name  = "${element(var.iam_users,count.index)}"
}


resource "aws_iam_group_membership" "membership" {
  name = "group-membership"
  count = "${length(var.iam_users)}"
  users = "${element(aws_iam_users.users.*.name,count.index)}"

  group = "${aws_iam_group.group.name}"
}

