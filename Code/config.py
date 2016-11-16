# Statement for enabling the development environment
DEBUG = True


# Define the application directory
import os
basedir = os.path.abspath(os.path.dirname(__file__))


# Define the database - we are working with
# SQLite
SQLALCHEMY_TRACK_MODIFICATIONS = True
SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://postgres:monkeyka@localhost/foodonwheels"
SQLALCHEMY_MIGRATION_REPO = os.path.join(basedir, 'db_repository')


# Use a secure, unique and absolutely secret key for
# signing the data.
CSRF_SESSION_KEY = "secret"


# Secret key for signing cookies
SECRET_KEY = "secret"