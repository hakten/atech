resource "aws_iam_group" "baytech-developers" {
  name = "baytech-developers"
  path = "/"
}


resource "aws_iam_group_policy_attachment" "baytech-developers-attachment" {
  group      = aws_iam_group.baytech-developers.name
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
