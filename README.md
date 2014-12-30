kaskade
=======

This is a launch control program capable of launching our stack.

## Setup

1. Begin inisde the local directory for this (kaskade) repo
1. Prepare to clone all available services, as identified in [`config.json`](config.json)

  ```sh
  $ npm install
  ```

1. Clone all available services (from your personal forks). The various service repos are cloned into this (kaskade) repo's parent directory (they are not submodules at this time)

  ```sh
  $ node klone <your github username>
  ```

1. NPM Install all service dependencies

  ```sh
  $ chmod +x npmi.sh
  $ ./npmi.sh
  ```
