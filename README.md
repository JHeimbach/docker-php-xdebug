# Basic PHP (Dev) Docker container
Extends [php-basic](https://github.com/JHeimbach/php-basic) and adds xdebug


## Settings
### PHP version
to use the available PHP-Version ins php-basic, you can use the build `ARG` `CONTAINER_VERSION` to point to a specific version

### Env_vars
Use these Variables for the following Settings:

|ENV_VAR|Setting|Default Value|
|---|---|---|
|`XDEBUG_DEFAULT_ENABLE`|`xdebug.default_enable`|On|
|`XDEBUG_CLI_ENABLE`|`xdebug.cli_enable`|Off|
|`XDEBUG_REMOTE_ENABLE`|`xdebug.remote_enable`|On|
|`XDEBUG_REMOTE_CONNECT_BACK`|`xdebug.remote_connect_back`|Off|
|`XDEBUG_REMOTE_AUTOSTART`|`xdebug.remote_autostart`|On|
|`XDEBUG_REMOTE_LOG`|`xdebug.remote_log`|/proc/self/fd/2|
|`XDEBUG_IDE_KEY`|`xdebug.idekey`|PHPSTORM|

*Note: The setting xebug.remote_host is automatically pointing 172.17.0.1, the default docker host ip. if you need to change this, add a enviroment setting with `XDEBUG_CONFIG: "remote_host=<your.ip.adress>"`*

### own xdebug.ini
There is also the build `ARG` `XDEBUG_INI` to point to completely different xdebug.ini

To use the Env_vars and a own xdebug.ini, just put `<<VAR_NAME>>` in the correct place and it will be automatically replaced
