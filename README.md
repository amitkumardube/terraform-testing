# terraform - testing

In this terraform testing guide, we will talk about most popular tools which are available for testing Terraform code. For the moment, the analysis is done on 2 tools
- Terratest
- Test Kitchen with kitchen-terrafrom plugin

**Highlights**

**Terratest**
- This tool using golang testing framework.
- The test cases are written in golang and tested using go test command.
- In this guide we have written code to provision test infra and verifying some output variables.
- For more detailed implementation - please check readme under terratest folder

**Kitchen Terraform Plugin**
- This plugin is designed to work with tool test kitchen.
- The tool test kithen is written in Ruby.
- The infra is being launched using terraform driver with test variables.
- The verification is done using inspec.
- For more detailed documentation - please check readme under kithen folder

### demo_test

