from flask import Blueprint, jsonify, Response, request, abort

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
