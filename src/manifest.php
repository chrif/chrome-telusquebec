<?php

if (!$version = getenv('VERSION')) {
	throw new Exception('VERSION is not defined');
}

echo <<<EOF
{
  "manifest_version": 2,
  "name": "__MSG_appName__",
  "description": "__MSG_appDesc__",
  "default_locale": "en",
  "version": "${version}",
  "icons": {
    "16": "icons/icon-16.png",
    "48": "icons/icon-48.png",
    "128": "icons/icon-128.png"
  },
  "content_scripts": [
    {
      "matches": [
        "https://www.telusquebec.com/fr/espace-client/internet*",
        "https://www.telusquebec.com/en/espace-client/internet*"
      ],
      "js": ["daily-average.js"]
    }
  ]
}

EOF;
