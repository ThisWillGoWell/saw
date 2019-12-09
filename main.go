package main

import (
	"github.com/ThisWillGoWell/saw/cmd"
	"os"
)

func main() {
	if err := cmd.SawCommand.Execute(); err != nil {
		os.Exit(0)
	}
}
