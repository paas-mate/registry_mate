package registry

import (
	"registry_mate/pkg/path"
	"registry_mate/pkg/util"
)

func Start() error {
	err := util.CallScript(path.RegistryStartScript)
	return err
}
