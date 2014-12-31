api = 2
core = 7.x

; Drupal core.
projects[drupal][version] = 7.32

; Contrib modules.
projects[libraries][subdir] = "contrib"
projects[awssdk][subdir] = "contrib"
projects[amazons3][subdir] = "contrib"

; Libraries.
libraries[awssdk][download][type] = "get"
libraries[awssdk][download][url] = "http://pear.amazonwebservices.com/get/sdk-1.6.2.tgz"
libraries[awssdk][directory_name] = "awssdk"
libraries[awssdk][destination] = "libraries/awssdk"
