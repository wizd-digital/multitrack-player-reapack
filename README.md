# Multitrack Player para REAPER (ReaPack)

Este repositório distribui o **Multitrack Player** pelo ReaPack. Ele tem só o pacote pronto para instalar; o player precisa de uma licença por máquina para funcionar.

## Antes de começar

Você precisa do **REAPER 7**, do **ReaPack** e de duas extensões instaladas pelo ReaPack:

- **ReaImGui** (a janela do player)
- **SWS/S&M extension**

No REAPER: **Extensions → ReaPack → Browse packages…**, procure cada uma, clique com o botão direito → **Install**, depois **Apply** e reinicie o REAPER.

## Instalar

1. No REAPER: **Extensions → ReaPack → Import repositories…**
2. Cole esta URL e clique em **OK**:

   ```
   https://raw.githubusercontent.com/wizd-digital/multitrack-player-reapack/main/index.xml
   ```

3. Abra **Extensions → ReaPack → Browse packages…**, digite **Multitrack** no filtro, clique com o botão direito em **Multitrack Player** → **Install** e depois em **Apply**.

O ReaPack instala o player em `Scripts/Wizd Digital/Multitrack Player/` e já cadastra as actions na lista de ações (**Actions → Show action list…**):

- `multitrack_player.lua` (abre o player; dê a ela um atalho, por exemplo Ctrl+M)
- `mp_click_tap.lua`, `mp_click_44.lua`, `mp_click_68.lua` e `mp_click_stop.lua` (click livre)
- `mp_go_to_next_region.lua`, `mp_go_to_previous_region.lua` e `mp_go_to_region_number.lua` (navegação por regiões)

Na primeira vez, o player abre na tela **LICENÇA**, com o código desta máquina para pedir a chave.

## Atualizar

**Extensions → ReaPack → Synchronize packages.** O atalho, a licença, o setlist e as suas preferências continuam valendo.

Uma versão recém-lançada pode levar até uns 5 minutos para aparecer.

Para voltar a uma versão anterior: em **Browse packages…**, clique com o botão direito em **Multitrack Player** → **Versions** → escolha a versão → **Apply**.

## Já tinha instalado pelo zip?

Para não ficar com duas cópias:

1. Instale pelo ReaPack, como acima.
2. Feche o player e apague a pasta antiga `Scripts/Multitrack Player` (em **Options → Show REAPER resource path…**).
3. Em **Actions → Show action list…**, remova a action antiga `multitrack_player.lua` (a que não está em `Wizd Digital`) e dê o atalho à action nova.

A licença, o setlist e as preferências não ficam na pasta do script, então continuam valendo.
