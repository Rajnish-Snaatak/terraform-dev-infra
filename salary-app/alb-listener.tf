resource "aws_lb_listener_rule" "salary_rule" {
  listener_arn = data.terraform_remote_state.network.outputs.alb_listener_arn
  priority     = 20

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.salary_tg.arn
  }

  condition {
    path_pattern {
      values = ["/api/v1/salary/*"]
    }
  }
}
