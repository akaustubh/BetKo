package main

func Price(selection string, base float64) float64 {
	if base <= 0 {
		return 0
	}
	return base * 1.05
}

func main() {}
