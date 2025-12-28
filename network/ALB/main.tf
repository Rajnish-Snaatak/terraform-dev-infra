resource "aws_lb_listener_rule" "frontend_listener_rule" {
  listener_arn = var.alb_listener_arn
  priority     = var.priority

  action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }

  condition {
    path_pattern {
      values = [var.path_pattern]
    }
  }

  tags = {
    Name        = "frontend-listener-rule"
    Application = var.application
    Owner       = var.owner
    Environment = var.environment
    CostCenter  = var.cost_center
  }
}
