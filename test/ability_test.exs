defmodule DotaAbilityTest do
  use ExUnit.Case

  test "for_hero" do
    the_result = Dota.Ability.for_hero(52)
    correct_res = [
      %{"id" => 5241, "hero_id"=>52, "name"=>"leshrac_split_earth", "localized_name"=>"Split Earth"},
      %{"id" => 5242, "hero_id"=>52, "name"=>"leshrac_diabolic_edict", "localized_name"=>"Diabolic Edict"},
      %{"id" => 5243, "hero_id"=>52, "name"=>"leshrac_lightning_storm", "localized_name"=>"Lightning Storm"},
      %{"id" => 5244, "hero_id"=>52, "name"=>"leshrac_pulse_nova", "localized_name"=>"Pulse Nova"}
    ]

    assert (the_result -- correct_res) == []
    assert (correct_res -- the_result) == []
  end
end
