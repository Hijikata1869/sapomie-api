Review.delete_all
User.delete_all
Player.delete_all
Club.delete_all
League.delete_all

League.create!(
  name: "Premier League"
)

league = League.find_by!(name: "Premier League")

Club.create!(
  league_id: league.id,
  name: "Liverpool FC"
)

club = Club.find_by!(name: "Liverpool FC")

Player.create!(
  club_id: club.id,
  name: "Alisson",
  position: "Goalkeeper",
  nationary: "Brazil",
  date_of_birth: "1992-10-02"
)

player = Player.find_by(name: "Alisson")

User.create!(
  nickname: "seeduser",
  email: "seeduser@example.com",
  password: "seed_pass",
  password_confirmation: "seed_pass",
  self_introduction: "seeduser self introduction"
)

user = User.find_by!(nickname: "seeduser")

Review.create!(
  user_id: user.id,
  player_id: player.id,
  review: "世界で最も偉大なゴールキーパー。神ソン。"
)
