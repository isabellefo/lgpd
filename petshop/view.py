from flask import Blueprint
from database import engine

url_prefix = "/health"
bp = Blueprint('health', __name__)


@bp.route("")
def health():
    engine.execute("SELECT 1")
    return ""
