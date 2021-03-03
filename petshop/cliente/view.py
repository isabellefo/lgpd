from flask import Blueprint, jsonify, Response

from cliente import service


bp = Blueprint('cliente', __name__)
url_prefix = "/cliente"


@bp.route("", methods=["GET"])
def listar_clientes():
    clientes = service.listar_clientes()
    return jsonify(clientes)


@bp.route("/<documento>", methods=["GET"])
def detalhar_cliente(documento):
    try:
        cliente = service.detalhar_cliente(documento)
    except Exception as e:
        return jsonify({"status": 404, "error": str(e)}), 404
    else:
        return jsonify(cliente)
