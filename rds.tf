resource "aws_db_instance" "my_rds" {
  identifier            = "my-db-instance"
  allocated_storage     = 20
  storage_type          = "gp2"
  engine                = "mysql"
  engine_version        = "5.7"
  instance_class        = "db.t2.micro"
  name                  = "mydatabase"
  username              = "admin"
  password              = "Password12345!"  # Replace with your desired password

  tags = {
    Name = "my-db-instance"
  }
}
