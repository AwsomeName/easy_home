# 默认已经有conda，python 3.10
conda create -n home python=3.10
conda activate home

# 首先安装django
pip install django==3.2
pip install --upgrade pip
pip install django-cms


# 创建默认项目， django-admin startproject homedemo

# 然后安装数据库， 这里选择数据库
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
# 启动
sudo systemctl start mysql
sudo systemctl status mysql
sudo systemctl enable mysql

# 检查
sudo apt install libmysqlclient-dev
pip install mysqlclient

# 设置为mysql

# 安装cms插件
python manage.py migrate
python manage.py createsuperuser
python manage.py cms check



pip install django-filer
pip install djangocms-text-ckeditor
pip install django-mptt
python manage.py migrate filer
python manage.py migrate easy_thumbnails
python manage.py migrate djangocms_text_ckeditor
pip install djangocms-link djangocms-file djangocms-picture djangocms-video djangocms-googlemap djangocms-snippet djangocms-style
python manage.py migrate