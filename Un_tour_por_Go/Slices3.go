package main

import "code.google.com/p/go-tour/pic"

func Pic(dx, dy int) [][]uint8 {
 var xs = make([]([]uint8), dy)
    for y, _ := range xs {
        xs[y] = make([]uint8, dx)
        for x, _ := range xs[y] {
            xs[y][x] = uint8((x & y) & (x & y))
        }
    }
    
  return xs  

}

func main() {
    pic.Show(Pic)
}