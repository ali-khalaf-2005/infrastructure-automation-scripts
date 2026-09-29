# 1. إنشاء المجلد والدخول إليه
mkdir -p bash-scripts
cd bash-scripts

# 2. إنشاء ملف السكريبت والتعديل عليه
nano backup.sh

# 3. رفع التغييرات إلى الفرع main
git add .
git commit -m "Add system backup bash script"
git push origin main
