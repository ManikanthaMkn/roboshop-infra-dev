resource "aws_iam_role" "mysql" {
    name = local.mysql_role_name
    
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action ="sts:AssumeRole"
                Effect = "Allow"
                Sid = ""
                Principal = {
                    Service = "ec2.amazonaws.com"
                }
            },
        ]
    })

    tags = merge (
        {
            Name =local.mysql_role_name
        },
        local.common_tags
    )  
}

resource "aws_iam_policy" "mysql" {
    name = local.mysql_policy_name
    description = "A policy for MySQL EC2 instance"
    policy = file("mysql-iam-policy.json")  
}