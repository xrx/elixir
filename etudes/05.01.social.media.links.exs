defmodule SmLink do
  @moduledoc """
  Builds social media links
  """

  @vsn 0.1

  @doc """
  Gets the desired social network
  """

  @spec get_network() :: char()
  def get_network do
    network = IO.gets("Choose network: F)acebook, I)nstagram, T)witter, G)ithub ")
    sn = char_to_sn(String.first(network))
    username = get_username(sn)
    build_link(sn, username)
  end

  defp networks do
    %{"F" => :facebook, "I" => :instagram, "T" => :twitter, "G" => :github}
  end

  @doc """
  Given a character, returns an atom representing the
  specified social network (or the atom unknown if a bad character is given).
  """

  @spec char_to_sn(String.t()) :: char()
  def char_to_sn(character) do
    network_upcase = String.upcase(character)
    cond do
      network_upcase == "F" -> networks[network_upcase]
      network_upcase == "I" -> networks[network_upcase]
      network_upcase == "T" -> networks[network_upcase]
      network_upcase == "G" -> networks[network_upcase]
      true -> :unknown
    end
  end

  def get_username(social_network) do
    case social_network do
      :unknown -> ""
      _ -> String.strip(IO.gets("Specify username > "))
    end
  end

  def build_link(sn, username) do
    case sn do
      :unknown -> IO.puts("Tschüss")
      _ -> "https://#{to_string(sn)}.com/#{username}"
    end
  end
end