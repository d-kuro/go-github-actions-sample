package main

import "testing"

func double(x int) int {
	return 2 * x
}

func Test(t *testing.T) {
	tests := map[string]struct {
		Input  int
		Expect int
	}{
		"A": {1, 2},
		"B": {2, 4},
		"C": {0, 2},
		"D": {3, 6},
	}

	for n, tt := range tests {
		tt := tt
		t.Run(n, func(t *testing.T) {
			t.Parallel()
			if v := double(tt.Input); v != tt.Expect {
				t.Errorf("want %d got %d", tt.Expect, v)
			}
		})
	}

}
