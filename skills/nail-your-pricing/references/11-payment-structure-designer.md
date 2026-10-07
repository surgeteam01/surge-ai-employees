# Module 11: Payment Structure Designer

**Purpose:** Design how the price is actually collected — billing cadence, installment options, and any deliberate discount structure — since the same price can convert very differently depending on how the payment is structured.

## Process

1. **Match structure to the pricing model from Module 4**: a one-time fee needs a decision on installments (does a payment plan help conversion enough to be worth the added complexity and risk of missed payments?); a subscription needs a billing cadence decision (monthly vs annual, and whether annual gets a discount to reward commitment and improve cash flow); usage-based needs a decision on billing frequency and any minimum commitment.
2. **Design installment options if offered** — number of payments, amount per payment, and whether the total across installments is equal to, or a small premium over, the one-time price (a small premium is standard and fair, since it compensates for payment risk and cash-flow delay — don't make installments cost less than paying in full, which perversely discourages full payment).
3. **Design the annual-vs-monthly discount if subscription-based** — a typical range is 15-25% off the monthly-equivalent rate for annual prepay; tie the specific number to the margin data from Module 1 rather than copying an arbitrary industry convention.
4. **Decide on any launch/cohort/early-bird pricing** — only include this if it's real and time-bound (ties to Module 1's constraints and the ethics standard used elsewhere in this pipeline's sibling skills); never fabricate a fake original price to make a "discount" look bigger than it is.
5. **State all payment options plainly and simply** — buyers should be able to understand the full cost of every option in a single glance, without needing to do math to compare them.

## Output format

```
PRIMARY STRUCTURE: [one-time / subscription / usage-based] — billing cadence: [detail]

PAYMENT OPTIONS:
- Pay in full: $[x]
- Installments (if offered): [n] payments of $[x] (total: $[x], premium over full price: [x%])
- Annual vs monthly (if subscription): Monthly $[x] / Annual $[x] (equivalent to $[x]/mo — save [x%])

LAUNCH/EARLY PRICING (if real and time-bound): [detail, or "none — recommend not fabricating one"]
```

## Handoff

These payment options feed directly into Module 12's presentation copy and Module 13's final assembled package — every option listed here must be clearly reflected in the presentation, since a payment structure the buyer discovers only at checkout (rather than on the pricing page itself) creates the exact kind of trust friction this whole pipeline is designed to avoid.
