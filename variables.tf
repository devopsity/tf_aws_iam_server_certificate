###############################################
# Module: AWS IAM server certificates
###############################################

// naming
variable	iam_certificate_name {}


// files
variable 	certificate_pem_file {}
variable	certificate_key_file {}
//variable	certificate_ca_file { default = "" }

// options
// for not to try to remove cert while still in use
variable	iam_certificate_create_before_destroy  { default = true }
variable	iam_certificate_path { default = "/" }