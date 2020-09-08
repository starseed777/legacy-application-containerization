#!/bin/bash

sed -i -e "s/WIKI_HOST/$WIKI_HOST/g" config.yml
sed -i -e "s/WIKI_USER/$WIKI_USER/g" config.yml
sed -i -e "s/WIKI_PASSWORD/$WIKI_PASSWORD/g" config.yml
sed -i -e "s/WIKI_DB/$WIKI_DB/g" config.yml

exec "$@"

