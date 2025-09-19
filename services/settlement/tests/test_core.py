# tests/test_core.py
from settlement import grade_bet
import pytest

def test_grade_win():
    assert grade_bet(2.2, 10, "WIN") == pytest.approx(12.0, rel=1e-12)

def test_grade_lose():
    assert grade_bet(1.8, 10, "LOSE") == 0.0
