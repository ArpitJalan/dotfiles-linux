alias "youtube-dl"="youtube-dl -proxy=127.0.0.1:3128 -t"

function youtube-dl {
  youtube-dlw "${@}"
}
