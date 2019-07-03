# AutoSSL

Bulk of scripts to help secure your AWS apps with free SSL certificates

> :innocent: A :star: from you will make my day full of happiness :innocent:

## Table of contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Cloud integration](#cloud-integration)
   - [AWS](#aws)
4. [Contribution](#contribution)
5. [License](#license)

## Installation

## Usage

To generate free SSL certificate for your domain

```bash
autossl email@example.com example.com
```

For wildcard domains

```bash
autossl email@example.com example.com *.example.com *.tld.example.com
```

To automatically renew all certificates

```bash
autossl renew
```

## Cloud integration

Currently we only support AWS IAM

### AWS

We need to run this command once for configuring AWS cresdentials

```bash
autossl init-aws
```

To synchronize your certificate to AWS IAM

```bash
autossl sync iam
```

## Contribution

Everyone deserves free SSL certificates and free security. This tool was born for that purpose: Make it easier for people to get free SSL certificates. I really need your help to make this tool better.

If you want to help me, please fork this repositories, make your changes and give me a pull request.

Thank you :)

## License

These code are licensed under MIT License. You are free to use any parts of it.