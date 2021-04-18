
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from petshop.database import db_session


def create_app(config_file=None):
    app = Flask(__name__)
    if config_file:
        app.config.from_pyfile(config_file)

    from petshop.database import init_db
    init_db()

    @app.teardown_appcontext
    def shutdown_session(exception=None):
        try:
            db_session.commit()
        except:
            pass
        db_session.remove()

    @app.errorhandler(404)
    def not_found(error):
        return "", 404
    
    @app.errorhandler(400)
    def bad_request(error):
        return "", 400

    from petshop.view import bp as health, url_prefix
    app.register_blueprint(health, url_prefix=url_prefix)

    from petshop.cliente.view import bp as cliente, url_prefix
    app.register_blueprint(cliente, url_prefix=url_prefix)

    return app
