from settlement import grade_bet

def test_grade_win():
    assert grade_bet(2.2, 10, "WIN") == 12.0

def test_grade_lose():
    assert grade_bet(1.8, 10, "LOSE") == 0.0
