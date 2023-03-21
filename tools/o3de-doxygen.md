# C++ API Reference Generation

The Open 3D Engine (O3DE) API Reference is generated using [Doxygen](https://www.doxygen.nl/). With the help of the API Reference Generation (`o3de-doxygen`) scripts to automate the process, an API reference is generated for all frameworks and Gems in the [`o3de` repository](https://github.com/o3de/o3de.org) by default.  You may also configure the scripts to [generate API references for Gems in other O3DE repositories]((#generating-for-gems-outside-of-o3de)).


## Requirements

* Linux machine or Windows Subsystem for Linux (WSL)
* Clone of the `o3de` repository in your machine
* Clone of the `o3de.org` repository in your machine
* [Doxygen](https://www.doxygen.nl/manual/install.html) installation

## Setting up 

### Download the`o3de-doxygen` scripts

1. Clone of download the  [`sig-docs-community` repository](https://github.com/o3de/sig-docs-community/). 
2. In the `tools` directory, find the `o3de-doxygen` scripts.


### Install rust commands

The o3de-doxygen scripts use some efficient Rust commands for processing the source code in `o3de`. You must install Rust and the `fd-find` cargo to run the scripts properly. 


1. Install Rust by using [rustup](https://rustup.rs/), or by running the following command in your Linux machine: 

    ```shell
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    ```

1. Add rust to your environment variables.

    ```shell
    source "$HOME/.cargo/env"
    ```

1. Install the `fd-find` cargo, which is a file searching tool:

    ```shell
    cargo install fd-find
    ```



### Clean up `o3de` repo

The C++ API reference generation scripts runs on the `o3de` clone in your machine. Therefore, you must ensure that your clone is clean and has the latest changes, before you generate the API.


1. In your local `o3de` clone, `git checkout` the latest updates in the `development` branch, or in the case of a major O3DE release, the `stabilization` branch. 

    ```shell
    git fetch --all
    git checkout upstream/<branch> 
    ```
   -  **upstream**: Set to track the source repo, [`https://github.com/o3de/o3de.git`](https://github.com/o3de/o3de.git)

1. Run  `git clean` in your local O3DE clone.



### Prepare scripts

1. In `o3de-gem-apis.sh`, set `o3de_path=` to the path to `o3de` in your local machine. For example, `/home/o3de`.
2. Similarly, in `o3de-frameowrk-apis.sh`, set `o3de_path=` to the path to `o3de` in your local machine. For example, `/home/o3de`.
3. If this is your first time running the script, you may need to enable permissions to execute the program. In the `o3de-doxygen` directory, run the following: 

```shell
cd <path-to>/o3de-doxygen
chmod +x *.sh
```

## Generating

The following scripts generate the frameworks and Gems APIs. 

### Frameworks API

1. In the `o3de-doxygen` directory, run the script:

    ```shell
    ./o3de-framework-apis.sh
    ```

1. This generates the following files: 
    1. build/frameworks/*
    2. build/framework_index.md

### Gems API

*Note: Ensure that you've installed the `fd-find` cargo.*

1. In the `o3de-doxygen` directory, run the script:

    ```shell
    ./o3de-gem-apis.sh
    ```

1. This generates the following files: 
    - build/gems/*
    - build/gems_index.md



## Publishing

After generating the C++ API reference and supplemental files, it's time to publish them on the website. You must copy the generated API reference into to the `o3de.org` repository and create a pull request. 


1. Copy the generated files from `o3de-doxygen/build` to `o3de.org` by running the following four commands:

    ```shell
    # index files
    cp <path-to>/o3de-doxygen/build/framework_index.md  <path-to>/o3de.org/content/docs/api/frameworks/_index.md
    cp <path-to>/o3de-doxygen/build/gems_index.md  <path-to>/o3de.org/content/docs/api/gems/_index.md

    # API reference
    cp -r <path-to>/o3de-doxygen/build/frameworks  <path-to>/o3de.org/static/docs/api
    cp -r <path-to>/o3de-doxygen/build/gems  <path-to>/o3de.org/static/docs/api
    ```

2. This moves the generated files into the following directories of the `o3de.org` repository: 
   - content/docs/api
     - frameworks/index.md
     - gems/index.md
   - static/docs/api
     - frameworks/*
     - gems/*

## Generating for Gems outside of `o3de`

In some cases, the O3DE API Reference must include the API for code that lives outside of the `o3de` repository. This is typically decided by O3DE members and the Release Special Interest Group (SIG). For example, a major O3DE release may include new Gems that live in the `o3de-extras` repository.

To generate API References for Gems outside of `o3de`: 

1. Move the Gem's directory into the `Gems` directory of your local `o3de` clone.
2. Rerun the [Generating](#generating) step. 

