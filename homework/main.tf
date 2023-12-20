resource "aws_iam_user" "user1" {
  name = "Elemir"
}
resource "aws_iam_user" "user2" {
  name = "kaizen"
}
resource "aws_iam_user" "user3" {
  name = "Hello"
}
resource "aws_iam_user" "user4" {
  name = "World"
}
resource "aws_iam_group" "Group1" {
  name = "DevOps"
}
resource "aws_iam_group" "Group2" {
  name = "QA"
}
 resource "aws_iam_group_membership" "team1" {
  name = "DevOps"

  users = [
    aws_iam_user.user1.name,
    aws_iam_user.user2.name,
  ]

  group = aws_iam_group.Group1.name
}
 resource "aws_iam_group_membership" "team2" {
  name = "QA"

  users = [
    aws_iam_user.user3.name,
    aws_iam_user.user4.name,
  ]

  group = aws_iam_group.Group2.name
}

resource "aws_iam_user" "admin" {
  name = "Admin"
}
output user {
    value = aws_iam_user.user1.arn
}
output user2 {
    value = aws_iam_user.user2.unique_id
}

resource "aws_s3_bucket" "bishkek1" {
  bucket = "kyrgyzstanbishkek"
  force_destroy = true # If you want to enable bucket deletion

}
resource "aws_s3_bucket" "bishkek2" {
  bucket = "kyrgyzstanbatken"
  force_destroy = true # If you want to enable bucket deletion

}



