describe "delete board" do
  context "when a registered board", wip: true do
    result = HTTParty.get(
      "https://api.trello.com/1/members/teste67929748/boards?filter=all&fields=all&lists=none&memberships=none&organization=false&organization_fields=name%2CdisplayName&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )

    result.each do |board|
      if board["name"] = "DBServer"
        id_board = board["id"]
        result = HTTParty.delete(
                              "https://api.trello.com/1/boards/#{id_board}?key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
        )
        it { expect(result.response.code).to eql "200"}
        break
      end
    end
  end      
end