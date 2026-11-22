variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  type = list(string)
  default = [
    #Databases
    "mongodb", "redis", "mysql", "rabbitmq",

    #Backend
    "catalogue", "user", "cart", "shipping", "payment",

    #Frontend
    "frontend",

    #Backend ALB
    "backend_alb",
    
    #Frontend ALB
    "frontend_alb",

    #Bastion
    "bastion"
  ]
  
}