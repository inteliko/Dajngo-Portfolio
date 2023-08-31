
echo 'Building the project...'
pip install -r requirements.txt

echo "Make migration"
python manage.py makemigrations
python manage.py migrate

echo "collect static"
python manage.py collectstatic
