output "masters_policy_id" {
  value = "${aws_iam_policy.masters.id}"
}

output "masters_policy_name" {
  value = "${aws_iam_policy.masters.name}"
}

output "masters_policy_arn" {
  value = "${aws_iam_policy.masters.arn}"
}
