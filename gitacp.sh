echo message
read message

gitacp() {
  GIT=`which git`
  ${GIT} add --all .
  ${GIT} commit -m "$message"
  ${GIT} push git@github.com:Pakopac/g_cloud.git master
}

gitacp $message


