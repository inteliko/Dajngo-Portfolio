echo 'Building the project...'
pip install -r requirements.txt

echo "Make migration"
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "collect static"
python3 manage.py collectstatic --noinput --clear
