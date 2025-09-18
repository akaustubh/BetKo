package main

import "testing"

func TestPriceBoostsAboveBase(t *testing.T) {
	got := Price("HOME", 2.0)
	if got <= 2.0 {
		t.Fatalf("expected price boosted above base, got %v", got)
	}
}

func TestPriceZeroOnInvalidBase(t *testing.T) {
	if Price("HOME", 0) != 0 {
		t.Fatalf("expected 0 for non-positive base")
	}
}
