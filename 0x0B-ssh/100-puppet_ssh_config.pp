#!/usr/bin/env bash
# Using puppet to connect without password

file { 'ect/ssh/ssh_config':
	ensure => present,

content =>"
	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	passwordAuthentication no",
}
