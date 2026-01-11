# Network & Certificate Buttons

Buttons for network debugging and SSL/TLS certificate tools.

**Source:** `~/my-tools/hubers-devtools-system` (network-toolkit.zsh)
**Help:** Run `nethelp` or `cert-help` in terminal

---

## Folder: NET

Network tools folder.

### Stream Deck Setup
1. Add **Create Folder** to main profile
2. Name: "NET"
3. Add buttons below inside this folder

---

## Button: Show Ports

**ID:** net-ports
**Type:** command
**Priority:** ⭐ Essential

### Label
```
Ports
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && ports"`

### Command
```bash
ports
```

### What It Does
Lists ALL listening ports (TCP & UDP) on your Mac.

---

## Button: Check Port

**ID:** net-port
**Type:** text (needs port number)

### Label
```
Check
Port
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `port `
3. Uncheck "Press Enter" (user adds port number)

### Command Template
```bash
port 8080
```

### What It Does
Check if a specific port is in use and what's using it.

---

## Button: My IP

**ID:** net-myip
**Type:** command

### Label
```
My
IP
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && myip"`

### Command
```bash
myip
```

### What It Does
Shows your public IP address.

---

## Button: DNS Lookup

**ID:** net-dns
**Type:** text (needs domain)

### Label
```
DNS
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `dns `
3. Uncheck "Press Enter" (user adds domain)

### Command Template
```bash
dns google.com
```

### What It Does
Shows all DNS records (A, AAAA, MX, NS, TXT) for a domain.

---

## Button: IP Calculator

**ID:** net-ipcalc
**Type:** text (needs CIDR)

### Label
```
IP
Calc
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `ipcalc `
3. Uncheck "Press Enter"

### Command Template
```bash
ipcalc 10.240.0.0/13
```

### What It Does
Calculate network ranges from CIDR notation.

---

## Button: Network Help

**ID:** net-help
**Type:** command

### Label
```
Net
Help
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && nethelp"`

### Command
```bash
nethelp
```

### What It Does
Shows all network toolkit commands.

---

## Folder: CERTS

SSL/TLS Certificate tools folder.

---

## Button: Cert Test

**ID:** cert-test
**Type:** text (needs host)
**Priority:** ⭐ Essential

### Label
```
Cert
Test
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `cert-test `
3. Uncheck "Press Enter"

### Command Template
```bash
cert-test google.com
```

### What It Does
Full SSL test suite - connection, TLS version, expiration, chain verification, curl test.

---

## Button: Cert Summary

**ID:** cert-info
**Type:** text (needs host)

### Label
```
Cert
Info
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `cert `
3. Uncheck "Press Enter"

### Command Template
```bash
cert google.com
```

### What It Does
Quick certificate summary - subject, issuer, dates.

---

## Button: Cert Expiry

**ID:** cert-dates
**Type:** text (needs host)

### Label
```
Cert
Expiry
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `cert-dates `
3. Uncheck "Press Enter"

### Command Template
```bash
cert-dates google.com
```

### What It Does
Check certificate expiration with days remaining.

---

## Button: Cert Chain

**ID:** cert-chain
**Type:** text (needs host)

### Label
```
Cert
Chain
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `cert-chain `
3. Uncheck "Press Enter"

### Command Template
```bash
cert-chain google.com
```

### What It Does
Shows full certificate chain (leaf → intermediate → root).

---

## Button: Cert SAN

**ID:** cert-san
**Type:** text (needs host)

### Label
```
Cert
SAN
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `cert-san `
3. Uncheck "Press Enter"

### Command Template
```bash
cert-san google.com
```

### What It Does
Shows Subject Alternative Names - what domains the cert covers.

---

## Button: PFX Extract

**ID:** cert-pfx
**Type:** text (needs file)

### Label
```
PFX
Extract
```

### Stream Deck Setup
1. Add **System > Text**
2. Text: `pfx-extract `
3. Uncheck "Press Enter"

### Command Template
```bash
pfx-extract certificate.pfx
```

### What It Does
Extracts key, cert, chain, and bundle from a PFX file.

---

## Button: Cert Help

**ID:** cert-help
**Type:** command

### Label
```
Cert
Help
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && cert-help"`

### Command
```bash
cert-help
```

### What It Does
Shows all certificate commands.

---

## Work Proxy Versions (wcert-*)

These run through the work tunnel SOCKS proxy.

| Button | Command | Use When |
|--------|---------|----------|
| wCert Test | `wcert-test host` | Testing internal work servers |
| wPing | `wping host1 host2` | Check work servers are up |

### Stream Deck Setup for wcert-test
1. Add **System > Text**
2. Text: `wcert-test `
3. Uncheck "Press Enter"

---

## Summary Table

| Button | Command | Type | Essential? |
|--------|---------|------|------------|
| Ports | `ports` | command | ⭐ Yes |
| Check Port | `port ` | text | |
| My IP | `myip` | command | |
| DNS | `dns ` | text | |
| IP Calc | `ipcalc ` | text | |
| Net Help | `nethelp` | command | |
| Cert Test | `cert-test ` | text | ⭐ Yes |
| Cert Info | `cert ` | text | |
| Cert Expiry | `cert-dates ` | text | |
| Cert Chain | `cert-chain ` | text | |
| Cert SAN | `cert-san ` | text | |
| PFX Extract | `pfx-extract ` | text | |
| Cert Help | `cert-help` | command | |
