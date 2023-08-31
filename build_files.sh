echo 'Building the project...'
pip install -r requirements.txt

echo "Make migration"

python3.10.2 manage.py makemigration --noinput
python3.10.2 manage.py migrate --noinput

echo "collect static"
python3.10.2 manage.py collectstatic --noinput --clear

