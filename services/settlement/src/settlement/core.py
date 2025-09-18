def grade_bet(price: float, stake: float, result: str) -> float:
    if result == "WIN":
        # simple net-win payout (decimal odds)
        return max(0.0, (price - 1.0) * stake)
    if result == "LOSE":
        return 0.0
    # PUSH/VOID -> 0 for now (we’ll extend later)
    return 0.0
