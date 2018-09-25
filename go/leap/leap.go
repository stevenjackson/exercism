// Leap stub file

// The package name is expected by the test program.
package leap

// testVersion should match the targetTestVersion in the test file.
const testVersion = 2

// IsLeapYear determines if the given year is a leap year.
func IsLeapYear(year int) bool {
	fourthYear := year%4 == 0
	centuryYear := year%100 == 0
	fourthCentury := year%400 == 0

	return fourthYear && !centuryYear || fourthCentury
}
