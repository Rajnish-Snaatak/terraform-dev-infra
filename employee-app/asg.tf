resource "aws_autoscaling_group" "employee_asg" {
  name                      = "employee-asg"
  desired_capacity          = var.desired_capacity
  min_size                  = var.min_size
  max_size                  = var.max_size
  vpc_zone_identifier       = [data.terraform_remote_state.network.outputs.backend_subnet]
  target_group_arns         = [aws_lb_target_group.employee_tg.arn]
  health_check_type         = "ELB"
  health_check_grace_period = 300

  launch_template {
    id      = aws_launch_template.employee_lt.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "employee-app"
    propagate_at_launch = true
  }
}
