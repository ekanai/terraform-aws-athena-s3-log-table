resource "aws_glue_catalog_table" "table" {
  database_name = var.database_name
  name          = var.table_name
  table_type    = "EXTERNAL_TABLE"

  storage_descriptor {
    location      = var.location
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      serialization_library = "org.apache.hadoop.hive.serde2.RegexSerDe"

      parameters = {
        "input.regex" = "([^ ]*) ([^ ]*) \\[(.*?)\\] ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) (\"[^\"]*\"|-) (-|[0-9]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) (\"[^\"]*\"|-) ([^ ]*)(?: ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*))?.*$"
      }
    }

    columns {
      name = "bucketowner"
      type = "string"
    }

    columns {
      name = "bucket_name"
      type = "string"
    }

    columns {
      name = "requestdatetime"
      type = "string"
    }

    columns {
      name = "remoteip"
      type = "string"
    }

    columns {
      name = "requester"
      type = "string"
    }

    columns {
      name = "requestid"
      type = "string"
    }

    columns {
      name = "operation"
      type = "string"
    }

    columns {
      name = "key"
      type = "string"
    }

    columns {
      name = "request_uri"
      type = "string"
    }

    columns {
      name = "httpstatus"
      type = "string"
    }

    columns {
      name = "errorcode"
      type = "string"
    }

    columns {
      name = "bytessent"
      type = "bigint"
    }

    columns {
      name = "objectsize"
      type = "bigint"
    }

    columns {
      name = "totaltime"
      type = "string"
    }

    columns {
      name = "turnaroundtime"
      type = "string"
    }

    columns {
      name = "referrer"
      type = "string"
    }

    columns {
      name = "useragent"
      type = "string"
    }

    columns {
      name = "versionid"
      type = "string"
    }

    columns {
      name = "hostid"
      type = "string"
    }

    columns {
      name = "sigv"
      type = "string"
    }

    columns {
      name = "ciphersuite"
      type = "string"
    }

    columns {
      name = "authtype"
      type = "string"
    }

    columns {
      name = "endpoint"
      type = "string"
    }

    columns {
      name = "tlsversion"
      type = "string"
    }
  }
}
