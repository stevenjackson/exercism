package hamming

import "fmt"

// Distance returns the Hamming distance between two strands
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, fmt.Errorf("strands must be same length")
	}

	distance := 0
	for i := range a {
		if b[i] != a[i] {
			distance++
		}
	}

	return distance, nil
}
