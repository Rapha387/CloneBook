using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace redeSocial
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["user"] == null || Request["user"] == "")
            {
                Response.Redirect("invalido.aspx");
            }

            string users = Request["user"].ToString().ToLower();

            if (File.Exists(Request.PhysicalApplicationPath + @"xmls\users.xml"))
            {
                XmlDocument arquivo = new XmlDocument();
                arquivo.Load(Request.PhysicalApplicationPath + @"xmls\users.xml");
                XmlNodeList listaUsers= arquivo.GetElementsByTagName("USUARIO");
                
                foreach (XmlNode user in listaUsers)
                {
                    if (users == user["ID"].InnerText.ToLower())
                    {
                        //FOTOS PERFIL
                        imgFundoPerfil.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGFUNDOPERFIL"].InnerText}";
                        imgPerfil.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";

                        //INFORMACOES
                        litNomePerfil.Text = $"<h3> {user["NOME"].InnerText} </h3>";
                        litInfoLocalizacao.Text = $"<p> {user["LOCALIZACAO"].InnerText} </p>";
                        litInfoIdade.Text = $"<p> {user["IDADE"].InnerText} </p>";
                        litInfoSigno.Text = $"<p> {user["SIGNO"].InnerText} </p>";
                        litInfoRelacionamento.Text = $"<p> {user["RELACIONAMENTO"].InnerText} </p>";
                        litInfoTelefone.Text = $"<p> {user["TELEFONE"].InnerText} </p>";
                        litInfoEmail.Text = $"<p> {user["EMAIL"].InnerText} </p>";

                        //FOTOS
                        litFotosQuantidade.Text = $"<h3> Fotos ({user["QUANTIDADEFOTOS"].InnerText}) </h3>";
                        imgFotoPublicacao.ImageUrl = $"images/{user["ID"].InnerText}/fotos/{user["FOTOPUBLICACAO1"].InnerText}";
                        imgFotoPublicacao2.ImageUrl = $"images/{user["ID"].InnerText}/fotos/{user["FOTOPUBLICACAO2"].InnerText}";
                        imgFotoPublicacao3.ImageUrl = $"images/{user["ID"].InnerText}/fotos/{user["FOTOPUBLICACAO3"].InnerText}";
                        imgFotoPublicacao4.ImageUrl = $"images/{user["ID"].InnerText}/fotos/{user["FOTOPUBLICACAO4"].InnerText}";
                        imgFotoPublicacao5.ImageUrl = $"images/{user["ID"].InnerText}/fotos/{user["FOTOPUBLICACAO5"].InnerText}";
                        imgFotoPublicacao6.ImageUrl = $"images/{user["ID"].InnerText}/fotos/{user["FOTOPUBLICACAO6"].InnerText}";

                        //AMIGOS
                        litAmigosQuantidade.Text = $"<h3>Amigos ({user["QUANTIDADEAMIGOS"].InnerText})</h3>";
                        imgAmigo1.ImageUrl = $"images/{user["ID"].InnerText}/amigos/{user["IMGAMIGO1"].InnerText}";
                        litAmigo1.Text = user["NOMEAMIGO1"].InnerText;
                        imgAmigo2.ImageUrl = $"images/{user["ID"].InnerText}/amigos/{user["IMGAMIGO2"].InnerText}";
                        litAmigo2.Text = user["NOMEAMIGO2"].InnerText;
                        imgAmigo3.ImageUrl = $"images/{user["ID"].InnerText}/amigos/{user["IMGAMIGO3"].InnerText}";
                        litAmigo3.Text = user["NOMEAMIGO3"].InnerText;
                        imgAmigo4.ImageUrl = $"images/{user["ID"].InnerText}/amigos/{user["IMGAMIGO4"].InnerText}";
                        litAmigo4.Text = user["NOMEAMIGO4"].InnerText;
                        imgAmigo5.ImageUrl = $"images/{user["ID"].InnerText}/amigos/{user["IMGAMIGO5"].InnerText}";
                        litAmigo5.Text = user["NOMEAMIGO5"].InnerText;
                        imgAmigo6.ImageUrl = $"images/{user["ID"].InnerText}/amigos/{user["IMGAMIGO6"].InnerText}";
                        litAmigo6.Text = user["NOMEAMIGO6"].InnerText;

                        //PUBLICACOES
                        imgPublicacao.ImageUrl = $"images/{user["ID"].InnerText}/publicacoes/{user["IMGPUBLICACAO1"].InnerText}";
                        imgPerfilPublicacao.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";
                        imgPerfilComentario.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";
                        litNomePerfilPublicacao.Text = user["NOME"].InnerText;
                        litDataPublicacao.Text = $"<p> {user["DATAPUBLICACAO1"].InnerText} </p>";
                        litCurtidas.Text = $"<p> {user["LIKESPUBLICACAO1"].InnerText} curtidas </p>";
                        litComentarios.Text = $"<p> {user["COMENTARIOSPUBLICACAO1"].InnerText} curtidas </p>";

                        imgPublicacao2.ImageUrl = $"images/{user["ID"].InnerText}/publicacoes/{user["IMGPUBLICACAO2"].InnerText}";
                        imgPerfilPublicacao2.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";
                        imgPerfilComentario2.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";
                        litNomePerfilPublicacao2.Text = user["NOME"].InnerText;
                        litDataPublicacao2.Text = $"<p> {user["DATAPUBLICACAO2"].InnerText} </p>";
                        litCurtidas2.Text = $"<p> {user["LIKESPUBLICACAO2"].InnerText} curtidas </p>";
                        litComentarios2.Text = $"<p> {user["COMENTARIOSPUBLICACAO2"].InnerText} curtidas </p>";

                        imgPublicacao3.ImageUrl = $"images/{user["ID"].InnerText}/publicacoes/{user["IMGPUBLICACAO3"].InnerText}";
                        imgPerfilPublicacao3.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";
                        imgPerfilComentario3.ImageUrl = $"images/{user["ID"].InnerText}/perfil/{user["IMGPERFIL"].InnerText}";
                        litNomePerfilPublicacao3.Text = user["NOME"].InnerText;
                        litDataPublicacao3.Text = $"<p> {user["DATAPUBLICACAO3"].InnerText} </p>";
                        litCurtidas3.Text = $"<p> {user["LIKESPUBLICACAO3"].InnerText} curtidas </p>";
                        litComentarios3.Text = $"<p> {user["COMENTARIOSPUBLICACAO3"].InnerText} curtidas </p>";

                        return;
                    }
                }

                Response.Redirect("invalido.aspx");
            }
        }
    }
}