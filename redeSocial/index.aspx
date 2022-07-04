<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="redeSocial.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/style.css" rel="stylesheet"/>
    <title>Rede Social</title>
    <script src="https://kit.fontawesome.com/26060793be.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <div class="conteudo-header">
                    <h3>CloneBook</h3>
                    <input type="search" placeholder="Pesquisar"/>
                    <i class="fas fa-search"></i>
                </div>
            </header>

            <div class="container">
                <div class="perfil">
                   <div class="fundo-perfil">
                       <asp:Image ID="imgFundoPerfil" class="foto-fundo" runat="server" />
                   </div>
                    
                   <div class="perfil-baixo">
                       <asp:Image ID="imgPerfil" class="foto-perfil" runat="server" />
                       
                       <div class="infos-perfil">
                           <div class="infos">
                               <asp:Literal ID="litNomePerfil" runat="server"></asp:Literal>
                               <asp:Literal ID="litInfoLocalizacao" runat="server"></asp:Literal>
                               <asp:Literal ID="litInfoIdade" runat="server"></asp:Literal>
                               <asp:Literal ID="litInfoSigno" runat="server"></asp:Literal>
                               <asp:Literal ID="litInfoRelacionamento" runat="server"></asp:Literal>
                               <asp:Literal ID="litInfoTelefone" runat="server"></asp:Literal>
                               <asp:Literal ID="litInfoEmail" runat="server"></asp:Literal>
                           </div>

                            <div class="botoes-perfil">
                               <button id="btnAdicionar"><i class="fas fa-user-plus"></i> Adicionar</button>
                               <button id="btnMensagem"> <i class="far fa-comment"></i> Mensagem</button>
                            </div>
                       </div>
                   </div>    
                </div>

                <div class="container-flex">
                    <div class="fotos-amigos">
                        <div class="fotos">
                            <asp:Literal ID="litFotosQuantidade" runat="server"></asp:Literal>
                            <div class="imagens-wrap">
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgFotoPublicacao" runat="server" />
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgFotoPublicacao2" runat="server" />
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgFotoPublicacao3" runat="server" />
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgFotoPublicacao4" runat="server" />
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgFotoPublicacao5" runat="server" />
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgFotoPublicacao6" runat="server" />
                                </div>
                            </div>
                        </div>
                        <div class="amigos">
                            <asp:Literal ID="litAmigosQuantidade" runat="server"></asp:Literal>
                            <div class="imagens-wrap">
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgAmigo1" runat="server" />
                                    <asp:Literal ID="litAmigo1" runat="server"></asp:Literal>
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgAmigo2" runat="server" />
                                    <asp:Literal ID="litAmigo2" runat="server"></asp:Literal>
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgAmigo3" runat="server" />
                                    <asp:Literal ID="litAmigo3" runat="server"></asp:Literal>
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgAmigo4" runat="server" />
                                    <asp:Literal ID="litAmigo4" runat="server"></asp:Literal>
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgAmigo5" runat="server" />
                                    <asp:Literal ID="litAmigo5" runat="server"></asp:Literal>
                                </div>
                                <div class="imagem-amigo">
                                    <asp:Image ID="imgAmigo6" runat="server" />
                                    <asp:Literal ID="litAmigo6" runat="server"></asp:Literal>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="publicacoes">
                        <div class="inicio-publicacoes">  
                            <h3>Publicações</h3>
                        </div>

                        <div class="postagens">
                            <div class="infos-postagem">
                                <asp:Image ID="imgPerfilPublicacao" class="foto-perfil-postagens" runat="server" />
                                <div class="nome-data">
                                    <asp:Literal ID="litNomePerfilPublicacao" runat="server"></asp:Literal>
                                    <asp:Literal ID="litDataPublicacao" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <asp:Image ID="imgPublicacao" class="foto-postagens" runat="server" />
                            <div class="likes-comentarios">
                                <asp:Literal ID="litCurtidas" runat="server"></asp:Literal>
                                <asp:Literal ID="litComentarios" runat="server"></asp:Literal>
                            </div>
                            <div class="reacoes">
                                <p>
                                    <i class="far fa-thumbs-up"></i>
                                    Curtir
                                </p>
                                <p>
                                    <i class="far fa-comment-alt"></i>
                                    Comentários
                                </p>
                                <p>
                                    <i class="fas fa-share"></i>
                                    Compartilhar
                                </p>
                            </div>
                            <div class="comentarios">
                                <asp:Image ID="imgPerfilComentario" class="foto-perfil-postagens" runat="server" />
                                <input type="search" class="input-comentar" placeholder="Escreva um comentário"/>
                            </div>
                        </div>

                        <div class="postagens">
                            <div class="infos-postagem">
                                <asp:Image ID="imgPerfilPublicacao2" class="foto-perfil-postagens" runat="server" />
                                <div class="nome-data">
                                    <asp:Literal ID="litNomePerfilPublicacao2" runat="server"></asp:Literal>
                                    <asp:Literal ID="litDataPublicacao2" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <asp:Image ID="imgPublicacao2" class="foto-postagens" runat="server" />
                            <div class="likes-comentarios">
                                <asp:Literal ID="litCurtidas2" runat="server"></asp:Literal>
                                <asp:Literal ID="litComentarios2" runat="server"></asp:Literal>
                            </div>
                            <div class="reacoes">
                                <p>
                                    <i class="far fa-thumbs-up"></i>
                                    Curtir
                                </p>
                                <p>
                                    <i class="far fa-comment-alt"></i>
                                    Comentários
                                </p>
                                <p>
                                    <i class="fas fa-share"></i>
                                    Compartilhar
                                </p>
                            </div>
                            <div class="comentarios">
                                 <asp:Image ID="imgPerfilComentario2" class="foto-perfil-postagens" runat="server" />
                                <input type="search" class="input-comentar" placeholder="Escreva um comentário"/>
                            </div>
                        </div>

                        <div class="postagens">
                            <div class="infos-postagem">
                                <asp:Image ID="imgPerfilPublicacao3" class="foto-perfil-postagens" runat="server" />
                                <div class="nome-data">
                                    <asp:Literal ID="litNomePerfilPublicacao3" runat="server"></asp:Literal>
                                    <asp:Literal ID="litDataPublicacao3" runat="server"></asp:Literal>
                                </div>

                            </div>
                            <asp:Image ID="imgPublicacao3" class="foto-postagens" runat="server" />
                            <div class="likes-comentarios">
                                <asp:Literal ID="litCurtidas3" runat="server"></asp:Literal>
                                <asp:Literal ID="litComentarios3" runat="server"></asp:Literal>
                            </div>
                            <div class="reacoes">
                                <p>
                                    <i class="far fa-thumbs-up"></i>
                                    Curtir
                                </p>
                                <p>
                                    <i class="far fa-comment-alt"></i>
                                    Comentários
                                </p>
                                <p>
                                    <i class="fas fa-share"></i>
                                    Compartilhar
                                </p>
                            </div>
                            <div class="comentarios">
                                 <asp:Image ID="imgPerfilComentario3" class="foto-perfil-postagens" runat="server" />
                                <input type="search" class="input-comentar" placeholder="Escreva um comentário"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
