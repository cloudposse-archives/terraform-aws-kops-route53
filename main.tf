module "label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.3.3"
  namespace  = "${var.namespace}"
  stage      = "${var.stage}"
  name       = "${var.name}"
  delimiter  = "${var.delimiter}"
  attributes = "${var.attributes}"
  tags       = "${var.tags}"
}

module "kops_metadata" {
  source       = "git::https://github.com/cloudposse/terraform-aws-kops-metadata.git?ref=tags/0.1.1"
  dns_zone     = "${var.name}"
  masters_name = "${var.masters_name}"
  nodes_name   = "${var.nodes_name}"
}

data "aws_iam_policy_document" "default" {
  statement {
    actions = [
      "route53:ListHostedZonesByName",
      "route53:ChangeResourceRecordSets",
      "elasticloadbalancing:DescribeLoadBalancers",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "masters" {
  name   = "${module.label.id}"
  policy = "${data.aws_iam_policy_document.default.json}"
}

resource "aws_iam_role_policy_attachment" "masters" {
  role       = "${module.kops_metadata.masters_role_name}"
  policy_arn = "${aws_iam_policy.masters.arn}"
}
