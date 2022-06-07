
resource "aws_cloudwatch_event_rule" "daily" {
    # Missing config
}

resource "aws_cloudwatch_event_target" "check_daily" {
    # Missing config
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_lambda" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = #
  principal     = "events.amazonaws.com"
  source_arn    = #
}
