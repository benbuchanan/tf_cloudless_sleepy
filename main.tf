resource "time_sleep" "wait_seconds" {
  create_duration = "3000s"
}

resource "null_resource" "topic_events" {
  triggers = {
    always_run = timestamp()
    topic = "test"
  }
  depends_on = [time_sleep.wait_seconds]
}
