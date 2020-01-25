
resource "aws_iam_group" "group" {
  name = var.iam_group_name
}


resource "aws_iam_group_policy_attachment" "group-attachment" {
  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/${var.iam_group_policy_name}"
}

resource "aws_iam_user" "users" {
  count = length(var.iam_users)
  name  = var.iam_users[count.index]
}

resource "aws_iam_user_login_profile" "users" {
  user    = "${aws_iam_user.users[count.index].name}"
  count   = length(var.iam_users)
  pgp_key = "username"
}

resource "aws_iam_group_membership" "membership" {
  name = "group-membership"
  count = length(var.iam_users)
  users = [aws_iam_user.users[count.index].name]

  group = aws_iam_group.group.name
}

