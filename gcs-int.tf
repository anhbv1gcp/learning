

resource "google_storage_bucket" "vinid-bucket" {
  name     = "anhbv-cloudtest"
  location      = "ASIA"
}
resource "google_storage_bucket" "vinid-bucket1" {
  name     = "anhbv-aaa"
  location      = "ASIA"
  labels 
}
