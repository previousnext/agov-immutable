api = 2
core = 7.x

; Drupal core.
projects[drupal][version] = 7.34
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal-7.x-allow_profile_change_sys_req-1772316-28.patch
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal-1470656-26.patch

; aGov profile.
projects[agov][download][url] = "git://github.com/previousnext/agov.git"
projects[agov][download][branch] = 7.x-2.x

; Contrib.
projects[libraries][subdir] = "contrib"
projects[awssdk][subdir] = "contrib"
projects[amazons3][subdir] = "contrib"

; Libraries.
libraries[awssdk][type] = library
libraries[awssdk][download][type] = git
libraries[awssdk][download][url] = https://github.com/amazonwebservices/aws-sdk-for-php.git
libraries[awssdk][download][tag] = 1.6.2
