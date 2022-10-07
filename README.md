
# terraform-guardrails

[![License: UPL](https://img.shields.io/badge/license-UPL-green)](https://img.shields.io/badge/license-UPL-green) [![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=oracle-devrel_terraform-guardrails)](https://sonarcloud.io/dashboard?id=oracle-devrel_terraform-guardrails)

## Introduction
This guide helps you configure tests using Sentinel to govern your Terraform stacks.

## Getting Started
1. Login to [app.terraform.io](https://app.terraform.io)
2. Go to the [tutorial on setting up Terraform Cloud](https://learn.hashicorp.com/tutorials/terraform/cloud-sign-up?in=terraform/cloud-get-started).
3. Follow the steps up until the [input variable set](https://learn.hashicorp.com/tutorials/terraform/cloud-create-variable-set?in=terraform/cloud-get-started) section. Populate your ocid, fingerprint, region, tenancy ocid, and private key by gathering the inputs from your OCI Console. For the private key, download a private key pem file and input the contents of the file as the value. <br/><br/>
![Imgur](https://i.imgur.com/0AUho5b.png)

4. Fork this repo. Create a new workspace and choose the Version control workflow. Point your workspace at the forked repo.
5. Run a terraform apply within your workspace dashboard. <br/><br/>
![imgur](https://i.imgur.com/ViLGcWH.png)

## Configuring Sentinel

1. Referencing the [enforce policy set guide](https://learn.hashicorp.com/tutorials/terraform/policy-quickstart?in=terraform/cloud-get-started) go to settings, select `policy sets`, and click `connect new policy set`.
2. Select your forked repo again and for the path enter "oci" since that is the name of the directory where the tests live.
3. Select "Policies enforced on select workspaces" and specify your new workspace from the dropdown. Click the connect policy set button.
4. Try running a plan and apply on your Terraform code. You can modify your tests [enforcement levels](https://docs.hashicorp.com/sentinel/concepts/enforcement-levels) in the sentinel.hcl file. See how the tests behave when you remove tags from your resources or run a `terraform plan` after deleting resources from the `prohibited_list` (within the deletion.sentinel file).
5. Try adding additional checks i.e  [validate-variables-have-descriptions.sentinel](https://github.com/hashicorp/terraform-sentinel-policies/blob/main/cloud-agnostic/validate-variables-have-descriptions.sentinel).

### Prerequisites
* A Terraform Cloud Login
* An OCI Account
* An Oracle Cloud ocid, fingerprint, tenancy ocid, and private key

## Notes/Issues
* Sentinel is one of many Policy-as-Code frameworks and requires a Terraform Cloud account tier that costs $70/mo.
* Once done with the tutorial, go ahead and [tear down your resources](https://learn.hashicorp.com/tutorials/terraform/cloud-destroy).

## URLs
* [cloud.oracle.com](https://cloud.oracle.com)
* [app.terraform.io](https://app.terraform.io)

## Contributing
This project is open source.  Please submit your contributions by forking this repository and submitting a pull request!  Oracle appreciates any contributions that are made by the open source community.

## License
Copyright (c) 2022 Oracle and/or its affiliates.

Licensed under the Universal Permissive License (UPL), Version 1.0.

See [LICENSE](LICENSE) for more details.

ORACLE AND ITS AFFILIATES DO NOT PROVIDE ANY WARRANTY WHATSOEVER, EXPRESS OR IMPLIED, FOR ANY SOFTWARE, MATERIAL OR CONTENT OF ANY KIND CONTAINED OR PRODUCED WITHIN THIS REPOSITORY, AND IN PARTICULAR SPECIFICALLY DISCLAIM ANY AND ALL IMPLIED WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.  FURTHERMORE, ORACLE AND ITS AFFILIATES DO NOT REPRESENT THAT ANY CUSTOMARY SECURITY REVIEW HAS BEEN PERFORMED WITH RESPECT TO ANY SOFTWARE, MATERIAL OR CONTENT CONTAINED OR PRODUCED WITHIN THIS REPOSITORY. IN ADDITION, AND WITHOUT LIMITING THE FOREGOING, THIRD PARTIES MAY HAVE POSTED SOFTWARE, MATERIAL OR CONTENT TO THIS REPOSITORY WITHOUT ANY REVIEW. USE AT YOUR OWN RISK. 