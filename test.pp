#!/bin/env pp
# Test

## Test of setting variables:
<{= var value}><{= dash-var dash value}>
	var = "<{$ var}>"
	dash-var = "<{$ dash-var}>"
	dash_var = "<{$ dash_var}>"

## Command executing

`{uname} = <{! uname}>
`{echo `{echo fuck}} = "<{! echo <{! echo fuck}>}>"

## Preprocessing text with other commands

<{| rc}>
	echo `{echo This shit works with any command and even rc}
	date
<{#|}>

<{| sh}>
	echo `echo Even with sh`
	echo be the way you can use variables in other programs: $var
	ls
<{#|}>

<{| sed s/gay/homosexual/g}>
Why are you gay?
<{#|}>


