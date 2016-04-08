# :baseball: pitcher :baseball:

This gem is a library to interact with the CONTENTdm Catcher web service. You can use pitcher to do bulk updating
of metadata by using a CSV.

## Installation

    $ gem install pitcher

## Usage

    pitcher -csv ~/pitcher/items.csv -settings ~/pitcher/settings.yml

On the command line you provide a csv file formatted like this:

```csv
cdmnumber,field,value,collection,action
0,rights,InC,catchter,edit
1,rights,InC,catchter,edit
2,rights,InC,catchter,edit
```
and a settings file with your CONTENTdm credentials:

```yaml
---
cdmurl: http://contentdmurl:81
username: myusername
password: mypassword
license:  contentdm-license-number
```
