# sfdx-lex-knowledge-edit
Salesforce DX project - Salesforce Lightning Knowledge component enables Community users to author or edit Knowledge articles in Lightning Community.

This functionality is missing in standard features as of Winter 19.


## Dev, Build and Test
We are using [Salesforce DX](https://developer.salesforce.com/platform/dx) to develop test and build this project. (DX CLI ned to be installed and connected to a DevHUB ORG) To prep the environment create a new scratch org and push code to get started follow these steps.

* Clone git repository
* Chenge directory to this new project local directory
* Create new Scratch ORG
* Push code to new Scratch ORG
* Open new ORG
* Update your Admin user to access Knowledge

```
# Connect current project DX tools to your devhub
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
Here are some DX commands found to be useful for this project

* View user details on Scratch ORG

```
$ sfdx force:user:display --targetusername klex
=== User Description
KEY           VALUE
────────────  ────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Access Token  <LONG SESSION ACESS TOKEN STRING>
Alias         klex
Id            005J0000006rrSeIAI
Instance Url  https://page-flow-3769-dev-ed.cs10.my.salesforce.com/
Login Url     https://CS10.salesforce.com
Org Id        00DJ0000003QfDJMA0
Profile Name  System Administrator
Username      test-1h05kz9imn2q@example.com

```

* Set User Password on Scratch ORG

```
$ sfdx force:user:password:generate --targetusername klex

Successfully set the password "**PASSWORD STRING**" for user test-1h05kz9imn2q@example.com.
``` 

## Description of Files and Directories


## Issues

Known issue with DX and Scratch org with Communities. Once new Community is created in scratch org DX cannot pull code changes anymore form the org. There is a metadata error as of Winter 19 thsi still a problem.

Not ideal workaround is to create 2 scratch orgs with code if we need to make updates to Knowledge configuration us one org for DEV - DO NOT ENABLE OR CREATE COmmunity in DEV. Use 2nd Scratch ORG to test component, create new community and page to host Lightning component
