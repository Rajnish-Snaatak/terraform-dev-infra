resource "aws_autoscaling_group" "frontend_asg" {
  name                      = var.asg_name
  max_size                  = var.max_size
  min_size                  = var.min_size
  desired_capacity          = var.desired_capacity
  vpc_zone_identifier       = var.subnet_ids
  launch_template {
    id      = var.launch_template_id
    version = "$Latest"
  }

  tags = [
    {
      key                 = "Name"
      value               = "frontend-dev-asg"
      propagate_at_launch = true
    },
    {
      key                 = "Application"
      value               = var.application
      propagate_at_launch = true
    },
    {
      key                 = "Owner"
      value               = var.owner
      propagate_at_launch = true
    },
    {
      key                 = "Environment"
      value               = var.environment
      propagate_at_launch = true
    },
    {
      key                 = "CostCenter"
      value               = var.cost_center
      propagate_at_launch = true
    }
  ]
}
