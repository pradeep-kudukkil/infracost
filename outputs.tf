output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}

output "frontend_instance_id" {
  value = aws_instance.frontend.id
}

output "backend_instance_id" {
  value = aws_instance.backend.id
}

output "db_instance_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "load_balancer_dns_name" {
  value = aws_lb.main.dns_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.main.bucket
}

output "elastic_beanstalk_application_name" {
  value = aws_elastic_beanstalk_application.example.name
}

output "elastic_beanstalk_environment_name" {
  value = aws_elastic_beanstalk_environment.example.name
}
