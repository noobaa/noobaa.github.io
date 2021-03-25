# NooBaa Operator CLI

The `noobaa` command line tool is built from the noobaa-operator repo as the operator and the CLI share a lot of code:

- [noobaa-operator on github](https://github.com/noobaa/noobaa-operator)
- [Releases page](https://github.com/noobaa/noobaa-operator/releases)

## Install latest

```bash
OS="linux"
# or
OS="mac"

VERSION=$(curl -s https://api.github.com/repos/noobaa/noobaa-operator/releases/latest | jq -r '.name')
curl -LO https://github.com/noobaa/noobaa-operator/releases/download/$VERSION/noobaa-$OS-$VERSION
chmod +x noobaa-$OS-$VERSION
mv noobaa-$OS-$VERSION /usr/local/bin/noobaa
```

## Install latest with Homebrew (Mac/Linux):

```bash
brew install noobaa/noobaa/noobaa
```

## Check your installation

- Help: `noobaa help`
- kubeconfig: - same as kubectl - The CLI operates on the current context from kubeconfig which can be changed with `export KUBECONFIG=/path/to/custom/kubeconfig` or use the `--kubeconfig` and `--namespace` flags.
- minikube: use `noobaa install --mini` in order to allocate less resources.
- Uninstalling: `noobaa uninstall`

The CLI helps with most management tasks and focuses on ease of use for manual operations or scripts.

Here is the top level usage:
```bash
$ noobaa --help

._   _            ______
| \ | |           | ___ \
|  \| | ___   ___ | |_/ / __ _  __ _
| . \ |/ _ \ / _ \| ___ \/ _\ |/ _\ |
| |\  | (_) | (_) | |_/ / (_| | (_| |
\_| \_/\___/ \___/\____/ \__,_|\__,_|

Install:
  install      Install the operator and create the noobaa system
  uninstall    Uninstall the operator and delete the system
  status       Status of the operator and the system

Manage:
  backingstore Manage backing stores
  bucketclass  Manage bucket classes
  obc          Manage object bucket claims
  diagnose     Collect diagnostics
  ui           Open the NooBaa UI

Advanced:
  operator     Deployment using operator
  system       Manage noobaa systems
  api          Make api call
  bucket       Manage noobaa buckets
  pvstore      Manage noobaa pv store
  crd          Deployment of CRDs
  olm          OLM related commands

Other Commands:
  completion   Generates bash completion scripts
  options      Print the list of global flags
  version      Show version

Use "noobaa <command> --help" for more information about a given command.

```

```
$ noobaa options

The following options can be passed to any command:

      --db-image='centos/mongodb-36-centos7': The database container image
      --db-storage-class='': The database volume storage class name
      --db-volume-size-gb=0: The database volume size in GB
      --image-pull-secret='': Image pull secret (must be in same namespace)
      --kubeconfig='': Paths to a kubeconfig. Only required if out-of-cluster.
      --master='': The address of the Kubernetes API server. Overrides any value in kubeconfig. Only required if
out-of-cluster.
      --mini=false: Signal the operator that it is running in a low resource environment
  -n, --namespace='noobaa': Target namespace
      --noobaa-image='noobaa/noobaa-core:5.5.0-rc2': NooBaa image
      --operator-image='noobaa/noobaa-operator:5.6.0': Operator image
      --pv-pool-default-storage-class='': The default storage class name for BackingStores of type pv-pool

```

```shell
$ noobaa version

INFO[0000] CLI version: 5.6.0
INFO[0000] noobaa-image: noobaa/noobaa-core:5.5.0-rc2
INFO[0000] operator-image: noobaa/noobaa-operator:5.6.0

```

## Next steps

- [noobaa install](noobaa-install.md)
- [Back](README.md)

---
