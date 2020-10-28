

resource "google_storage_bucket" "vinid-bucket" {
  name     = "vinid-${local.subnet_name}-internal-${local.suffix}"
  location      = "ASIA"
}
 resource "google_storage_bucket_iam_member" "storage_objectCreator" {
   bucket = "${google_storage_bucket.vinid-bucket.name}"
   role   = "roles/storage.objectCreator"
  
   member = "serviceAccount:${google_service_account.cdn-vinid.email}"
}
 resource "google_storage_bucket_iam_member" "storage_bucketreader" {
   bucket = "${google_storage_bucket.vinid-bucket.name}"
   role   = "roles/storage.legacyBucketReader"
  
   member = "serviceAccount:${google_service_account.cdn-vinid.email}"
}



# resource "google_storage_bucket" "topup-b2b2c" {
#   name = "topup-b2b2c-nonprod"
#   # chú ý lifecycle cho môi trường production
#   location      = var.region
#   force_destroy = "false"
# }

# locals {
#   read_bucket_roles = ["roles/storage.objectViewer", "roles/storage.legacyBucketReader"]

# }

# resource "google_service_account" "topup-b2b2c" {
#   account_id   = "topup-b2b2c"
#   display_name = "SA for reading to topup-b2b2c bucket"
# }


# resource "google_storage_bucket_iam_member" "read_bucket_roles" {
#   bucket     = google_storage_bucket.topup-b2b2c.name
#   for_each   = toset(local.read_bucket_roles)
#   role       = each.value
#   member     = format("serviceAccount:%s", google_service_account.topup-b2b2c.email)
#   depends_on = [google_storage_bucket.topup-b2b2c, google_service_account.topup-b2b2c]
# }
# #gcp.ops-oa@onemount.com
# resource "google_storage_bucket_iam_member" "write_bucket_roles" {
#   bucket     = google_storage_bucket.topup-b2b2c.name
#   role       = "roles/storage.legacyBucketWriter"
#   member     = "group:gcp.ops-oa@onemount.com"
#   depends_on = [google_storage_bucket.topup-b2b2c, google_service_account.topup-b2b2c]
# }
