module ApplicationHelper
    $topstories = "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty"
    
    #Busca as colunas das stories de acordo com o ranking da top stories ou ultima atualização
    def story(ranking, colunm)
        resp = RestClient.get $topstories
        id = JSON.parse(resp.body)[ranking]
        story = RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{id}.json?print=pretty"
        JSON.parse(story.body)[colunm]
    end

end
