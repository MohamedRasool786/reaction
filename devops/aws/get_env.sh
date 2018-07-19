#! /bin/bash

# declare $config to be an associative array
declare -A config

# read from stdin
while IFS='=' read -r key val ; do 
    config["$key"]="$val"
    echo $key=$val
done <  <(sed -E -e '/^\[/d
                     s/#.*//
                     s/[[:blank:]]+$|^[[:blank:]]+//g' - )

export REACTION_AUTH=${config[REACTION_AUTH]}
export REACTION_EMAIL=${config[REACTION_EMAIL]}
export REACTION_USER=${config[REACTION_USER]}
export ROOT_DOMAIN=${config[ROOT_DOMAIN]}
export MONGO_URL_HOST=${config[MONGO_URL_HOST]}
export MONGO_URL_PORT=${config[MONGO_URL_PORT]}
export MONGO_URL_QUERY_STRING=${config[MONGO_URL_QUERY_STRING]}
export MONGODB_USERNAME=${config[MONGODB_USERNAME]}
export MONGODB_PASSWORD=${config[MONGODB_PASSWORD]}
export MONGO_OPLOG_URL=${config[MONGO_OPLOG_URL]}
export CLOUDFRONT_URL=${config[CLOUDFRONT_URL]}
export SKIP_FIXTURES=${config[SKIP_FIXTURES]}
export METEOR_SETTINGS_KADIRA_APPID=${config[METEOR_SETTINGS_KADIRA_APPID]}
export METEOR_SETTINGS_KADIRA_APPSECRET=${config[METEOR_SETTINGS_KADIRA_APPSECRET]}
export METEOR_SETTINGS_KADIRA_OPTIONS_ENDPOINT=${config[METEOR_SETTINGS_KADIRA_OPTIONS_ENDPOINT]}
export METEOR_SETTINGS_CDNPREFIX=${config[METEOR_SETTINGS_CDNPREFIX]}
