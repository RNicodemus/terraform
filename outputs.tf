output "instance_id" {
value = aws_instance.secure_vm.id
description = "The runtime virtualization instance ID."
}

output "public_ip" {
value = aws_instance.secure_vm.public_ip
description = "The public networking entry vector string."
}