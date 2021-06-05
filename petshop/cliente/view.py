from flask import Blueprint, jsonify, Response, request, abort
from http import HTTPStatus

from petshop.cliente import service


bp = Blueprint('cliente', __name__)
url_prefix = "/cliente"


@bp.route("", methods=["GET"])
def listar_clientes():
    clientes = service.listar_clientes()
    return jsonify(clientes)


@bp.route("/<int:id>", methods=["GET"])
def detalhar_cliente(id):
    cliente = service.detalhar_cliente(id)
    return jsonify(cliente)


@bp.route("/dado-pessoal/anonimizar", methods=["PUT"])
def anonimizar_cliente():
    id_cliente = request.json.get("id", None)
    if id_cliente is None:
        abort(400)
    service.anonimizar_cliente(id_cliente)
    return "", 201


@bp.route("/dado-pessoal/anonimizar/tempo", methods=["PUT"])
def anonimizar_tempo():
    tempo_inatividade = request.json.get("tempo", 24)
    service.anonimizar_tempo(tempo_inatividade)
    return "", 201


@bp.route("/dado-pessoal/anonimizar/massa", methods=["PUT"])
def anonimizar_massa():
    ids_clientes = request.json.get("ids", None)
    if (ids_clientes is None) or (not isinstance(ids_clientes, list)):
        abort(400)

    successes, errors = service.anonimizar_massa(ids_clientes)

    if len(successes) == 0 and len(errors) > 0:
        status = HTTPStatus.NOT_FOUND
    else:
        status = HTTPStatus.CREATED

    return jsonify({"successes": successes, "errors": errors}), status
