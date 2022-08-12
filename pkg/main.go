package main

import (
	"go.uber.org/zap"
	"os"
	"os/signal"
	"registry_mate/pkg/registry"
	"registry_mate/pkg/util"
)

func main() {
	util.Logger().Debug("this is a debug msg")
	util.Logger().Info("this is a info msg")
	util.Logger().Error("this is a error msg")
	interrupt := make(chan os.Signal, 1)
	err := registry.Start()
	if err != nil {
		util.Logger().Error("start registry server failed ", zap.Error(err))
	} else {
		os.Exit(1)
	}
	signal.Notify(interrupt, os.Interrupt)
	for {
		select {
		case <-interrupt:
			return
		}
	}
}
