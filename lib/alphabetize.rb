def alphabetize(arr)
  esp = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  def custom_sort(a,b,esp)
    a.split('').each_with_index {|char, i|
      return esp.index(a[i]) <=> esp.index(b[i]) if a[i] != b[i]
    }
  end

  arr.sort{ |a,b| custom_sort(a,b,esp)}
end
