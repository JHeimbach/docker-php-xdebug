# Basic PHP (Dev) Docker container
Extends [php-basic](https://github.com/JHeimbach/php-basic) and adds xdebug


## Settings
### Env_vars
Use these Variables for the following Settings:
 |ENV_VAR|Setting|
 |---|---|
 |`XDEBUG_DEFAULT_ENABLE`|`xdebug.default_enable`|
 |`XDEBUG_DEFAULT_ENABLE`|`xdebug.default_enable`|
 |`XDEBUG_CLI_ENABLE`|`xdebug.cli_enable`|
 |`XDEBUG_REMOTE_ENABLE`|`xdebug.remote_enable`|
 |`XDEBUG_REMOTE_CONNECT_BACK`|`xdebug.remote_connect_back`|
 |`XDEBUG_REMOTE_AUTOSTART`|`xdebug.remote_autostart`|
 |`XDEBUG_REMOTE_LOG`|`xdebug.remote_log`|
 |`XDEBUG_IDE_KEY`|`xdebug.idekey`|

*Note: The setting xebug.remote_host is automatically pointing to the host ip* 

### own xdebug.ini
There is also the build `ARG` `XDEBUG_INI` to point to completely different xdebug.ini

To use the Env_vars and a own xdebug.ini, just put `<<VAR_NAME>>` in the correct place and it will be automatically replaced