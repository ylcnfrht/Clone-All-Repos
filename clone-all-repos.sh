ORGANIZATION_NAME=// without quotes
USER_NAME= // without quotes
GITHUB_TOKEN= // without quotes
for i in `curl -u $USER_NAME:$GITHUB_TOKEN -s "https://api.github.com/orgs/$ORGANIZATION_NAME/repos?per_page=200" |grep ssh_url | cut -d ':' -f 2-3|tr -d '",'`; do git clone $i; done
