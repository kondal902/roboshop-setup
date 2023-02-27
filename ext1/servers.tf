resource "aws_instance" "frontend" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="frontend"
}
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "frontend-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mangodb" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="mangodb"
}
}


resource "aws_route53_record" "mangodb" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "mangodb-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mangodb.private_ip]
}


resource "aws_instance" "catalogue" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="catalogue"
}
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "catalogue-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="redis"
}
}

resource "aws_route53_record" "redis" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "redis-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}



resource "aws_instance" "user" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="user"
}
}

resource "aws_route53_record" "user" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "user-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "cart" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="cart"
}
}

resource "aws_route53_record" "cart" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "cart-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "mysql" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="mysql"
}
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "mysql-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "shipping" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="shipping"
}
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "shipping-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="rabbitmq"
}
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "rabbitmq-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
ami="ami-0a017d8ceb274537d"
instance_type="t3.micro"
vpc_security_group_ids=["sg-05b87889bc82fcb3e"]
tags = {
Name="payment"
}
}

resource "aws_route53_record" "payment" {
  zone_id = "Z014076334KCXLGIY0AWV"
  name    = "payment-dev.devopsb71.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}