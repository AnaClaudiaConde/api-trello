describe "post" do
  id_board = 0

  context "when new board" do
    result = HTTParty.post(
      "https://api.trello.com/1/boards/?name=DBServer&defaultLabels=true&defaultLists=false&keepFromSource=none&prefs_permissionLevel=private&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
    )
    puts "entrou"

    it { expect(result.response.code).to eql "200"}
    
    id_board = result.parsed_response["id"]
  end
end