resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/"

  tags {
    Project = "atech"
  }
}


resource "aws_iam_group_policy_attachment" "developers-attach" {
  group      = aws_iam_group.developers.name
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
