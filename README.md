# Organo-Robot


Antes de tudo, precisamos garantir que temos tudo preparado e instalado em nossa máquina.

# Instalar Python
Vou começar acessando a página oficial do Python e fazendo o download do instalador dele.

Afinal de contas, o Robot é feito em Python. Para executar o Robot, o Python precisa estar instalado na máquina. Após fazer o download, podemos executar o instalador.

No momento que abrir a primeira tela da instalação, é importante que você selecione a caixa de seleção "Add python.exe to PATH". Isso garante que, quando executarmos o Robot em nossa máquina, o Windows encontre o caminho de conexão com o Python. Em seguida, podemos clicar na opção "Install Now" para fazer a instalação.

Agora, que o Python está instalado, podemos fechar o instalador.

# Instalar Node
O próximo passo é instalar o Node.

Por que vamos instalar o Node?

O Organo, o projeto que usaremos como base para nossos testes, foi criado em Node.

Como vamos executar localmente precisamos ter o Node instalado também. Assim como fizemos com o Python, basta acessar a página oficial do Node e clicar para fazer o download do instalador.
https://nodejs.org/en/download

Após fazer o download na máquina, podemos executar o instalador e seguir clicando em "Next" até o final da instalação. O último passo é clicar em "Install" e aguardar a instalação no computador.

# Instalar Robot Framework
Em seguida, vamos instalar o Robot Framework. Para isso, acessaremos a página oficial do Robot, onde temos algumas dicas e códigos para realizar a instalação.

Na aba "Install" da página oficial do Robot, há o seguinte comando:

<textarea rows="4" cols="50">pip install robotframework</textarea>


Esse comando deve ser copiado e executado no prompt de comando do Windows. Note que este deve ser executado como administrador.

Podemos colar o comando no prompt e pressionar "Enter" para executar a instalação.

# Instalar SeleniumLibrary
Após a conclusão da instalação do Robot Framework, o próximo passo é instalar a Selenium Library. Da mesma forma que foi feito com o Robot, acesse a documentação oficial da Selenium no GitHub, onde estão os passos de instalação. Copie o seguinte comando e execute no prompt do Windows.

<h4>pip install --upgrade robotframework-seleniumlibrary<h4>


# Instalar o ChromeDriver
Acesse aqui a página para download do Chrome Driver.

Agora já instalamos o Python, o Node, o Robot e a Selenium Library. O próximo passo é instalar o ChromeDriver, ferramenta que vai estabelecer a conexão entre a Selenium Library e o nosso navegador. Para isso, no site do ChromeDriver estão listadas todas as versões possíveis para instalação.

Como determinar qual é a versão que você precisa instalar?

No seu navegador Google Chrome, clique nos três pontinhos abaixo do botão de fechar janela (botão "Personalizar e controlar o Google Chrome"). Depois, selecione a opção "Ajuda > Sobre o Chrome".

Nesta página, a versão do Chrome é exibida. É importante que o seu navegador Google Chrome esteja atualizado. Em seguida, retorne à página oficial do ChromeDriver para identificar qual é a versão mais adequada para você.
https://googlechromelabs.github.io/chrome-for-testing/#stable

Navegando pela página do ChromeDriver, é possível ver as versões disponíveis. É interessante observar que, logo no topo da página, há uma mensagem informando sobre outra forma de instalação para versões do navegador acima da versão 115. Já há um link que redireciona você para realizar essa instalação nesta página intitulada "Chrome for Testing availability".

Ao rolar pela página, procure pela versão compatível com o seu navegador. No meu caso, a versão mais próxima do meu navegador é a versão com final 170, já que a versão do meu navegador é 115.0.5790.171.

Verifique a versão do seu navegador! Caso a versão do seu navegador não seja exatamente a mesma, é recomendado instalar a mais próxima dele.

Para encontrar a versão compatível com o meu navegador, consulto essa lista onde tenho disponível todas as opções para os sistemas operacionais existentes, como Windows e Mac. No meu caso, vou fazer o download para Windows 32.

Vamos copiar o link da opção ideal para a versão do nosso navegador. Após copiar o link, você pode clicar nele com o botão direito e selecionar a opção "Ir Até URL". A partir disso, você será redirecionado para a página de download. Ao clicar em "Salvar", o download será iniciado.

Após a conclusão do download, vou até minha pasta de downloads onde salvei o arquivo de instalação do ChromeDriver. O que preciso fazer agora é abrir o arquivo. Dentro dele, encontraremos uma outra pasta, pois se trata de um arquivo compactado (zip). Descompactando a pasta, temos dois arquivos disponíveis.

Vamos precisar realizar algumas ações com esses arquivos.

Vamos abrir o arquivo ZIP e entrar na pasta com os arquivos. Temos 2 arquivos, o chromedriver e um documento chamado LICENSE.chromedriver. Vamos recortar o Chrome Driver. Para fazer isso, clique nele e selecione a opção "Recortar" ou o atalho "Ctrl + X".

Precisamos mover o arquivo recortado para dentro da pasta "Windows", permitindo assim que todas as pessoas usuárias do sistema tenham acesso a essa ferramenta. Para isso, no menu esquerdo do Windows, navegue até a pasta "Windows". Dentro da pasta "Windows", na barra de pesquisa, procure pela pasta "System32". Ao encontrá-la, abra-a e use o atalho "Ctrl + V" para colar o arquivo chromedriver que recortamos. Será solicitada a permissão para realizar essa ação. Ao confirmar, temos o ChromeDriver instalado.

# Instalar do Organo
O próximo passo de instalação será a instalação do Organo.

Acesse este link direto para o download do Organo.
Git: https://github.com/Henrique-Arau/site-organo

Ao clicar no link acima, você poderá iniciar o download e salvar na pasta desejada. No meu caso, estou salvando todos os arquivos na minha área de trabalho.

Após concluir o download do Organo, o próximo passo é extrair o conteúdo do arquivo ZIP. Para isso, clique com o botão direito no arquivo e selecione a opção "Extrair tudo". Concluída a extração, é seguro excluir o arquivo compactado. Em seguida, dentro da pasta extraída, renomeie para "Organo".

Agora, recorte a pasta "Organo",volte para a sua pasta inicial e cole a pasta aqui. Dessa forma conseguimos um caminho mais curto para acessar o conteúdo da pasta. Se olharmos na barra de endereços do explorador de arquivos do Windows agora e clicar nela, podemos observar que, após o caminho do desktop, já temos o conteúdo da pasta. Isso será útil para visualizar posteriormente.

C:\Users\adria\Desktop\organo

Vamos realizar o comando "Ctrl+C" para copiar o caminho do seu diretório até o Organo. Em seguida, retornaremos ao prompt de comando.

No prompt de comando, digitaremos o comando CD, seguido por espaço, e colaremos o endereço para o diretório do Organo. Após pressionar "Enter", teremos o prompt de comando direcionando diretamente para aquele diretório.

O próximo passo é instalar esse projeto no computador, onde entra a instalação do Node. Vamos digitar o comando npm install para realizar a instalação local do Organo no computador.

<h4>npm install</h4>


Após pressionar "Enter", aguardaremos a conclusão da instalação.

Com a instalação concluída, é hora de ver o Organo em funcionamento.

No prompt de comando, digitei o comando CLS para limpar minha tela para que possamos ver a mágica acontecer.

Vamos digitar npm start e pressionar "Enter" para executar o Organo na nossa máquina.

<h4>npm start</h4>

Começou a executar já abriu no navegador com o endereço localhost:3000 aparecendo na barra de endereço. Esse é o site onde vamos realizar nossos testes.
