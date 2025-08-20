Resecurity CTF - HackSmartCity Challenge

**Category**: SmartCity CTF  
**Hosted By**: [Resecurity Pakistan]  
**Platform**: [HackSmartCity.com]  
**My Role**: Cybersecurity Intern @ Resecurity | Offensive Security Trainee  
**Date**: July 2025  

---

Objective:
CTFs aren’t just games—they’re simulations of real breaches. And I don’t just play to win, I play to learn how to **defend** and **exploit** better.
The CTF simulated a **real-world smart city infrastructure**, built to test our skills in:

- Web Application Exploitation  
- Logical Vulnerabilities  
- Authentication Bypass  
- Access Control Weaknesses  
- Data Extraction from Misconfigured APIs

The challenge focused on targeting the **e-Government Portal** where attackers must act like a stealthy threat actor and retrieve sensitive data/flags—without triggering alarms.

---

 My Approach:

1. **Reconnaissance**  
   - Inspected all subdomains and routes.
   - Manual testing of parameters and hidden URLs.
   - Mapped HTTP request structure via Burp Suite & browser dev tools.

2. **Authentication Bypass**  
   - Spotted weak session handling.
   - Exploited **CVE-2017-7269 (IIS Shortname Enumeration)** to enumerate hidden files & directories.
   - Crafted requests to bypass login flow without credentials.

3. **Flag Hunting**  
   - Accessed restricted areas via path traversal and logic flaws.
   - Retrieved internal documentation, user data, and flag objects.
   - One endpoint leaked **JWT tokens** due to missing access control.

---

Key Skills Demonstrated

- Manual Vulnerability Discovery  
- Bypassing Strongly-Sanitized Input Filters  
- IIS Shortname Enumeration  
- Real-World Recon & Exploitation  
- Thinking like a threat actor, not just a scanner

---

Tools Used

- **Burp Suite** (Proxy, Repeater, Intruder)  
- **Firefox Developer Tools**  
- **Kali Linux**  
- **Nmap**  
- **IIS Shortname Scanner**  
- **Custom Python Scripts for Token Testing**

---

Why This Matters

This wasn't a "guess the flag" kind of game.  
This CTF simulated how real attackers pivot through misconfigurations and logic flaws, based on futuristic smartcity culture.

