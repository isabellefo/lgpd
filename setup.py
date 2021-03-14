from setuptools import find_packages, setup

setup(
    name='petshop',
    version='1.0',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'flask',
        'sqlalchemy',
        'Flask-SQLAlchemy',
        'mysqlclient',
        'faker',
        'gunicorn'
    ]
)
