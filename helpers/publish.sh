#!/bin/bash
# This script runs when you hit the Publish button!

printf '🚨 This action will deploy a Compute app to your Fastly account and publish your site content – do you want to proceed? (y/n)? '
read answer

if [ "$answer" != "${answer#[Yy]}" ] ; then 
    if [ ! $FASTLY_API_TOKEN ]; then 
        echo '⚠️ Grab an API key and add it your repo before deploying! Check out the README for steps. 📖' 
    else 
        if [ ! -d './_deploy/_app' ]; then
            npm run build
            npx --yes @fastly/compute-js-static-publish@latest --root-dir=./_deploy/_site --output=./_deploy/_app --static-dir=./public --not-found-page=./public/404.html --kv-store-name=website-content
        fi
        cd ./_deploy/_app
        name=$(grep '^service_id' fastly.toml | cut -d= -f2-)
        size=${#name}
        # do we have a service id (meaning we've deployed)
        if ! [[ ${size} -gt 3 ]] ; then
            npx --yes @fastly/cli compute publish --accept-defaults --auto-yes || { echo 'Oops! Something went wrong deploying your app.. 🤬'; exit 1; }
        fi
        # compute app is up so we can update content
        npm run fastly:publish || { echo 'Oops! Something went wrong publishing your content.. 😭'; exit 1; }
        readarray -t lines < <(npx --yes @fastly/cli domain list --version=latest)
        IFS='   ' read -r -a array <<< "${lines[1]}"
        printf "\nWoohoo check out your site at https://${array[2]} 🪩 🛼 🎏\n\n"
    fi
else
    exit 1
fi
