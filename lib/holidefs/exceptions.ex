defmodule Holidefs.Exceptions do
  defmodule FunctionNotDefinedError do
    defexception [:name]

    @impl Exception
    def message(exception) do
      "Function `#{exception.name}` is not defined."
    end
  end
  defmodule InvalidRuleMapError do
    defexception [:map]

    @impl Exception
    def message(exception) do
      """
      Expected a rule map with one of these sets of keys:
       - `week` and `wday`
       - `mday`
       - `function`
      
      but got
      #{inspect exception.map}
      """
    end
  end
end