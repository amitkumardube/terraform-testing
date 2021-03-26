bucket_name   = attribute('bucket_name')
account_name = input('account_name')
project_id = input('project_id')

control "gcp" do
  title "Google Cloud configuration"

  describe google_service_account(
    name: account_name,
    project: project_id
  ) do
    it { should exist }
  end
end