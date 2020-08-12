output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}
output "mongodb_ip_private" {
  value = "${aws_instance.mongodb.private_ip}"
}

output "loadbalancer-dns" {
  value = "${aws_elb.web_elb.dns_name}"
}





 