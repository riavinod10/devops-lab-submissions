# Assignment 15: Basic Infrastructure as Code (IaC) with Terraform

## Aim
To use Terraform to create, update, and destroy a local
file through Infrastructure as Code.

## Theory
Infrastructure as Code (IaC) is the practice of managing
infrastructure using configuration files rather than
manual processes.

Terraform is an open-source IaC tool that allows
resources to be defined, created, updated, and destroyed
using declarative configuration files.

In this experiment, the Terraform Local provider manages
a local text file named example.txt.

## Technologies Used
- Terraform
- HashiCorp Local Provider
- HCL (HashiCorp Configuration Language)
- Windows PowerShell
- Visual Studio Code

## Project Structure

```text
Assignment-15/
├── A15_Report.pdf
├── main.tf
├── commands.ps1
├── README.md
└── .gitignore
```

## Implementation

### Step 1: Verify Terraform Installation

```powershell
terraform --version
```

### Step 2: Initialize Terraform

```powershell
terraform init
```

This downloads the required provider and prepares
the working directory.

### Step 3: Preview the Configuration

```powershell
terraform plan
```

Terraform previews the changes before applying them.

### Step 4: Create the Resource

```powershell
terraform apply
```

Enter `yes` when prompted. Terraform creates
example.txt using the configuration in main.tf.

### Step 5: Verify the File

```powershell
Get-Content .\example.txt
```

### Step 6: Update the Resource

Edit the content in main.tf. Change the message
inside the content block to:

Hello from updated Terraform configuration!

Save the file and run:

```powershell
terraform plan
terraform apply
```

Enter `yes` when prompted, then verify the updated
content:

```powershell
Get-Content .\example.txt
```

### Step 7: Destroy the Resource

```powershell
terraform destroy
```

Enter `yes` when prompted. Terraform removes the
managed file.

Verify the deletion:

```powershell
Test-Path .\example.txt
```

The expected output is `False`.

## Result
Successfully used Terraform to initialize the
working directory, plan changes, create a local
file, update its content, and destroy the resource.