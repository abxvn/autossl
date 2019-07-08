# AutoSSL

Bulk of scripts to help secure your AWS apps with free SSL certificates

> :innocent: A :star: from you will make my day full of happiness :innocent:

## Table of contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Cloud integration](#cloud-integration)
   - [AWS ACM](#aws-acm)
   - [AWS IAM](#aws-iam)
   - [Google Cloud](#google-cloud)
4. [Contribution](#contribution)
5. [License](#license)

## Installation

Using the installer

```bash
curl -s -L  https://raw.githubusercontent.com/tekuasia/autossl/master/bin/installer.sh | sudo bash
```

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

### AWS ACM

We need to prepare an AWS user with these permissions:

- acm:ImportCertificates
- acm:DescribeCertificate
- acm:ListCertificates

To synchronize your certificates to AWS IAM

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

## Contribution

Everyone deserves free SSL certificates and free security. This tool was born for that purpose: Make it easier for people to get free SSL certificates. I really need your help to make this tool better.

If you want to help me, please fork this repositories, make your changes and give me a pull request.

Thank you :)

## License

These code are licensed under MIT License. You are free to use any parts of it.