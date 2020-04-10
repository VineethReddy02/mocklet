package main

import (
	"github.com/VineethReddy02/k8s-simulator/internal/provider"
	"github.com/VineethReddy02/k8s-simulator/internal/provider/mock"
)

func registerMock(s *provider.Store) {
	s.Register("mock", func(cfg provider.InitConfig) (provider.Provider, error) { //nolint:errcheck
		return mock.NewMockProvider(
			cfg.ConfigPath,
			cfg.NodeName,
			cfg.OperatingSystem,
			cfg.InternalIP,
			cfg.DaemonPort,
		)
	})
}
