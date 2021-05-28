import sys
import subprocess
for param in sys.argv :
    if (param == 'select'): 
        #nao esquecer de verificar se o nome do banco e usuario estao certos
        process = subprocess.Popen(['mysql', 'petshop', '-u', 'root', '-p', '<', 'colocar .sql aqui'], #comandos que ira rodar no cmd
            stdout=subprocess.PIPE, stdin=subprocess.PIPE, shell=True)
        output = process.communicate()[0] #algum comando adicional para rodar no cmd pode deixa vazio se nao for rodar mais nada(lembrete de deixar em bytes)
        print(output.decode())
