[![Build Status](https://travis-ci.org/webhat/podiocrm.svg)](https://travis-ci.org/webhat/podiocrm)
[![Gem Version](https://badge.fury.io/rb/podiocrm.svg)](http://badge.fury.io/rb/podiocrm)

This gem creates a class which mirrors the CRM created on Podio.

[Podio](https://github.com/podio/podio-rb) requires a client_id and secret for access, these can be set using the environment variables: `PODIO_CID` and `PODIO_SECRET`

Currently only works with username/password authentication, set the environment variables: `PODIO_USERNAME` and `PODIO_PASSWORD`

Installation
============

```
rails g podio_crm:install
```

Generate Model and Migration
============================

```
rails g podio_crm:model <NAME> <APP_ID> <MODEL IT BELONGS_TO>
```

Expert Use
==========

This is the expert mode, this only generates a migration.

```
rails g podio_crm:podio_crm <NAME> <APP_ID> <FIELD_ID>:<TYPE> <MODEL>:belongs_to
```
