resource "aws_elastic_beanstalk_application" "example" {
  name        = "example-app"
  description = "Elastic Beanstalk Application"

  tags = {
    Name = "ExampleApp"
  }
}

resource "aws_elastic_beanstalk_environment" "example" {
  name                = "example-env"
  application         = aws_elastic_beanstalk_application.example.name
  solution_stack_name = "64bit Amazon Linux 2 v5.4.6 running Node.js 14"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"

  }

  tags = {
    Name = "ExampleEnv"
  }
}
