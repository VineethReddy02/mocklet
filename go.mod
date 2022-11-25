module github.com/VineethReddy02/mocklet

go 1.13

require (
	contrib.go.opencensus.io/exporter/jaeger v0.2.0
	contrib.go.opencensus.io/exporter/ocagent v0.6.0
	github.com/mitchellh/go-homedir v1.1.0
	github.com/pkg/errors v0.8.1
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/virtual-kubelet/virtual-kubelet v1.2.1-0.20200320220811-47a353897e8d
	go.opencensus.io v0.22.3
	gopkg.in/yaml.v2 v2.2.8
	k8s.io/api v0.16.15
	k8s.io/apimachinery v0.16.15
	k8s.io/client-go v10.0.0+incompatible
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.16.15
)

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.16.15

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.16.15

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.16.15

replace k8s.io/apiserver => k8s.io/apiserver v0.16.15

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.16.15

replace k8s.io/cri-api => k8s.io/cri-api v0.16.16-rc.0

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.16.15

replace k8s.io/kubelet => k8s.io/kubelet v0.16.15

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.16.15

replace k8s.io/apimachinery => k8s.io/apimachinery v0.16.16-rc.0

replace k8s.io/api => k8s.io/api v0.16.15

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.16.15

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.16.15

replace k8s.io/component-base => k8s.io/component-base v0.16.15

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.16.15

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.16.15

replace k8s.io/metrics => k8s.io/metrics v0.16.15

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.16.15

replace k8s.io/code-generator => k8s.io/code-generator v0.16.16-rc.0

replace k8s.io/client-go => k8s.io/client-go v0.16.15

replace k8s.io/kubectl => k8s.io/kubectl v0.16.15

replace k8s.io/node-api => k8s.io/node-api v0.16.15

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.16.15

replace k8s.io/sample-controller => k8s.io/sample-controller v0.16.15
