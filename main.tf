resource "google_storage_bucket" "static_site" {
  name          = "bestbook"
  location      = "EU"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.static_site.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket_object" "picture" {
  name   = "italiana-picture"
  source = "author1.jpg"
  bucket = google_storage_bucket.static_site.name
}

resource "google_storage_bucket_object" "index" {
  name   = "italiana-catozzella"
  source = "index.html"
  bucket = google_storage_bucket.static_site.name
}
