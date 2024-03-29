<div align='center'>
<p>
  <a href="https://github.com/PScoriae/terraform-infra/blob/main/LICENSE.md">
        <img src="https://img.shields.io/badge/license-WTFPL-brightgreen?style=for-the-badge">
  </a>
</p>
<p>
  <img src="./docs/terraform.svg" width=300>
</p>

## Terraform IaC

</div>
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about">About</a>
    </li>
    <li><a href="#installation">Installation</a></li>
  </ol>
</details>
<hr/>

# About

This repository is concerned with the provisioning of infrastructure for any of my personal projects using Terraform.

Currently, the cloud services used to host my projects are AWS, GCP and Cloudflare.

# Installation

This section guides you on how to setup this Terraform monorepo in your local machine.

1. First, ensure [Terraform](https://terraform.com) is installed on your dev computer.
2. Ensure the [AWS CLI](https://aws.amazon.com/cli/) is also installed on your dev computer.
3. In the AWS console, create an IAM User for Terraform to use.
4. Run `aws configure` in your terminal to configure the AWS CLI to use said IAM User. This is how Terraform will gain access to your AWS account.
5. In your desired project folder, clone the repo.
6. Finally, run `terraform init` in any Terraform directory to set up the Terraform backend.
