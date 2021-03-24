<div id="top" />
<link rel="shortcut icon" type="image/x-icon" href="noobaa_icon.png">
<img src="noobaa_logo.png" width="200" />

----
# NooBaa Docs

### ⚠️ WARNING - WORK IN PROGRESS

#### This project is still not complete ...

Please refer to the current docs location in [noobaa-core](https://github.com/noobaa/noobaa-core) and [noobaa-operator](https://github.com/noobaa/noobaa-operator) repos.

----

NooBaa is a highly customizable and dynamic data gateway for objects, providing data services such as caching, tiering, mirroring, dedup, encryption, compression,  over any storage resource including S3, GCS, Azure Blob, Filesystems, etc.

NooBaa simplifies data for admins by connecting to any of the storage silos from private or public clouds, and providing a single scalable data services, using the same S3 API and management tools. NooBaa allows full control over data placement, letting you place data based on security, strategy and cost considerations, per user/application.

----

## User Guide

- [noobaa-operator CLI](noobaa-operator-cli.md) 
- [noobaa install - Installing the operator and system on kubernetes](noobaa-install.md)
- [noobaa status - Checking the operator and system status](noobaa-status.md)
- [noobaa backingstore - Setting default and additional backing stores](noobaa-backing-store.md)
- [noobaa bucketclass - Setting default and additional bucket classes](noobaa-bucket-class.md)
- [Create buckets and connect applications with ObjectBucketClaims](noobaa-obc.md)
- [Create buckets and connect applications with COSI (pre-alpha)](noobaa-cosi.md)
- [noobaa-core CLI](noobaa-core-cli.md)
- [noobaa-core nsfs](noobaa-core-nsfs.md)

## Advanced Documentation

- [S3 compatibility](noobaa-s3-compat.md)
- [Setup routes, SSL, certificates, etc]()
- [Running on minikube]()
- [NooBaa CRD](noobaa-crd.md) - The basic CRD to deploy a NooBaa system.
- [BackingStore CRD](noobaa-backing-store.md) - Connection to cloud or local storage to use in policies.
- [BucketClass CRD](noobaa-bucket-class.md) - Policies applied to a class of buckets.

## Videos

- [Youtube Presentations](https://www.youtube.com/playlist?list=PLsawh7cxjeFC1d7eae5hXlRl9QS0G-H2N)
- [Youtube Demos](https://www.youtube.com/playlist?list=PLsawh7cxjeFAmFE9_oLg-DYkEaZTi_ZaF)

## Support

- [Github Issues](https://github.com/noobaa/noobaa-core/issues)

## Community

- [Slack - join the channel](https://www.noobaa.io/community)
- [Github - post a discussion (new)](https://github.com/noobaa/noobaa-core/discussions)
- [Email - post to google group (new)](https://groups.google.com/g/noobaa)
- [Public Calendar - follow the meetings schedule](https://calendar.google.com/calendar/u/1?cid=aGFvbmJiMWszb2dib2phbXIxa2YwdGpldWdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ)
- [Meeting doc](https://docs.google.com/document/d/1VgiNOuLW92KcuJ0sGnXRVfT9oeImwbzbpEb4QkCEvDY/edit?usp=sharing)
- [Youtube recordings - watch the meetings you missed](https://www.youtube.com/playlist?list=PLsawh7cxjeFDiUsuOGncF_KZImQCgj5U-)

## Developers

- [How to Contribute](/CONTRIBUTING.md)  
- [Developers Guide](https://github.com/noobaa/noobaa-core/wiki/Developers-Guide) 

## License

Apache License 2.0, see [LICENSE](/LICENSE)
