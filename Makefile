
build:
	npm install --dev
	npm run build
	curl -X DELETE "https://api.cloudflare.com/client/v4/zones/188a9eefa4cf964afeb3d598f79d13fe/purge_cache" \
     -H "Content-Type:application/json" \
     -H "X-Auth-User-Service-Key:$CLOUDFLARE_KEY"` \
     --data '{"purge_everything":true}'

