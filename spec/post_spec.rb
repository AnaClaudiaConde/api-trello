# describe "post" do
#   id_board = 0

#   context "when new board" do
#     result = HTTParty.post(
#       "https://api.trello.com/1/boards/?name=DBServer&defaultLabels=true&defaultLists=false&keepFromSource=none&prefs_permissionLevel=private&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
#     )
#     puts "entrou"

#     it { expect(result.response.code).to eql "200"}
#     id_board = result.parsed_response["id"]
#     puts "ID Board: when new board => #{id_board}"
#   end

#   context "when new list" do
#     lists = ["Done", "Testing", "in Progress", "ToDo", "Backlog"]
#     lists.each do |test|
#       puts "ID Board: when new list => #{id_board}"
#       result = HTTParty.post(
#         "https://api.trello.com/1/lists?name=#{test}&idBoard=#{id_board}&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8"
        
#       )
#       puts "entrou2"
#       it { expect(result.response.code).to eql "200"}
#     end
#   end

#   context "when new card in a list" to
#     result = HTTParty.post(
#       "https://api.trello.com/1/cards?name=teste&idList=5da5321086960a16db05299a&keepFromSource=all&key=a3db7b8e86c9c0caa17cdcaeebe31e14&token=a0733c9a22fa4e4ca4972c90deb85bf716111c70cc2d5908b72ed61cddcd80b8
#     )
#   end 


# end