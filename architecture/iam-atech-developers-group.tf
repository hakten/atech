resource "aws_iam_group" "atech-developers" {
  name = "atech-developers"
  path = "/"
}


resource "aws_iam_group_policy_attachment" "atech-developers-attachment" {
  group      = aws_iam_group.atech-developers.name
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
