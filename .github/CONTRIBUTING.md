# Contributing to Notes

Welcome to Notes! We appreciate your interest in contributing to our project. This document outlines the guidelines and steps for making contributions.

## Table of Contents

1. [Code of Conduct](#code-of-conduct)

2. [Getting Started](#getting-started)

   - [Fork the Repository](#fork-the-repository)

   - [Clone the Repository](#clone-the-repository)

   - [Set Up Development Environment](#set-up-development-environment)

3. [Making Changes](#making-changes)

   - [Creating a New Note](#creating-a-new-note)

   - [Editing an Existing Note](#editing-an-existing-note)

   - [Submitting a Pull Request](#submitting-a-pull-request)

4. [Review Process](#review-process)

5. [Code Style](#code-style)

6. [Issue Tracker](#issue-tracker)

7. [Community and Communication](#community-and-communication)

8. [License](#license)

## Code of Conduct

Please review our [Code of Conduct](CODE_OF_CONDUCT.md) before contributing. We expect all contributors to follow it in all project spaces.

## Getting Started

### Fork the Repository

Fork the Notes repository by clicking the "Fork" button at the top right of this page. This creates a copy of the repository in your GitHub account.

### Clone the Repository

Clone your forked repository to your local machine using the following command:

```bash
git clone https://github.com/ImGabreuw/notes
```

### Set Up Development Environment

1. Install the Docsify CLI:

   ```bash
   $ npm i docsify-cli -g
   ```

2. Start the website:

   ```bash
   $ cd ./notes
   $ docsify init .
   ```

Now you're ready to make changes to the project.

## Making Changes

### Creating a New Note

To create a new note, follow these steps:

1. Create a new Markdown (`.md`) file in the relevant category folder.

2. Write your note using Markdown syntax. You can also use Mermaid and LaTex syntax depending on your needs. Please ensure your note is concise and well-formatted.

### Editing an Existing Note

To edit an existing note, follow these steps:

1. Locate the relevant Markdown (`.md`) file in the category folder.

2. Make the necessary changes to the content.

### Submitting a Pull Request

1. Commit your changes to your local repository:

   ```bash
   git add .
   git commit -m "your username: descriptive commit message"
   ```

2. Push your changes to your forked repository:

   ```bash
   git push origin master
   ```

3. Go to your forked repository on GitHub and click the "New Pull Request" button.

4. Review your changes and click "Create Pull Request."

## Review Process

All pull requests will be reviewed by me ([ImGabreuw](https://github.com/ImGabreuw)). I may ask for additional changes or provide feedback before merging your contribution.

## Code Style

Please follow the coding style guidelines specified in [CODE_STYLE.md](CODE_STYLE.md) while making changes.

## Issue Tracker

If you encounter any issues or have suggestions for improvements, please check the [Issue Tracker](https://github.com/ImGabreuw/notes/issues) to see if it's already reported. If not, feel free to open a new issue.

## Community and Communication

Feel free to use the [Github Discussions](https://github.com/ImGabreuw/notes/discussions/) section to discuss ideas, ask questions, and collaborate with other contributors.

## License

By contributing to Notes, you agree that your contributions will be licensed under the [GNU General Public License v3.0](LICENSE).
