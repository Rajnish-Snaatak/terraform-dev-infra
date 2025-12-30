resource "aws_lb_listener_rule" "employee_rule" {
  listener_arn = data.terraform_remote_state.network.outputs.alb_listener_arn
  priority     = 1

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.employee_tg.arn
  }

  condition {
    path_pattern {
      values = ["/api/v1/employees/*"]
    }
  }
}
