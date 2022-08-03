class Filter
    def topstories(quantstories)
        topstories = 'https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty'

        resp = RestClient.get "#{topstories}"
        puts JSON.parse(resp.body)[0,quantstories]

    end

    def laststories(quantstories)
        laststories = 'https://hacker-news.firebaseio.com/v0/askstories.json?print=pretty'

        resp = RestClient.get "#{laststories}"
        puts JSON.parse(resp.body)[0,quantstories]
    end
end



# nome da história ( site )
# score by nome da pessoa criado a tempo criação | hide | qtd comentários

# clicar e ver os comentários