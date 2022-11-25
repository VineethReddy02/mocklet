# mocklet

This project is totally inspired from virtual kubelet mock provider. With very minimal changes on configuration.

So the main idea behind this project is to simulate mock kubelet which can hold 100's-1000's of pods in inmemory of the mock kubelet created. This can allow to create scaled environments specific to Pods.

Running 1000's of pods on the mock kubelet can help you in benchmarking your controllers and operators. which mainly deal with deployments, pods and their events.

All you need is to run the below cmd with required configuration details and this will add a new node to your cluster

By default it tries to read `KUBECONFIG` environment variable to get cluster credentials. If not you can provider `KUBECONFIG` file with `--kubeconfig` flag.

```yaml
cd bin
./mocklet --provider-config=../config.yaml --nodename=mocklet
```

You can also deploy the mock-kubelet as deployment in your cluster. This will automatically register the mock-kubelet in the existing cluster.

```cassandraql
kubectl create -f k8s-deployment.yaml
```

Now you can notice mocklet is added into your cluster

```
NAME                                     STATUS   ROLES    AGE     VERSION
gke-gke5684-default-pool-1y5e7l53-kphx   Ready    <none>   4h23m   v1.14.10-gke.27
gke-gke5684-default-pool-1y5e7l53-x5kj   Ready    <none>   4h23m   v1.14.10-gke.27
mocklet                                  Ready    agent    2m32s   v1.16.15-vk-N/A
```

**Note:** This project must be only used for scale test to simulate 1000's pods in a mock kubelet.

Also, the mock kubelet is created with a `taint`. The pods & deployments you create for scaled environments needs to have respective `tolerations` for mock kubelet taint and also add the `nodeSelector` property to manifest file. For reference please refer the examples directory yaml files.

If you have any trouble in setting this up. Please create all the resources at required scale by adding `toleration` and `nodeSelector` now try restarting the mock kubelet. So this allows api-server to schedule all the pending resources on this kubelet. (This is just troubleshooting mechanism by restarting the mock kubelet.)

Running multiple mocklet deployments will create multiple mocklets in the cluster. This can help scaling workloads specific to a mocklet.

#### TODO's:

1.  We have unused code here, we still trim this down.
2.  Configuring and running this can also be much more simpler.

**Huge thanks to Virtual Kubelet project. This project is completely taken from https://github.com/virtual-kubelet/virtual-kubelet mock provider.**
