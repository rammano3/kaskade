kaskade
=======

This is a launch control program capable of launching our stack.

## Setup

1. Begin inside the local directory for this (kaskade) repo
1. Prepare to clone all available services, as identified in [`config.json`](config.json)

  ```sh
  $ npm install
  ```

1. Clone all available services (from your personal forks). The various service repos are cloned **into this (kaskade) repo's parent directory** (they are not submodules at this time)

  ```sh
  $ node klone <your github username>
  ```

1. Install dependencies and build services

  ```sh
  $ ./build.sh
  ```

1. Modify the [`run`](./run) file to include a check on your `$USER` name and export `KASKADE_FILTER` with a comma delimited list of services to **exclude** running when kaskade is started from `./run`

## Running

```sh
# To Test The System
$ ./kaskade --test

# To Run All Services With Debug
$ ./kaskade --debug

# To Run All Services Silently
$ ./kaskade

# To Run With Filters, Based On $USER
$ ./run
```
