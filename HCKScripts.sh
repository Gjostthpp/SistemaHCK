#!/bin/bash

# Cria a pasta "scripts" se ela não existir
mkdir -p scripts

# criação do banner 
cat <<EOF > scripts/banner.py
import os
import time
from tqdm import tqdm
from função import version
version()
def banner():
    print('''
* \033[33mProgramador/Python/JavaScript/HTML & CSS
 \033[m
* \033[33mDesenvolvedor/HTML_CSS/Android-Studio
 \033[m
========================================================
\033[34m
           _____
          |_   _|__ _ __ _ __ ___  _   ___  __
            | |/ _ \ '__| '_ , _ \| | | \ \/ /
            | |  __/ |  | | | | | | |_| |>  <
            |_|\___|_|  |_| |_| |_|\__,_/_/\_\

\033[m
                    * \033[31mHackng/Python \033[m

========================================================

    ''')

while True:
    banner()
    print('''\033[36m# Faça a escolha do seu terminal de comando!\033[m
\033[33m[1] + termux
[2] + ubuntu
[3] + kali\033[m
\033[36m# Para fazer a instalação de todos os seus pacotes!\033[m
\033[31m[00] - Instalação de pacotes\033[m
    
    ''')
    senha = input("\033[34mTerminal: \033[m")
    print()
    if senha == "1":
        os.system("clear")
        print()
        break
    elif senha == "3":
        os.system("clear")
        print("=" * 56)
        print("\033[33mSistema Kali-Linux\033[m".center(55))
        print("=" * 56)
        print()
        os.system("neofetch")
        print('''
========================================================
          \033[33mKali-Linux Emulador de Comando\033[m
--------------------------------------------------------
\033[34m* Sistema Termux/Kali-Linux/github.com
* Sistema Android
* Programa Python
* Programa JavaScript
* Desenvolvimento HTML & CSS \033[m
========================================================
''')
        os.system('nethunter')
        print()
        os.system("clear")
    elif senha == "2":
        os.system("clear")
        print("=" * 56)
        print("\033[33mSistema Ubuntu-Linux\033[m".center(55))
        print("=" * 56)
        print()
        os.system("neofetch")
        print('''
========================================================
              \033[33mUbunto Emulador de Comando\033[m
--------------------------------------------------------
\033[34m* Sistema Termux/Kali-Linux/github.com
* Sistema Android
* Programa Python
* Programa JavaScript
* Desenvolvimento HTML & CSS \033[m
========================================================
''')
        os.system('proot-distro login ubuntu')
        print()
        os.system("clear")
    elif senha == "00":
        print("\033[34mPreparando para Reinstalação.\033[m")
        time.sleep(3)
        # Simulando um download de um arquivo de 100 MB
        total_size = 1000
        block_size = 10

        # Cria uma barra de progresso com o total_size
        progress_bar = tqdm(total=total_size, unit='MB', desc='Atualizando')

        # Loop para simular o download do arquivo
        for i in range(total_size // block_size):
          # Simula o download de um bloco de dados
          time.sleep(0.1)
    
          # Atualiza a barra de progresso com o tamanho do bloco baixado
          progress_bar.update(block_size)

        # Fecha a barra de progresso
        progress_bar.close()

        print('Download completo!')

        os.system('''
        apt update
        pkg upgrade -y
        termux-setup-storage
        pkg i python -y
        pkg i python2 -y
        pkg i nodejs -y
        pkg i python3 -y
        pkg i git -y
        pkg i android-tools -y
        pkg i texinfo -y
        pkg i figlet -y
        pkg i fish -y
        pkg i php -y
        pkg i micro -y
        pkg i neofetch -y
        pkg i tree -y
        pkg i sl -y
        pkg i nmap -y
        pkg i o-editor -y
        git clone https://github.com/tegal1337/CiLocks
        cd CiLocks
        chmod +x cilocks
        cd
        git clone https://github.com/Kiny-Kiny/Kiny-Painel
        git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git
        git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
        ''')
        kali_install = str(input("Deseja instalar Kali-linux [Y/N]? "))
        if kali_install == "y":
            os.system('''
        pkg install wget
        wget -O install-nethunter-termux https://offs.ec/2MceZWr
        chmod +x install-nethunter-termux
        ./install-nethunter-termux
        nh-r
        ''')
        else:
            print('Sistema concluido!')
        unbuto_install = str(input('Deseja instalar Unbuto [Y/N]? '))
        if unbuto_install == "y":
            os.system('''
        pkg i proot-distro -y
        proot-distro install ubuntu
        proot-distro login ubuntu
        ''')

    elif senha == "login":
        os.system("login")
    else:
        os.system("clear")
        print("\033[31mErro Digite uma senha Valida!\033[m")
        print()
        time.sleep(1)
        os.system("clear")
EOF

# versão do sistema 
cat <<EOF > scripts/função.py
def version():
    print("\033[34mVersão-BETA\033[m \033[35m2.6\033[m")
EOF

# interface 
cat <<EOF > scripts/interface.py
from função import version
version()
print(f'''
* \033[33mPrgramador/Python/JavaScript\033[m
\033[34m
* \033[33mDesenvolvedor/HTML_CSS/Android-Studio
 \033[m
         _____________HackerEtico_____________
          _____
         |_   _|__ _ __ _ __ ___  _   ___  __
           | |/ _ \ '__| '_ , _ \| | | \ \/ /
           | |  __/ |  | | | | | | |_| |>  <
           |_|\___|_|  |_| |_| |_|\__,_/_/\_\ 
         ____________Linux/Hackng_____________
\033[m
              * \033[33mSegurança da Informação\033[m
              * \033[33mDev-Scripter\033[m
              * \033[33mDesenvolvedor\033[m

* \033[31mTerminal de Comando\033[m.
* \033[31mSistema Operacional Android\033[m.
________________________________________________________

 \033[2mSeja bem-vondo Usuario!!\033[m
''')
EOF

# Define permissões de execução para os scripts
chmod +x scripts/banner.py
chmod +x scripts/função.py
chmod +x scripts/interface.py

echo "Scripts criados com sucesso na pasta 'scripts'."

#!/bin/bash
apt update && pkg upgrade -y
# Caminho para o arquivo que você deseja modificar
caminho_arquivo="/data/data/com.termux/files/usr/etc/bash.bashrc"

# Seus scripts que substituirão o conteúdo do arquivo
seus_scripts="
# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[31m\]┌─[\[\e[37m\]\T\[\e[31m\]]─────\e[1;93m[>'
#comandos inicial do terminal.
pkg install fish -y
pkg install python -y
pkg install python2 -y
pkg install python3 -y
pip install tqdm
termux-setup-storage
cd ~
sleep 1
cd /data/data/com.termux/files/home/SistemaHCK/scripts
ls
cd /data/data/com.termux/files/home/SistemaHCK/scripts
clear
python banner.py
cd ~
pkg i upgrade -y
alias cls==clear
sleep 1
clear
cd /data/data/com.termux/files/home/SistemaHCK/scripts
python interface.py
cd
fish
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions."

# Substituir o conteúdo do arquivo
echo "$seus_scripts" > "$caminho_arquivo"
clear
echo "Substituição concluída com sucesso!"
sleep 2
login
clear
