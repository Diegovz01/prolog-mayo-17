package main

import "fmt"

// fibonacci es una función que devuelve
// una función que devuelve un int.
func fibonacci() func() int {
    n1,n2, n := 0, 1, 0

    return func() int {
        n, n1, n2 = n1, n2, n1 + n2

        return n
    }
}

func main() {
    f := fibonacci()
    for i := 0; i < 10; i++ {
        fmt.Println(f())
    }
}