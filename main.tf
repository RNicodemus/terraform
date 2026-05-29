resource "aws_instance" "secure_vm" {
ami = var.ami_id
instance_type = var.instance_type

# Enforce IMDSv2 (Mitigates Server-Side Request Forgery)
metadata_options {
http_endpoint = "enabled"
http_tokens = "required"
http_put_response_hop_limit = 1
}

# Enforce Encrypted Block Storage Pools
root_block_device {
encrypted = true
volume_type = "gp3"

}

 tags = {
   Name = "Encrypted-IMDSv2-VM"
  }
}