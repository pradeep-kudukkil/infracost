resource "aws_db_instance" "my_rds" {
  engine                = "mysql"
  instance_class        = "db.t2.micro"
  name                  = "mydatabase"
  username              = "admin"
  password              = "Password12345!"  # Replace with your desired password

  tags = {
    Name = "my-db-instance"
  }
}
