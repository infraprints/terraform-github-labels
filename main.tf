resource "github_issue_label" "label" {
  count       = "${length(var.labels)}"
  repository  = "${var.name}"
  name        = "${lookup(var.labels[count.index], "name")}"
  description = "${lookup(var.labels[count.index], "description", "")}"
  color       = "${lookup(var.labels[count.index], "color", var.color)}"
}
