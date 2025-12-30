resource "aws_lb_listener_rule" "frontend_rule" {
  listener_arn = data.terraform_remote_state.network.outputs.alb_listener_arn
  priority     = 10

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend_tg.arn
  }

  condition {
    path_pattern {
      values = ["/*"]
    }
  }
}
