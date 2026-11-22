locals {
    cachingDisabled = data.aws_cloudfront_cache_policy.cachingDisabled
    cachingOptimized = data.aws_cloudfront_cache_policy.cachingOptimized
    acm_certificate_arn = data.aws_ssm_parameter.acm_certificate_arn.value

    common_tags = {
        project = var.project
        environment = var.environment
    }
}