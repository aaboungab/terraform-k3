locals {
  vpc_cidr = "10.123.0.0/16"
}

locals {
  security_groups = {
    ssh = {
      name        = "ssh_sg"
      description = "ssh access"
      ingress = {
        ssh = {
          from        = 22
          to          = 22
          protocol    = "tcp"
          cidr_blocks = [var.access_ip]
        }
      }
    }

    tg = {
      name        = "tg_sg"
      description = "tg access"
      ingress = {
        ssh = {
          from        = 8000
          to          = 8000
          protocol    = "tcp"
          cidr_blocks = [var.access_ip]
        }
      }
    }

    http = {
      name        = "http_sg"
      description = "http access"
      ingress = {
        ssh = {
          from        = 80
          to          = 80
          protocol    = "tcp"
          cidr_blocks = [var.access_ip]
        }
      }
    }

    rds = {
      name        = "rds_sg"
      description = "rds access"
      ingress = {
        ssh = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = [local.vpc_cidr]
        }
      }
    }
  }
}