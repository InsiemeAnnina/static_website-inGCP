resource "google_storage_bucket" "bucket" {
  name     = "statefilebucket"
  location = "EU"
}