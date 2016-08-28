###############################################
# Module: AWS IAM server certificates
###############################################

//  The unique Server Certificate name
output "id" {
    value = "${aws_iam_server_certificate.instance.id}"
}

// The name of the Server Certificate
output "name" {
    value = "${aws_iam_server_certificate.instance.name}"
}

// The Amazon Resource Name (ARN) specifying the server certificate.
output "arn" {
    value = "${aws_iam_server_certificate.instance.arn}"
}