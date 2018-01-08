defmodule RPG do
  def total_points(abilities) do
    case abilities do
      %{strength: _, dexterity: _, intelligence: _} = abilities ->
        %{strength: str} = abilities
        %{dexterity: dex} = abilities
        %{intelligence: int} = abilities
        str=str*2salary = IO.gets "What is your salary?\n"
        dex=dex*3
        int=int*3
        #abilities = %{strength: str, dexterity: dex, intelligence: int}
        str+dex+int
    end
  end
end
