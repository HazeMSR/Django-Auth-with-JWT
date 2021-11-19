# Django Authentication with JWT

## First steps

1. Login into your database and delete all **_user or _users** tables with the command:
```
psql -h localhost -p 55xx -U user_name db_name


> DROP TABLE thenameofyourdb CASCADE;
```

2. Make a new python environment with the command:
```
pyenv virtualenv 3.10.0 new_env
pyenv activate new_env
eval "$(pyenv init --path)"
```
3. Import your python dependencies with:
```
pip install -r requirements.txt
```

4. Make your migrations:
```
python manage.py makemigrations
python manage.py migrate
```

5. Run with your server:
```
python manage.py runserver ip:port
```

## Register

Create a new user with a POST request to the following endpoint:
> /api/register

Using a **Content-Type: application/json** header with following JSON structure:

```
{
  "username": "username",
  "email": "email@mail.com",
  "password: "password"
}
```

## Login

Login with a POST request to the following endpoint:
> /api/login

Using a **Content-Type: application/json** header with following JSON structure:

```
{
  "email": "email@mail.com",
  "password: "password"
}
```


## Logout

Login with a POST request to the following endpoint:
> /api/logout

Using a **Content-Type: application/json** header with following JSON structure:

```
{
  "email": "email@mail.com"
}
```
