package raindrops

import (
	"strconv"
)

type RaindropPhrase struct {
	factor      int
	translation string
}

var RaindropPhrases = []RaindropPhrase{
	RaindropPhrase{3, "Pling"},
	RaindropPhrase{5, "Plang"},
	RaindropPhrase{7, "Plong"},
}

// Convert a number to a string using the raindrops algorithm
func Convert(number int) string {
	result := ""
	for _, phrase := range RaindropPhrases {
		if number%phrase.factor == 0 {
			result += phrase.translation
		}
	}
	if result == "" {
		return strconv.Itoa(number)
	}
	return result
}
