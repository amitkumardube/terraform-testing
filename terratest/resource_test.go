package terratest

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestResource(t *testing.T) {
	terraformOptions := &terraform.Options{

		// the path of the directory where terraform config files are located.
		TerraformDir: "../",
		// the path of var files having values of test environment. The path is relative to Directory path above
		VarFiles: []string{"terraform_test.tfvars"},

		/*         // Variables to pass to our Terraform code using -var options
		    Vars: map[string]interface{}{
			    "cluster_name": expectedClusterName,
			    "service_name": expectedServiceName,
		    },

		    // Environment variables to set when running Terraform
		    EnvVars: map[string]string{
			    "AWS_DEFAULT_REGION": awsRegion,
		    }, */
	}
	// defer the destroy part till the CLI is init and resources are created.
	defer terraform.Destroy(t, terraformOptions)
	// this will init terraform and apply the resources
	terraform.InitAndApply(t, terraformOptions)

	// this will check the value of this output variable against the expected value
	output := terraform.Output(t, terraformOptions, "sa_email")
	assert.Equal(t, "bqowner-test@my-first-project-298218.iam.gserviceaccount.com", output)
}
