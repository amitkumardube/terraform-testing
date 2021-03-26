# Kitchen tests with kitchen terraform


Kitchen works with terraform CLI to follow the same workflow steps as terraform does.

Below list shows the kitchen commands mapped with corresponding Terraform Commands.

Kitchen Command | Terraform Command
--- | ---
kitchen create | terrafrom init
kitchen converge | terrafrom apply with auto approve
kitchen destroy | terraform destroy