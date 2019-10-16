describe "card_action" do
  id_board = 0
  id_list = 0
  id_card = 0
  result_list = 0

  context "when new list" do

    result = HTTParty.get(
      "https://api.trello.com/1/members/teste67929748/boards?filter=all&fields=all&lists=none&memberships=none&organization=false&organization_fields=name%2CdisplayName&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    result.each do |board|
      if board["name"] = "DBServer"
        id_board = board["id"]
        puts "Result board id: #{id_board}"
        break
      end
    end

    result_list = HTTParty.get(
      "https://api.trello.com/1/boards/#{id_board}/lists?cards=none&card_fields=all&filter=open&fields=all&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    result_list.each do |list|
      if list["name"] == "Backlog"
        id_list = list["id"]
        puts "Result list id: #{id_list}"
        break
      end
    end

    result = HTTParty.post(
      "https://api.trello.com/1/cards?name=teste&idList=#{id_list}&keepFromSource=all&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    id_card = result.parsed_response["id"]
    puts "Result id card #{id_card}" 

    it { expect(result.response.code).to eql "200"}
  end

  context "edit name card" do
    result = HTTParty.put(
      "https://api.trello.com/1/cards/#{id_card}?name=Teste DBServer&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )
    it { expect(result.response.code).to eql "200"}
  end

  context "move card ToDo" do

    result_list.each do |list|
      if list["name"] == "ToDo"
        id_list = list["id"]
        break
      end
    end

    result = HTTParty.put(
      "https://api.trello.com/1/cards/#{id_card}?idList=#{id_list}&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    it { expect(result.response.code).to eql "200"}
  end

  context "move card in Progress" do

    result_list.each do |list|
      if list["name"] == "in Progress"
        id_list = list["id"]
        break
      end
    end

    result = HTTParty.put(
      "https://api.trello.com/1/cards/#{id_card}?idList=#{id_list}&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    it { expect(result.response.code).to eql "200"}
  end

  context "move card Testing" do

    result_list.each do |list|
      if list["name"] == "Testing"
        id_list = list["id"]
        break
      end
    end

    result = HTTParty.put(
      "https://api.trello.com/1/cards/#{id_card}?idList=#{id_list}&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    it { expect(result.response.code).to eql "200"}
  end

  context "move card Done" do

    result_list.each do |list|
      if list["name"] == "Done"
        id_list = list["id"]
        break
      end
    end

    result = HTTParty.put(
      "https://api.trello.com/1/cards/#{id_card}?idList=#{id_list}&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    it { expect(result.response.code).to eql "200"}
  end
end