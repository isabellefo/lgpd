from flask import Blueprint, jsonify, Response, request, abort, make_response
from petshop.transacao import service
from datetime import datetime
from http import HTTPStatus

bp = Blueprint('transacao', __name__)
url_prefix = "/transacao"

@bp.route("relatorio", methods=["GET"])
def find_all():
    parse_date = lambda str: datetime.strptime(str, "%Y-%m-%d")

    start = request.args.get("start", None)
    end = request.args.get("end", None)

    try:
        if start: start = parse_date(start)
        if end: end = parse_date(end)
    except Exception as ex:
        abort(make_response(jsonify({
            "msg": "failed to parse date filter",
            "status": HTTPStatus.BAD_REQUEST
        }), HTTPStatus.BAD_REQUEST))

    transacoes = service.listar_transacoes(start, end)
    return jsonify({
        "total_transacoes": len(transacoes),
        "media_preco": service.media_preco_transacoes(transacoes),
        "transacoes": transacoes
    })
