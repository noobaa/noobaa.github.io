<div id="top" />
<link rel="shortcut icon" type="image/x-icon" href="noobaa_icon.png">
<img src="noobaa_logo.png" width="200" />

----

### ⚠️ WARNING - WORK IN PROGRESS

#### This project is still not complete ...

Please refer to the current docs location in [noobaa-core](https://github.com/noobaa/noobaa-core) and [noobaa-operator](https://github.com/noobaa/noobaa-operator) repos.

----

NooBaa is a highly customizable and dynamic data gateway for objects, providing data services such as caching, tiering, mirroring, dedup, encryption, compression,  over any storage resource including S3, GCS, Azure Blob, Filesystems, etc.

NooBaa simplifies data for admins by connecting to any of the storage silos from private or public clouds, and providing a single scalable data services, using the same S3 API and management tools. NooBaa allows full control over data placement, letting you place data based on security, strategy and cost considerations, per user/application.

----

## User Guide

- [noobaa CLI](noobaa-cli.md) 
- [noobaa install](noobaa-install.md)
- [noobaa status](noobaa-status.md)
- [Setup default backing store](noobaa-default-backing-store.md)
- [Connect applications with ObjectBucketClaims](noobaa-obc.md)
- [Connect applications with COSI (pre-alpha)](noobaa-cosi.md)

## Documentation

- [S3 compatibility](noobaa-s3-compat.md)
- [Setup routes, SSL, certificates, etc]()
- [Running on minikube]()
- [NooBaa CRD](noobaa-crd.md) - The basic CRD to deploy a NooBaa system.
- [BackingStore CRD](noobaa-backing-store.md) - Connection to cloud or local storage to use in policies.
- [BucketClass CRD](noobaa-bucket-class.md)  - Policies applied to a class of buckets.
- [Youtube presentations]()
- [Youtube Demos]()

## Community

- [Slack - channel](https://www.noobaa.io/community)
- [Github - discussions](https://github.com/noobaa/noobaa-core/discussions)
- [Email - google group](https://groups.google.com/g/noobaa)
- [Youtube - community meeting recordings](https://www.youtube.com/playlist?list=PLsawh7cxjeFDiUsuOGncF_KZImQCgj5U-)

## Developers

- [How to Contribute](/CONTRIBUTING.md)  
- [Developers Guide](https://github.com/noobaa/noobaa-core/wiki/Developers-Guide) 

## License

Apache License 2.0, see [LICENSE](/LICENSE)
