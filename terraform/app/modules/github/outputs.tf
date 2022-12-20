output "tar_url" {
  value = data.github_release.release.tarball_url
}

output "tagged_version" {
  value = data.github_release.release.release_tag
}