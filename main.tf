resource "google_storage_bucket" "static_site" {
  name          = "bestbook"
  location      = "EU"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_object" "picture" {
  name   = "italiana-picture"
  source = "author.jpg"
  bucket = google_storage_bucket.static_site.name
}

resource "google_storage_bucket_object" "index" {
  name   = "italiana-catalozza"
  source = "index.html"
  bucket = google_storage_bucket.static_site.name
}
