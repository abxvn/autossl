# AutoSSL

Help you secure your applications with free SSL certificates

[![Cirle CI][cirle-ci-badge]][cirle-ci-url]
[![Tested Ubuntu version][ubuntu-badge]][ubuntu-url]
[![Tested Centos version][centos-badge]][centos-url]

> :innocent: A :star: from you will make my day full of happiness :innocent:

## Table of contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [Cloud integration](#cloud-integration)
   - [AWS ACM](#aws-acm)
   - [AWS IAM](#aws-iam)
   - [Google Cloud](#google-cloud)
4. [Automate renewal](#automate-renewal)
   - [Renewal without cloud](#renewal-without-cloud)
   - [Renewal with cloud](#renewal-with-cloud)
5. [Local servers integration](#local-servers-integration)
6. [Contribution](#contribution)
7. [License](#license)

## Installation

Using the installer

```bash
curl -s -L  https://raw.githubusercontent.com/tekuasia/autossl/master/bin/installer.sh | sudo bash
```

## Usage

All commands can be listed using `autossl help`:

![Screenshot][screenshot]

To generate free SSL certificate for a domain

```bash
autossl email@example.com example.com
```

To generate free SSL certificate for wildcard domains

```bash
autossl email@example.com example.com *.example.com *.tld.example.com
```

To automatically renew all certificates

```bash
autossl renew
```

## Cloud integration

Currently we only support AWS IAM

### AWS ACM

We need to prepare an AWS user with these permissions:

- acm:ImportCertificates
- acm:DescribeCertificate
- acm:ListCertificates

To synchronize your certificates to AWS ACM

```bash
autossl sync acm
```

### AWS IAM

We need to prepare an AWS user with these permissions:

- iam:UploadServerCertificate

To synchronize your certificates to AWS IAM

```bash
autossl sync iam
```

### Google Cloud

We need to enable cloud compute engine at [https://console.developers.google.com/apis/api/compute.googleapis.com](https://console.developers.google.com/apis/api/compute.googleapis.com)

To synchronize your certificates to AWS IAM

```bash
autossl sync gcloud
```

## Automate renewal

### Renewal without cloud

> We suggest you to setup cronjob for automatically check expiration of certifcates everyday (There could be other approaches)

```bash
crontab –e
```

Then add this line to make renewal automated everyday at 3:00

```
00 03 * * * autossl renew
```

### Renewal with cloud

> We suggest you to setup cronjob for automatically check expiration of certifcates everyday (There could be other approaches)

[Optional] Init AWS for the first time if you are using AWS to manage SSL

```bash
autossl init-aws
```

[Optional] Init Google Cloud for the first time if you are using Google Cloud to manage SSL

```bash
autossl init-gcloud
```

Open crontab editor

```bash
crontab –e
```

Then add this line to make renewal automated and renewed certificates synced to cloud provider automatically everyday at 3:00

```
00 03 * * * autossl sync <provider> "$(autossl renew -d)"
```

## Local servers integration

Here are some helpful references for local servers integration instruction:

For nginx: [https://gist.github.com/nrollr/9a39bb636a820fb97eec2ed85e473d38](https://gist.github.com/nrollr/9a39bb636a820fb97eec2ed85e473d38)

For Apache: [https://techmonger.github.io/50/certbot-apache-configuration/](https://techmonger.github.io/50/certbot-apache-configuration/)

## Contribution

Everyone deserves free SSL certificates and free security. This tool was born for that purpose: Make it easier for people to get free SSL certificates. I really need your help to make this tool better.

If you want to help me, please fork this repository, make your changes and give me a pull request.

Thank you :)

## License

These code are licensed under MIT License. You are free to use any parts of it.

_KEEP CALM AND CODE ON :beers:_

[cirle-ci-badge]: https://circleci.com/gh/tekuasia/autossl/tree/master.svg?style=shield
[cirle-ci-url]: https://circleci.com/gh/tekuasia/autossl/tree/master
[screenshot]: others/screenshot.png?raw=true
[ubuntu-badge]: https://img.shields.io/badge/ubuntu-18.04-green.svg
[ubuntu-url]: https://wiki.ubuntu.com/Releases
[centos-badge]: https://img.shields.io/badge/centos-7.0-green.svg
[centos-url]: https://www.centos.org/
