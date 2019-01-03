set -e
npm run build
aws s3 sync public/ s3://science.onecodex.com/bacillus-anthracis-panel/
aws cloudfront create-invalidation --distribution-id EADCJGA0D28CG --paths "/bacillus-anthracis-panel/*"
