package main

import (
	"fmt"
	"os"
)

const ask = 24;

func main() {
	fmt.Println("Hello, Пупкин")
	for i := 0; i < len(os.Args); i++ {
	fmt.Println("argv[",i,"] = <",os.Args[i],">")
	}
}
