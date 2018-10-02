// twofer shares between two people, one for you, one for me
package twofer

import "fmt"

// ShareWith returns who will be sharing
func ShareWith(name string) string {
	if len(name) == 0 {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
