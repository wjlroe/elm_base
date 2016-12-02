module Components.ArticleList exposing (view)

import Html exposing (Html, text, ul, li, div, h2)
import Html.Attributes exposing (class)
import List
import Article

articles : List Article.Model
articles =
    [ { title = "Article 1", url = "http://google.com", postedBy = "Author 1", postedOn = "20/06/16" }
    , { title = "Article 2", url = "http://google.com", postedBy = "Author 2", postedOn = "20/06/16"}
    , { title = "Article 3", url = "http://google.com", postedBy = "Author 3", postedOn = "20/06/16" }
    ]

renderArticle : Article.Model -> Html a
renderArticle article =
    li [] [ Article.view article ]

renderArticles : List (Html a)
renderArticles =
    List.map renderArticle articles

view : Html a
view =
    div [ class "article-list" ] [
         h2 [] [ text "Article List" ]
        , ul [] renderArticles
        ]
