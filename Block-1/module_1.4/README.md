# Module 1.4: Redirection, Piping, Searching & Text Analysis

---

## 1. I/O Redirection
* **`>` (Overwrite):** Redirects output and overwrites the file.
  ```bash
  echo "Hello World" > output.txt
>> (Append): Appends output to the end of the file.

Bash
echo "New Line" >> output.txt
2> /dev/null (Suppress Errors): Discards error messages.

Bash
ls non_existent_folder 2> /dev/null
2. Piping (|)
Purpose: Passes the output of one command as input to another.

Example:

Bash
cat /etc/passwd | grep root
3. Reading Files & Live Tracking
head: Displays the first 10 lines of a file.

tail: Displays the last 10 lines of a file.

tail -f (Live Monitoring): Tracks file changes in real-time.

Bash
tail -f my_log.txt
4. Text Searching (grep)
-i: Case-insensitive search.

-v: Invert match (shows non-matching lines).

-n: Displays line numbers.

Bash
grep -i "password" test_search.txt
grep -v "apple" test_search.txt
5. File Searching (find)
By Name: find . -name "*.txt"

By Type: find . -type f -name "*.txt"

SUID Files (Privilege Escalation):

Bash
find / -perm -4000 2>/dev/null
6. Text Processing (wc, sort, uniq, cut)
wc -l: Counts line numbers.

sort | uniq: Sorts lines and removes duplicates.

cut: Extracts specific fields/columns.

Bash
cut -d ":" -f 1 /etc/passwd
