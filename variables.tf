/**
  *   If a required variable is defined within the instance.tf file and references a variable, 
  *   it will need to be defined within this file. The variable can be left without any 
  *   key/value pairs, but it would then need to be defined in the "main.tf" file.
  *   An alternative would be to define a default value here to allow it to be omitted when
  *   the module is called. Having the flexibility to define certain variables in different locations
  *   gives added flexibility of creating a template to use for many situations.
  *
  *
  *
  *   Comment out any variable that is not defined within the resource to avoid errors
  *   when planning. The names of the variables are not strict. As long as they match the 
  *   naming convention of the variable called in the resource.
  */
variable "availability_domain" {
  description = "The availability domain where the instance should be located. This should be tied to a subnet's availability domain."
}
variable "compartment_id" {
  description = "OCID of the compartment you want the instance to be provisioned."
}
variable "shape" {
  description = "The type of shape to provision the instance with. Example: 1 OCPU = VM.Shape2.1"
}
variable "subnet_id" {
  description = "The OCID of the subnet the instance will be located."
}
variable "display_name" {
  description = "The name you would like the instance to appear as in the console."
}
variable "source_id" {
  description = "The OCID of the image to provision the instance with."
}
variable "source_type" {
  default = "image"
  description = "The source type of the instance."
}
variable "ssh_authorized_keys" {
  description = "The Public SSH key associated with the authorized user."
}
# variable "instance_create_vnic_details_assign_public_ip" {}
# variable "defined_tags" {}
# variable "instance_create_vnic_details_display_name" {}
# variable "freeform_tags" {}
# variable "instance_create_vnic_details_hostname_label" {}
# variable "instance_create_vnic_details_private_ip" {}
# variable "instance_create_vnic_details_skip_source_dest_check" {}
# variable "defined_tags" {}
# variable "extended_metadata" {}
# variable "fault_domain" {}
# variable "freeform_tags" {}
# variable "hostname_label" {}
# variable "ipxe_script" {}
# variable "is_pv_encryption_in_transit_enabled" {}
# variable "user_data" {}
# variable "boot_volume_size_in_gbs" {}
# variable "kms_key_id" {}
# variable "preserve_boot_volume" {
#   default = false
# }
