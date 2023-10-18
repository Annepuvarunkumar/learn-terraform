resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "frontend-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "mongodb-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "catalogue-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "redis-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}



resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "user-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "cart-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "mysql-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "shipping-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "rabbitmq-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "payment-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}


resource "aws_instance" "dispatch" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z09517412DHKFAPXSWNLX"
  name    = "dispatch-dev.varundevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}


