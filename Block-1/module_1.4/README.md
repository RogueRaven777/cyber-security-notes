# 📂 Module 1.4: Redirection, Piping, Searching & Text Analysis

---

## 1. I/O Redirection (আউটপুট সেভ ও এরর লুকানো)

* **`>` (Overwrite):** আগের লেখা পুরো মুছে নতুন লেখা সেভ করে।
  ```bash
  echo "Hello World" > output.txt
>> (Append): আগের লেখা অক্ষত রেখে নিচে নতুন লাইন যোগ করে।

Bash
echo "New Line" >> output.txt
2> /dev/null (এরর লুকানো): অপ্রয়োজনীয় এরর লিনাক্সের ময়লার ঝুড়িতে পাঠিয়ে স্ক্রিন পরিষ্কার রাখে।

Bash
ls non_existent_folder 2> /dev/null
2. Piping (|)
কাজ: বাম পাশের কমান্ডের আউটপুটকে সোজা ডান পাশের কমান্ডের ইনপুট হিসেবে পাঠিয়ে দেওয়া।

উদাহরণ:

Bash
cat /etc/passwd | grep root
3. ফাইল পড়া ও লাইভ নজরদারি
head: ফাইলের শুরুর ১০টি লাইন দেখায়।

tail: ফাইলের শেষ ১০টি লাইন দেখায়।

tail -f (Live Tracking): ফাইলে নতুন কিছু যুক্ত হলে সিসিটিভি ক্যামেরার মতো লাইভ দেখে।

Bash
tail -f /var/log/syslog
4. টেক্সট সার্চিং (grep)
-i: বড় হাত/ছোট হাতের পার্থক্য করবে না (Case Insensitive)।

-v: যেটা খুঁজছেন সেটা বাদ দিয়ে বাকি সব লাইন দেখাবে (Invert Match)।

-n: লাইন নম্বরসহ দেখাবে।

Bash
grep -i "password" test_search.txt
grep -v "apple" test_search.txt
5. ফাইল খোঁজা (find)
নাম দিয়ে খোঁজা: find . -name "*.txt"

ফাইল টাইপ দিয়ে: find . -type f -name "*.txt"

SUID ফাইল খোঁজা (Privilege Escalation):

Bash
find / -perm -4000 2>/dev/null
6. টেক্সট প্রসেসিং (wc, sort, uniq, cut)
wc -l: মোট লাইন গণনা করে।

sort | uniq: সাজিয়ে একই লাইন বারবার থাকলে ডুপ্লিকেট বাদ দেয়।

cut: নির্দিষ্ট অংশ কেটে বের করে।

Bash
cut -d ":" -f 1 /etc/passwd
