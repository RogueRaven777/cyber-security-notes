# Module 1.3: Advanced Permissions & User Management

## 1. Standard Permissions
- Read (r = 4), Write (w = 2), Execute (x = 1)
- Numeric Mode Example: `chmod 755 file.txt` (Owner: rwx, Group: r-x, Others: r-x)
- Symbolic Mode Example: `chmod +x script.sh`

## 2. Ownership
- User Ownership: `sudo chown root file.txt`
- User & Group Ownership: `sudo chown user:group file.txt`

## 3. Special Permissions
- **SUID (chmod u+s):** Runs file with owner privileges.
- **SGID (chmod g+s):** Files created inside adopt directory group.
- **Sticky Bit (chmod +t):** Only file owners can delete inside directory.

## 4. Users & Groups
- User creation: `sudo useradd -m username`
- Config files: `/etc/passwd` (user info) & `/etc/shadow` (passwords)
