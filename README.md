# terraform-aws-athena-s3-log-table

Create Amazon Athena table for analyses S3 log.
It's actually Glue, but creates a table that can be queried with Athena.

```terraform
module "athena-s3-log-table" {
  source  = "app.terraform.io/ekanai/athena-s3-log-table/aws"
  version = "0.1.2"

  database_name = "created_database_name"
  location      = "s3_logging_location"
  table_name    = "the_table_name_you_want"
}
```
