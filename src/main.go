package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello, Пупкин")
	for argc, argv := range os.Args {
		fmt.Println("argv [", argc, "] = <", argv, ">")
	}
}

