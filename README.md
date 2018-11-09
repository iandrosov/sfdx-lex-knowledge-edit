# sfdx-lex-knowledge-edit
Salesforce DX project - Salesforce Lightning Knowledge component enables Community users to author or edit articles in Lightning Community.


## Dev, Build and Test
We are using [Salesforce DX](https://developer.salesforce.com/platform/dx) to develop test and build this project. (DX CLI ned to be installed and connected to a DevHUB ORG) To prep the environment create a new scratch org and push code to get started follow tehse steps.

* Clone git repository
* Chenge directory to this new project local directory
* Create new Scratch ORG
* Push code to new SCratch ORG
* Open new ORG

```
# Connectcurrnet project DX tools to your devhub
$ sfdx force:config:set defaultdevhubusername=<USER NAME>

# List all conecetd orgs
$ sfdx force:org:list

# Create nerw Scratch ORG with any alias, here -a klex
$ sfdx force:org:create -f config/project-scratch-def.json -a klex

# Once new org is created Open new Scratch org
$ sfdx force:org:open -u klex

# Push code to new org
$ sfdx force:source:push -u klex
```

Once all tehse steps are completed project is ready to go get started with development.

This project includes all Lightning component code and basic Knowledge set up for the org. We will need a Comunity to test with.

## Resources


## Description of Files and Directories


## Issues

Known issue with DX and Scratch org with Communities. Once new Community is created in scratch org DX cannot pull code changes anymore form the org. There is a metadata error as of Winter 19 thsi still a problem.

Not ideal workaround is to create 2 scratch orgs with code if we need to make updates to Knowledge configuration us one org for DEV - DO NOT ENABLE OR CREATE COmmunity in DEV. Use 2nd Scratch ORG to test component, create new community and page to host Lightning component
