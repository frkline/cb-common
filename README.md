# cb-common

Basic server building block configuring time and users.

- SCM: https://github.com/frkline/cb-common
- Build: 

For more information, visit [cb-common](https://github.com/frkline/cb-common)

## Cookbook Features

- Sets timezone to UTC
- Installs NTP as a service 

## Configure the Cookbook

0. [Configure Your Environment](https://github.com/frkline/dev-setup/#configure-your-environment)
1. Clone the Repository  
```
> git clone --recursive git@github.com:frkline/cb-common.git
```  
2. Initialize the Cookbook's Dependencies  
```
> cd cb-common/cookbook
> bundle install
```

Note: Upon update of the Gemfile, update the Bundle:
```
> cd cookbook
> bundle install
```

## Usage

Prerequisite: [Configure the Cookbook](#configure-the-cookbook)

**Start a CentOS 6.5 VirtualBox VM**
```
> cd cookbook
> bundle exec vagrant up
```

**Log in Once VM Started**
```
> cd cookbook
> bundle exec vagrant ssh
```

## Cookbook Development

Prerequisite: [Configure the Cookbook](#configure-the-cookbook)

**Start Guard**  
Guard will test, analyze, and lint the cookbook as changes are made by monitoring
your local directory for changes. It will run ChefSpec, Foodcritic, and ServerSpec tests
as required. For more information, see: https://github.com/test-kitchen/guard-kitchen.
```
> cd cookbook
> bundle exec guard start
```

**Run ChefSpec**  
ChefSpec is a unit testing framework for testing Chef cookbooks. ChefSpec makes it easy to write examples and get fast feedback on cookbook changes without the need for virtual machines or cloud servers. For more information, see: https://github.com/sethvargo/chefspec.
```
> cd cookbook
> bundle exec rspec
```

**Run Foodcritic**  
Foodcritic is a lint tool for Opscode Chef cookbooks. Along with the default checks, we include community-standard checks from [Etsy](https://github.com/etsy/foodcritic-rules) as well as [CustomInk](https://github.com/customink-webops/foodcritic-rules) For more information, see: http://acrmp.github.io/foodcritic/.
```
> cd cookbook
> bundle exec foodcritic -I foodcritic/*
```

**Run Tests with Kitchen**
Kitchen is an integration tool for developing and testing infrastructure code and software on isolated target platforms. Used alongside ServerSpec, we can write RSpec tests for checking if servers will be configured properly. For more information, see: https://github.com/test-kitchen/test-kitchen and http://serverspec.org/.
```
> cd cookbook
> bundle exec kitchen verify
```

