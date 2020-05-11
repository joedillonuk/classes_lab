require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestTeam < MiniTest::Test


  def test_team_name
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    assert_equal("Darkplace", new_team.team_name)
  end

  def test_players
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    assert_equal(["Rick Dagless", "Liz Asher", "Lucien Sanchez"], new_team.players)
  end

  def test_coach
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    assert_equal("Thornton Reed", new_team.coach)
  end

  def test_update_coach
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    new_coach = new_team.set_coach_name("Won Ton")
    assert_equal("Won Ton", new_coach)
  end

  def test_add_new_player
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    new_player = new_team.add_new_player("Jim")
    assert_equal(["Rick Dagless", "Liz Asher", "Lucien Sanchez", "Jim"], new_player)
  end

  def test_find_player__found
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    player_found = new_team.find_player("Liz Asher")
    assert_equal(true, player_found)
  end

  def test_find_player__not_found
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    player_found = new_team.find_player("Skipper the Eyechild")
    assert_equal(false, player_found)
  end

  def test_add_points__win
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    total_points = new_team.add_points("win")
    assert_equal(3, total_points)
  end

  def test_add_points__draw
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    total_points = new_team.add_points("draw")
    assert_equal(1, total_points)
  end

  def test_add_points__lose
    new_team = Team.new("Darkplace", ["Rick Dagless", "Liz Asher", "Lucien Sanchez"], "Thornton Reed")
    total_points = new_team.add_points("lose")
    assert_equal(0, total_points)
  end

end
