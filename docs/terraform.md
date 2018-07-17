
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `policy` or `role`) | list | `<list>` | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name`, and `attributes` | string | `-` | no |
| masters_name | K8s masters subdomain name in the Kops DNS zone | string | `masters` | no |
| name | Name (e.g. `route53`) | string | - | yes |
| namespace | Namespace (e.g. `cp` or `cloudposse`) | string | - | yes |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | string | - | yes |
| tags | Additional tags (e.g. map(`Cluster`,`k8s.domain.com`) | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| policy_arn | Policy ARN |
| policy_id | Policy ID |
| policy_name | Policy name |

