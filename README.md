# Dolos

<p align="center">
  <a href="https://dolos.ugent.be/" target="_blank">
    <img width="180" src="https://raw.githubusercontent.com/dodona-edu/dolos/main/docs/public/images/demo-exercise-graph-circle.png" alt="A plagiarism graph showing a lot of plagiarism.">
  </a>
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/@dodona/dolos">
    <img src="https://img.shields.io/npm/v/@dodona/dolos.svg" alt="Current version of the npm package">
  </a>
  <a href="https://doi.org/10.1111/jcal.12662">
    <img src="https://img.shields.io/badge/DOI-10.1111%2Fjcal.12662-28A745.svg?link=https%3A%2F%2Fdoi.org%2F10.1111%2Fjcal.12662" alt="DOI of the latest journal article about Dolos">
  </a>
  <a href="https://github.com/dodona-edu/dolos/blob/main/LICENSE">
    <img alt="MIT source code license" src="https://img.shields.io/github/license/dodona-edu/dolos">
  </a>
</p>

Dolos is a source code plagiarism detection tool for programming exercises.
Dolos helps teachers in discovering students sharing solutions, even if they are
modified. By providing interactive visualizations, Dolos can also be used to
sensitize students to prevent plagiarism.

Dolos aims to be:

- **Easy to use** by offering a web app with an intuitive user interface
- **Flexible** to support many programming languages
- **Powerful** by using state-of-the-art algorithms to help you discover plagiarism

Dolos is a [web app](https://dolos.ugent.be) that analyses source code files for similarities between them.
In addition, it offers a command-line interface to run an analysis locally, showing the interactive user interface in your browser by launching a local webserver.
The analysis results are available in machine readable CSV files and Dolos can be integrated as a [JavaScript library](https://www.npmjs.com/package/@dodona/dolos-lib) in other applications empowering users to integrate plagiarism detection in their personal workflow.

Try Dolos on <https://dolos.ugent.be>.

## Installation

If you want to run Dolos locally instead of using [the web app](https://dolos.ugent.be), you can install Dolos your system using npm:
```shell
npm install -g @dodona/dolos
```

See [the installation instructions on our website](https://dolos.ugent.be/guide/installation.html) for more complete instructions.

## CLI Usage

Dolos can be launched using the command-line interface, but it is able to
show the results in your browser.

Launch Dolos using the following command in your terminal:
```shell
dolos run -f web path/to/your/files/*
```
The above command will launch a web interface with the analysis results at <http://localhost:3000>.

[More elaborate instructions on how to use Dolos](https://dolos.ugent.be/guide/running.html).

## Documentation

Visit our web page at <https://dolos.ugent.be>.

## Building and developing

If you want to build Dolos from source you will need
[yarn (v1)](https://classic.yarnpkg.com/en/docs/install) because this project
uses [yarn workspaces](https://classic.yarnpkg.com/en/docs/workspaces/) to
combine the dependencies of each component (core, lib, cli, web and docs).

You only need to run install the dependencies once in the repository root by
running `yarn install`. This will install all dependencies and link them in each
project's `node_modules`. You should **not** run `yarn install` in each
project's directory separately.

This will also link the `dist` folder from the core, lib and web projects as their versions match in the `package.json` file.
This allows you to simultaneously develop the CLI, lib and the web project together.

Each component has its own build instructions in its own directory.

## Components

- [CLI](https://github.com/dodona-edu/dolos/tree/main/cli): the command-line interface
- [Core](https://github.com/dodona-edu/dolos/tree/main/core): the Javascript library with only the core algorithms
- [Parsers](https://github.com/dodona-edu/dolos/tree/main/parsers): the tree-sitter parsers vendored by Dolos
- [Lib](https://github.com/dodona-edu/dolos/tree/main/lib): the Node.js library which can parse and analyze files
- [Web](https://github.com/dodona-edu/dolos/tree/main/web): the graphical user interface in your browser which can be launched using the CLI
- [Docs](https://github.com/dodona-edu/dolos/tree/main/docs): the source code of <https://dolos.ugent.be>
- [API](https://github.com/dodona-edu/dolos/tree/main/api): the API server running the Dolos web app at <https://dolos.ugent.be/server>

## Who made this software?

Dolos is an active research project by [Team Dodona](https://dodona.ugent.be/en/about/) at Ghent University. If you use this software for your research, please cite:

- Maertens et. al. (2022) J. Computer Assisted Learning [doi:10.1111/jcal.12662](https://doi.org/10.1111/jcal.12662)
