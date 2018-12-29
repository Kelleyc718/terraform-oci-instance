# Terraform Sample for an Oracle Cloud Infrastructure Instance

 - This example is meant to be used with a trial tenancy or as a method to familiarize yourself with Terraform and how it works. 
 
 - Since Terraform is incredibly flexible, the methods presented in this example are not meant to be considered the "best practices". 
 
 - The example is not intended to be used for a production environment without review.

# Important note
-- This module assumes that there is supporting infrastructure in place to properly provision an instance. 
#### Prerequisites: 
```
Virtual Cloud Network
Subnet
```

# Variables
The variables used for the module are populated using a shell script. The purpose behind this is to allow freedom to define the variables outside of the module. This is done to allow modules greater flexibility without the need to define each variable on runtime or within a file. 
- A ```"sampleENV.sh"``` has been provided and should be populated prior to running ```"terraform init"```.

# Flow
```
source ./sampleENV.sh
terraform init
terraform plan
terraform apply
```