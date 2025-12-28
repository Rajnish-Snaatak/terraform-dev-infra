# Scale-out policy
resource "aws_autoscaling_policy" "scale_out" {
  name                   = "${var.environment}-employee-scale-out"
  autoscaling_group_name = var.asg_name
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300

  tags = {
    Application = var.application
    Owner       = var.owner
    Environment = var.environment
    CostCenter  = var.cost_center
  }
}

# Scale-in policy
resource "aws_autoscaling_policy" "scale_in" {
  name                   = "${var.environment}-employee-scale-in"
  autoscaling_group_name = var.asg_name
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300

  tags = {
    Application = var.application
    Owner       = var.owner
    Environment = var.environment
    CostCenter  = var.cost_center
  }
}
