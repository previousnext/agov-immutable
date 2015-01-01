api = 2
core = 7.x

; Core.
projects[drupal] = 7.34

; Contrib.
projects[libraries][subdir] = "contrib"
projects[awssdk][subdir] = "contrib"
projects[amazons3][subdir] = "contrib"

; Libraries.
libraries[awssdk][type] = library
libraries[awssdk][download][type] = git
libraries[awssdk][download][url] = https://github.com/amazonwebservices/aws-sdk-for-php.git
libraries[awssdk][download][tag] = 1.6.2
