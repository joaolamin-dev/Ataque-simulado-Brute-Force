
# Plano de Testes — Força Bruta

## 1. Escopo
- Alvo: Metasploitable 2 (IP: 192.168.56.101)
- Serviços: FTP (21), HTTP (80 — DVWA), SMB (445)
- Período: sessão de laboratório

## 2. Ferramentas
- Kali Linux
- Medusa
- curl / lftp / smbclient
- Burp Suite (opcional)

## 3. Passos
1. Capturar serviços: `nmap -sV -p21,80,445 192.168.56.101`
2. Enumerar usuários (se aplicável): `enum4linux`, `smtp-user-enum`, recon scripts
3. Preparar wordlists (`/wordlists`)
4. Executar Medusa por serviço, começar com número reduzido de threads e aumentar conforme necessário
5. Registrar resultados e timestamps
6. Aplicar mitigação sugerida e re-testar (opcional)

## 4. Critérios de sucesso
- Documentação completa no README e em `/docs`
- Registro das credenciais descobertas (se houver) com evidências
- Plano de mitigação aplicável

