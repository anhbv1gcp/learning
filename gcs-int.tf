

resource "google_storage_bucket" "vinid-bucket" {
  name     = "anhbv-cloudtest"
  location      = "ASIA"
  labels  {
    av="sam"
    
  }
}
resource "google_storage_bucket" "vinid-bucket1" {
  name     = "anhbv-aaa"
  location      = "ASIA"
   
}
