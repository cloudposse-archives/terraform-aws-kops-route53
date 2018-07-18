output "policy_id" {
  value       = "${aws_iam_policy.default.id}"
  description = "Policy ID"
}

output "policy_name" {
  value       = "${aws_iam_policy.default.name}"
  description = "Policy name"
}

output "policy_arn" {
  value       = "${aws_iam_policy.default.arn}"
  description = "Policy ARN"
}
