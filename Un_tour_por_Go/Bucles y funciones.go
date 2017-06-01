package main

import (
    "fmt"
    "math"
)

func Sqrt(x float64, prec float64) float64 {
    var z = x

    var next = func(x, z float64) float64 {
      return z - (math.Pow(z, 2) - x) / (2 * z)
    }

    for zz:= next(x, z); math.Abs(zz-z) > prec; {
      z = zz
      zz = next(x, z)
    }

    return z
}

func main() {
    var x = 2.0
    var r = Sqrt(x, 10e-13)
    var rr = math.Sqrt(x)
    fmt.Println(r, rr, rr - r)
}