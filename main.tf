resource "oci_core_instance" "instance" {
    ## Required ##
    availability_domain = "${var.availability_domain}"
    compartment_id = "${var.compartment_id}"
    shape = "${var.shape}"

    ## Required ##
    create_vnic_details {
        #Required
        subnet_id = "${var.subnet_id}"

        #Optional
        # assign_public_ip = "${var.instance_create_vnic_details_assign_public_ip}"
        # defined_tags = {"Operations.CostCenter"= "42"}
        # display_name = "${var.instance_create_vnic_details_display_name}"
        # freeform_tags = {"Department"= "Finance"}
        # hostname_label = "${var.instance_create_vnic_details_hostname_label}"
        # private_ip = "${var.instance_create_vnic_details_private_ip}"
        # skip_source_dest_check = "${var.instance_create_vnic_details_skip_source_dest_check}"
    }

    ## Optional ##
    # defined_tags = {"Operations.CostCenter"= "42"}
    display_name = "${var.display_name}"

    ## Optional ##
    # extended_metadata {
    #     some_string = "stringA"
    #     nested_object = "{\"some_string\": \"stringB\", \"object\": {\"some_string\": \"stringC\"}}"
    # }
    # fault_domain = "${var.instance_fault_domain}"
    # freeform_tags = {"Department"= "Finance"}
    # hostname_label = "${var.instance_hostname_label}"
    # ipxe_script = "${var.instance_ipxe_script}"
    # is_pv_encryption_in_transit_enabled = "${var.instance_is_pv_encryption_in_transit_enabled}"
    metadata {
        ssh_authorized_keys = "${var.ssh_authorized_keys}"
    #     user_data = "${base64encode(file(var.custom_bootstrap_file_name))}"
    }

    ## Required ##
    source_details {
        source_id = "${var.source_id}"
        source_type = "${var.source_type}"

        ## Optional ##
        # boot_volume_size_in_gbs = "${var.boot_volume_size_in_gbs}"
        # kms_key_id = "${var.kms_key_id}"
    }

    ## Optional ##
    # preserve_boot_volume = false
}