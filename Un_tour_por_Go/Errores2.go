package main

import (
	"fmt"
)

type ErrNegativeSqrt float64

func (r ErrNegativeSqrt) Error() string {
	return fmt.Sprintf("Cannot Sqrt negative number: %g", float64(r))
}

func Sqrt(f float64) (float64, error) {
	// TODO: sqrt method
	if f < 0 {
		return 0, ErrNegativeSqrt(f)
	}
	return 0, nil
}

func main() {
	fmt.Println(Sqrt(2))
	fmt.Println(Sqrt(-2))
}