###############################################
# Module: AWS RDS Instance
###############################################

// This template creates the following resources
// - A IAM server certificate


resource "aws_iam_server_certificate" "instance" {
	name = "${var.iam_certificate_name}"
	certificate_body = "${file(var.certificate_pem_file)}"
	private_key      = "${file(var.certificate_key_file)}"
//	certificate_chain = "${file(var.certificate_ca_file)}"
	path = "${var.iam_certificate_path}"

	lifecycle {
		create_before_destroy = true //"${var.iam_certificate_create_before_destroy}"
	}


	provisioner "local-exec" {                                                                                                                          	command = "sleep 10"                            
    }  
}