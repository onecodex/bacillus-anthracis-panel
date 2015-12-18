set -e
LOCATION=bacillus-anthracis-panel
jekyll build
cd _site && s3cmd sync --rexclude "^\." --cf-invalidate --cf-invalidate-default-index ./* . s3://science.onecodex.com/$LOCATION/
