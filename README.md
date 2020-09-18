<div id="top" />
<link rel="shortcut icon" type="image/x-icon" href="noobaa_icon.png">
<img src="noobaa_logo.png" width="200" />

----

NooBaa is a highly customizable and dynamic data gateway for Kubernetes (S3-compatible). 

Providing data services such as namespace caching, merging and  tiering, mirroring, and spread placement policies, over any storage resource that allows GET/PUT including S3, GCS, Azure Blob, Filesystems, etc.

NooBaa simplifies data for admins by connecting to any of the storage silos from private or public clouds, and providing a single scalable data service, using the same S3 API and management tools. NooBaa allows full control over data placement, letting you place data based on security, strategy and cost considerations, in the granularity of an application.

----


## Deploy to Kubernetes

To deploy NooBaa, we recommend using NooBaa CLI - follow the instructions:

https://github.com/noobaa/noobaa-operator#noobaa-operator 

Once NooBaa CLI installed, simply Install the operator and noobaa with: 
```
noobaa install
```
The install output includes S3 service endpoint and credentials, as well as web management console address with credentials.

Getting this information is always available with: 
```
noobaa status
```

Remove NooBaa deployment can be done with: 
```
noobaa uninstall
```

For more actions use:
```
noobaa help
```

## Video Tutorial

(Click the image or the link to open the [noobaa install on YouTube](https://www.youtube.com/watch?v=QXr2pSL3AVY))

[![YOUTUBE](https://img.youtube.com/vi/QXr2pSL3AVY/0.jpg)](https://www.youtube.com/watch?v=QXr2pSL3AVY)


## Documentation

- [Website](https://www.noobaa.io)
- [Knowledge Base](https://noobaa.desk.com) - articles for specific user tasks
- [Wiki](https://github.com/noobaa/noobaa-core/wiki) - articles for hackers

## Communicate

- support@noobaa.com
- [Subscribe to newsletter](https://www.noobaa.io/community)

## Contribute

- [How to Contribute](/CONTRIBUTING.md)  
- [Developers Guide](https://github.com/noobaa/noobaa-core/wiki/Developers-Guide) 

## License

Apache License 2.0, see [LICENSE](/LICENSE)
