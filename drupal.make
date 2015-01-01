api = 2
core = 7.x

; Core.
projects[drupal] = 7.34

; Contrib.
projects[libraries][subdir] = "contrib"
projects[awssdk][subdir] = "contrib"
projects[amazons3][subdir] = "contrib"

; Libraries.
projects[awssdk_lib][name] = "awssdk"
projects[awssdk_lib][type] = library
projects[awssdk_lib][download][type] = git
projects[awssdk_lib][download][url] = https://github.com/amazonwebservices/aws-sdk-for-php.git
projects[awssdk_lib][download][tag] = 1.5.10
