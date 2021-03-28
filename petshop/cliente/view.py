from flask import Blueprint, jsonify, Response, request

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


@bp.route("/dado-pessoal/anonimizar", methods=["PUT"])
def anonimizar_cliente():
    try:
        id_cliente = request.json.get("id", None)
        if id_cliente is None:
            raise Exception("Nenhum id válido de cliente foi informado")

        service.anonimizar_cliente(id_cliente)
    except Exception as e:
        return jsonify({"status": 404, "error": str(e)}), 404
    else:
        return "", 200
