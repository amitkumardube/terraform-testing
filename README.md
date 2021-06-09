# terraform - testing

The documentation covers Terraform testing using kitchen-terraform and GCP-Inspec.

**Kitchen Terraform Plugin**
- This plugin is designed to work with tool test kitchen.
- The tool test kithen is written in Ruby.
- The infra is being launched using terraform driver with test variables.
- The verification is done using inspec.

**Guide on how to use this repo**
- The terraform code is written in directories under big_query and secrets
- The code in big_query directory creates a big query instance along with a service account.
- The code in secrets folder creates secrets

**Test Driven development for above terraform code**
- The code needs to be tested against the sandbox environment before it can be applied.
- The testing setup is available under https://github.com/amitkumardube/kitchen-terraform
- The workflow calls the testing workflow which has terraform setup to test the code.
- If testing workflow is successful then this workflow will continue and PR will be merged.
- If testing workflow fails then process will stop before it can be fixed.
