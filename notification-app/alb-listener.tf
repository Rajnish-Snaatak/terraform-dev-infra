resource "aws_lb_listener_rule" "notification_rule" {
  listener_arn = data.terraform_remote_state.network.outputs.alb_listener_arn
  priority     = 30

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.notification_tg.arn
  }

  condition {
    path_pattern {
      values = ["/api/v1/notify*"]
    }
  }
}
