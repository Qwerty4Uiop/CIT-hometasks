defmodule Primes do
    defp isPrime(num) do
        (2..round(:math.sqrt(num))
        |> Enum.filter(fn(x) -> rem(num, x) == 0 && num != 2 end)
        |> length()) == 0
    end
    
    defp primes(n, _, counter) when counter == n, do: []

    defp primes(n, acc, counter) do
        if (isPrime(acc)), do: [acc | primes(n, acc + 1, counter + 1)], else: primes(n, acc + 1, counter)
    end

    def printFirstPrimes(n), do: Enum.each(primes(n, 2, 0), fn(x) -> IO.puts(x) end)
end

Primes.printFirstPrimes(1000)
