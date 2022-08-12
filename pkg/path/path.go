package path

import (
	"os"
	"path/filepath"
)

// registry
var (
	RegistryHome = os.Getenv("REGISTRY_HOME")
)

// mate
var (
	RegistryMatePath    = filepath.FromSlash(RegistryHome + "/mate")
	RegistryScripts     = filepath.FromSlash(RegistryMatePath + "/scripts")
	RegistryStartScript = filepath.FromSlash(RegistryScripts + "/start-registry.sh")
)
