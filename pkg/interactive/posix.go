// +build !windows

package interactive

import (
	"fmt"
	"os"
)

func termHandle() (*os.File, error) {
	return os.Open("/dev/tty")
}

func resetLine() {
	// go one line up and clear
	fmt.Print("\033[F\033[K")
}
