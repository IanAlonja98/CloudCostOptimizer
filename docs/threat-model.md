# Threat model (v1)

## Riskiest component
The server in AWS. It is the only gate to billing data and the AI service, so if it is compromised, everything it can reach is exposed.

## Worst case
- Billing data is exposed. It shows how a company's systems are built.
- The AI service is abused and the bill runs up.

## What to protect first
Billing data. A leak can't be undone, while AI spending can be capped and recovered.

## Controls
- **Identity:** the server uses a temporary role, not a saved key, so a break-in leaves no permanent credential.
- **Permissions:** read-only access to billing data, plus permission to call the AI service. It cannot change budgets, stop servers, or touch other services.
- **Data minimization:** account IDs and resource names are removed before data goes to the AI.
- **Access:** only the engineer can connect, and only after proving who they are.
- **Logging:** every question is recorded with who asked and when, without billing details. Logs are protected from edits.
- **AI mistakes:** real numbers are shown next to AI explanations so wrong answers get caught.

## Open items
- Decide who can read the logs and who can't change them.
- Add the real resource names back into answers after the AI responds.
