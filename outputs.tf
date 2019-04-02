output "url" {
  description = "The URLs to the issue label(s)"
  value       = "${github_issue_label.label.*.url}"
}
