# Standalone noobaa-core

noobaa-core provides a standalone program that packages multiple core commands.
Each command exposes a different core capability from the project.
This form of packaging is meant for portability and ease of use during dev/test.
Perhaps in the future this will become useful for deploying data services in production too.

#### Contents:
- `noobaa-core help` is the entrypoint of the program - see [src/core/index.js](https://github.com/noobaa/noobaa-core/blob/master/src/core/index.js).
- `noobaa-core nsfs` is a command to expose a local filesystem as S3 - see [src/core/nsfs.js](https://github.com/noobaa/noobaa-core/blob/master/src/core/nsfs.js).
- `noobaa-core nscache` is a command to expose a remote bucket with local caching (WIP) - see [src/core/nscache.js](https://github.com/noobaa/noobaa-core/blob/master/src/core/nscache.js).

# Build from source

#### Requirements:
- node.js - should follow the same version (at least major version) as specified in [.nvmrc](https://github.com/noobaa/noobaa-core/blob/master/.nvmrc)
- requirements of [node-gyp](https://github.com/nodejs/node-gyp): python, make, gcc(linux) / xcode(mac) (no need to install node-gyp itself)
- nasm (linux) / yasm (mac)

#### Build commands:
```
npm install
npm run build:native
npm run build:core
```

#### Outputs:
- `./build/noobaa-core-linux`
- `./build/noobaa-core-mac`
- `./build/noobaa-core-win.exe`

#### Notes:
- The [builder container image](https://github.com/noobaa/noobaa-core/blob/master/src/deploy/NVA_build/builder.Dockerfile) is still not being used to build the standalone program so for now there are some requirements from the machine that is used to run the build.
- While the binary itself is cross-packaged to different OS's, the native addon library will not allow true cross-compilation and will require building on the same machine type as the target runtime machine.



# Examples:

Start the standalone nsfs program exposing a folder from the filesystem:
```
noobaa-core nsfs .
```

Then use S3 http access to the standalone endpoint (no authentication is needed).

#### List buckets (dirs under .)
```
curl -s 'http://localhost:6001'
```

#### Get object (read file)
```
$ curl -s 'http://localhost:6001/src/core/index.js' | head -1
/* Copyright (C) 2020 NooBaa */
```

#### Put object (write file)

```
$ echo "world" | curl -X PUT -d @- 'http://localhost:6001/src/hello'
$ cat src/hello
world
```

#### Delete object (unlink file)
```
$ curl -X DELETE 'http://localhost:6001/src/hello'
```

#### List objects from the "src" dir with a prefix "core/"
```
$ curl -s 'http://localhost:6001/src?delimiter=/&prefix=core/' | xmllint --format -
<?xml version="1.0" encoding="UTF-8"?>
<ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <Name>src</Name>
  <Prefix>core/</Prefix>
  <Delimiter>/</Delimiter>
  <MaxKeys>1000</MaxKeys>
  <IsTruncated>false</IsTruncated>
  <Contents>
    <Key>core/index.js</Key>
    <LastModified>2021-01-19T10:50:11.000Z</LastModified>
    <ETag>"inode-77401967-mtime-1611053411748.1716"</ETag>
    <Size>1477</Size>
    <Owner>
      <ID>123</ID>
      <DisplayName>NooBaa</DisplayName>
    </Owner>
    <StorageClass>STANDARD</StorageClass>
  </Contents>
  <Contents>
    <Key>core/nscache.js</Key>
    <LastModified>2021-01-19T10:50:11.000Z</LastModified>
    <ETag>"inode-77401968-mtime-1611053411749.4114"</ETag>
    <Size>3974</Size>
    <Owner>
      <ID>123</ID>
      <DisplayName>NooBaa</DisplayName>
    </Owner>
    <StorageClass>STANDARD</StorageClass>
  </Contents>
  <Contents>
    <Key>core/nsfs.js</Key>
    <LastModified>2021-01-19T10:50:11.000Z</LastModified>
    <ETag>"inode-77401969-mtime-1611053411750.2307"</ETag>
    <Size>3976</Size>
    <Owner>
      <ID>123</ID>
      <DisplayName>NooBaa</DisplayName>
    </Owner>
    <StorageClass>STANDARD</StorageClass>
  </Contents>
</ListBucketResult>
```
