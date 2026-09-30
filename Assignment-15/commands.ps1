# Assignment 15: Basic Infrastructure as Code with Terraform

# Step 1: Check Terraform installation
terraform --version

# Step 2: Navigate to the project folder
Set-Location "D:\CCodes\devops-lab-submissions\Assignment-15"

# Step 3: Initialize Terraform
terraform init

# Step 4: Preview the changes
terraform plan

# Step 5: Create the file
terraform apply

# Type yes when Terraform asks for confirmation.

# Step 6: Verify the generated file
Get-Content .\example.txt

# Step 7: After changing the content in main.tf,
# preview the changes again.
terraform plan

# Step 8: Apply the updated configuration
terraform apply

# Type yes when prompted, then verify:
Get-Content .\example.txt

# Step 9: Destroy the Terraform-managed resource
terraform destroy

# Type yes when prompted.
# Verify that the file was removed:
Test-Path .\example.txt
# Expected output: False