from flask import Blueprint, jsonify, Response

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
    if cliente != None:
        return jsonify(cliente)
    return {}, 404
