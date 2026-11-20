# Security control deployment notes

- MFA: enforce for privileged and remote accounts; prefer FIDO2/WebAuthn.
- Passwords: long unique passphrases; block known-compromised values; rate-limit attempts.
- IAM/RBAC: deny by default; check permissions server-side on every object and API action.
- Kerberos: implement only in an AD lab; secure SPNs, service accounts and delegation.
- TLS: use supported TLS versions, certificate validation, secure headers and HSTS after HTTPS validation.
- Database: private network, dedicated least-privilege account, parameterized queries, encrypted volume and backups.
- JWT: vetted library; verify signature, issuer, audience, expiry and algorithm; short access-token lifetime; rotate refresh tokens and signing keys.
- Webhooks: HTTPS, HMAC-SHA-256 over raw body, constant-time compare, timestamp, event ID and replay prevention.
- Logging: centralize auth/admin/WAF/app/DB events; synchronize time; alert on suspicious activity.
