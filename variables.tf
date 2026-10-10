variable "macie2_classification_jobs" {
  description = <<EOT
Map of macie2_classification_jobs, attributes below
Required:
    - job_type
    - s3_job_definition (block):
        - bucket_criteria (optional, block):
            - excludes (optional, block):
                - and (optional, block):
                    - simple_criterion (optional, block):
                        - comparator (optional)
                        - key (optional)
                        - values (optional)
                    - tag_criterion (optional, block):
                        - comparator (optional)
                        - tag_values (optional, block):
                            - key (optional)
                            - value (optional)
            - includes (optional, block):
                - and (optional, block):
                    - simple_criterion (optional, block):
                        - comparator (optional)
                        - key (optional)
                        - values (optional)
                    - tag_criterion (optional, block):
                        - comparator (optional)
                        - tag_values (optional, block):
                            - key (optional)
                            - value (optional)
        - bucket_definitions (optional, block):
            - account_id (required)
            - buckets (required)
        - scoping (optional, block):
            - excludes (optional, block):
                - and (optional, block):
                    - simple_scope_term (optional, block):
                        - comparator (optional)
                        - key (optional)
                        - values (optional)
                    - tag_scope_term (optional, block):
                        - comparator (optional)
                        - key (optional)
                        - tag_values (optional, block):
                            - key (optional)
                            - value (optional)
                        - target (optional)
            - includes (optional, block):
                - and (optional, block):
                    - simple_scope_term (optional, block):
                        - comparator (optional)
                        - key (optional)
                        - values (optional)
                    - tag_scope_term (optional, block):
                        - comparator (optional)
                        - key (optional)
                        - tag_values (optional, block):
                            - key (optional)
                            - value (optional)
                        - target (optional)
Optional:
    - custom_data_identifier_ids
    - description
    - initial_run
    - job_status
    - name
    - name_prefix
    - region
    - sampling_percentage
    - tags
    - tags_all
    - schedule_frequency (block):
        - daily_schedule (optional)
        - monthly_schedule (optional)
        - weekly_schedule (optional)
EOT

  type = map(object({
    job_type                   = string
    custom_data_identifier_ids = optional(list(string))
    description                = optional(string)
    initial_run                = optional(bool)
    job_status                 = optional(string)
    name                       = optional(string)
    name_prefix                = optional(string)
    region                     = optional(string)
    sampling_percentage        = optional(number)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    s3_job_definition = object({
      bucket_criteria = optional(object({
        excludes = optional(object({
          and = optional(list(object({
            simple_criterion = optional(object({
              comparator = optional(string)
              key        = optional(string)
              values     = optional(list(string))
            }))
            tag_criterion = optional(object({
              comparator = optional(string)
              tag_values = optional(list(object({
                key   = optional(string)
                value = optional(string)
              })))
            }))
          })))
        }))
        includes = optional(object({
          and = optional(list(object({
            simple_criterion = optional(object({
              comparator = optional(string)
              key        = optional(string)
              values     = optional(list(string))
            }))
            tag_criterion = optional(object({
              comparator = optional(string)
              tag_values = optional(list(object({
                key   = optional(string)
                value = optional(string)
              })))
            }))
          })))
        }))
      }))
      bucket_definitions = optional(list(object({
        account_id = string
        buckets    = list(string)
      })))
      scoping = optional(object({
        excludes = optional(object({
          and = optional(list(object({
            simple_scope_term = optional(object({
              comparator = optional(string)
              key        = optional(string)
              values     = optional(list(string))
            }))
            tag_scope_term = optional(object({
              comparator = optional(string)
              key        = optional(string)
              tag_values = optional(list(object({
                key   = optional(string)
                value = optional(string)
              })))
              target = optional(string)
            }))
          })))
        }))
        includes = optional(object({
          and = optional(list(object({
            simple_scope_term = optional(object({
              comparator = optional(string)
              key        = optional(string)
              values     = optional(list(string))
            }))
            tag_scope_term = optional(object({
              comparator = optional(string)
              key        = optional(string)
              tag_values = optional(list(object({
                key   = optional(string)
                value = optional(string)
              })))
              target = optional(string)
            }))
          })))
        }))
      }))
    })
    schedule_frequency = optional(object({
      daily_schedule   = optional(bool)
      monthly_schedule = optional(number)
      weekly_schedule  = optional(string)
    }))
  }))
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

