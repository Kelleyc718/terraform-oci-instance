#!/usr/bin/env bash
#Enter Your Tenancy OCID
export TF_VAR_tenancy_ocid="ENTER YOUR TENANCY OCID"
#Enter Your Compartment OCID
export TF_VAR_compartment_id="ENTER YOUR COMPARTMENT OCID"
#Enter Your User OCID
export TF_VAR_user_ocid="ENTER YOUR USER OCID"
#Enter Your Fingerprint
export TF_VAR_fingerprint=$(cat ~/.oci/oci_api_key_fingerprint)
#Enter Your Region (Example: us-ashburn-1)
export TF_VAR_region="us-ashburn-1"
#Enter Your Namespace
export TF_VAR_namespace="THE NAME OF YOUR TENANCY"
#Enter Path to Your Private API Key
export TF_VAR_private_key_path="/.oci/oci_api_key.pem"
#Enter Path to Your Public SSH Key
export TF_VAR_ssh_authorized_keys=$(cat ~/.ssh/id_rsa.pub)