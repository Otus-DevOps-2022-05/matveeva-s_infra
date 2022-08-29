#terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#    }
#  }
#}

resource "yandex_storage_bucket" "terraform" {
  bucket        = var.bucket_name
  force_destroy = true
}
