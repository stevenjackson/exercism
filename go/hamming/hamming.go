package hamming

import "fmt"

func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, fmt.Errorf("strands must be same length")
	}

	distance := 0
	for i, _ := range a {
		if b[i] != a[i] {
			distance++
		}
	}

	return distance, nil
}
