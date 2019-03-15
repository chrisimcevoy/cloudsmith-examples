# Cloudsmith Examples

[![CircleCI](https://circleci.com/gh/cloudsmith-io/cloudsmith-examples.svg?style=svg)](https://circleci.com/gh/cloudsmith-io/cloudsmith-examples)

> Be Awesome. [Automate Everything](https://corp.cloudsmith.io/tao/).

This repository provides example projects for most of the [packaging formats supported by Cloudsmith](https://cloudsmith.io/#package-formats). It demonstrates how to automate build and upload for each package format using both the [Cloudsmith CLI](https://github.com/cloudsmith-io/cloudsmith-cli) and native tooling (where available).

The artifacts generated by this repository will be uploaded automatically to the public [Cloudsmith examples repository](https://cloudsmith.io/~cloudsmith/repos/examples) by CI.

## Usage

### Dependencies

To run the examples locally you'll need to install a few dependencies:

- [Docker](https://www.docker.com/get-started)
- [CircleCI CLI](https://circleci.com/docs/2.0/local-cli/)

You'll need to create a [Cloudsmith repository](https://cloudsmith.io/repo/create/) to store the generated artifacts.

### Configuration

The examples are configured using environment variables. You can set these manually in your terminal:

```bash
$ export CLOUDSMITH_API_KEY=YOUR_API_KEY_HERE
$ export CLOUDSMITH_REPOSITORY=your-name-or-org/your-repository
```

Or use a tool like [forego](https://github.com/ddollar/forego) (`forego run ...`) to load them from a `.env` file in the root of the examples repository:

```bash
CLOUDSMITH_API_KEY=YOUR_API_KEY_HERE
CLOUDSMITH_REPOSITORY=your-name-or-org/your-repository
```

### Running the examples

To run a single example invoke the `run-example` script, passing the name of the example:

```bash
$ ./bin/run-example python-native
```

To run all examples use the `run-examples` script, passing no arguments:

```bash
$ ./bin/run-examples
```

## Structure

All example projects live in the [examples/](https://github.com/cloudsmith-io/cloudsmith-examples/tree/master/examples) directory, one per folder.

Inside each example directory is a consistent structure:

- `src/`: Source code for the example package in each format.
- `prepare.sh`: A script which performs any setup or initialisation required to build and publish the example package.
- `build.sh`: A script which builds the example package into an artifact that can be published to Cloudsmith.
- `deploy.sh`: A script that publishes the built artifact(s) to Cloudsmith.

The scripts `prepare.sh` and `deploy.sh` are optional. If not present they will be skipped.

Example packages are purposefully as minimal as possible to show the minimum configuration required to integrate with Cloudsmith.

## EOF

This quality product was brought to you by [Cloudsmith](https://cloudsmith.io) and the [fine folks who have contributed](https://github.com/cloudsmith-io/cloudsmith-examples/blob/master/CONTRIBUTORS.md).
