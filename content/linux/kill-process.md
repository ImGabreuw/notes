# Interromper um processo no Linux

> ## **A partir do número da porta**

1. Obter o ID do processo (`PID`)

   ```shell
   $ lsof -i :<número da porta>
   ```

   ```shell
   $ lsof -i :3000

   $ COMMAND   PID    USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
     node    19785 gabriel   20u  IPv6 329838      0t0  TCP *:3000 (LISTEN)
   ```

2. Interromper o processo

   ```shell
   $ kill -15 <ID do processo>
   ```

   ```shell
   $ kill -15 19785
   ```

   > **OBS**: a opção `-15` é mais recomendada do que a `-9` (_overkill_), pois a primeira realiza a finalização do processo de forma mais orgânica
