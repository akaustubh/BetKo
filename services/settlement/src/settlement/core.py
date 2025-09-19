# src/settlement/core.py
def grade_bet(price: float, stake: float, result: str) -> float:
    if result == "WIN":
        return (price - 1.0) * stake
    return 0.0
