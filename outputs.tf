output "macie2_classification_jobs_id" {
  description = "Map of id values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "macie2_classification_jobs_created_at" {
  description = "Map of created_at values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "macie2_classification_jobs_custom_data_identifier_ids" {
  description = "Map of custom_data_identifier_ids values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.custom_data_identifier_ids if v.custom_data_identifier_ids != null && length(v.custom_data_identifier_ids) > 0 }
}
output "macie2_classification_jobs_description" {
  description = "Map of description values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "macie2_classification_jobs_initial_run" {
  description = "Map of initial_run values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.initial_run if v.initial_run != null }
}
output "macie2_classification_jobs_job_arn" {
  description = "Map of job_arn values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.job_arn if v.job_arn != null && length(v.job_arn) > 0 }
}
output "macie2_classification_jobs_job_id" {
  description = "Map of job_id values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "macie2_classification_jobs_job_status" {
  description = "Map of job_status values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.job_status if v.job_status != null && length(v.job_status) > 0 }
}
output "macie2_classification_jobs_job_type" {
  description = "Map of job_type values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.job_type if v.job_type != null && length(v.job_type) > 0 }
}
output "macie2_classification_jobs_name" {
  description = "Map of name values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "macie2_classification_jobs_name_prefix" {
  description = "Map of name_prefix values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "macie2_classification_jobs_region" {
  description = "Map of region values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "macie2_classification_jobs_s3_job_definition" {
  description = "Map of s3_job_definition values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => one(v.s3_job_definition) if v.s3_job_definition != null && length(v.s3_job_definition) > 0 }
}
output "macie2_classification_jobs_sampling_percentage" {
  description = "Map of sampling_percentage values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.sampling_percentage if v.sampling_percentage != null }
}
output "macie2_classification_jobs_schedule_frequency" {
  description = "Map of schedule_frequency values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => one(v.schedule_frequency) if v.schedule_frequency != null && length(v.schedule_frequency) > 0 }
}
output "macie2_classification_jobs_tags" {
  description = "Map of tags values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "macie2_classification_jobs_tags_all" {
  description = "Map of tags_all values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "macie2_classification_jobs_user_paused_details" {
  description = "Map of user_paused_details values across all macie2_classification_jobs, keyed the same as var.macie2_classification_jobs"
  value       = { for k, v in aws_macie2_classification_job.macie2_classification_jobs : k => v.user_paused_details if v.user_paused_details != null && length(v.user_paused_details) > 0 }
}

