def check_grammar(text)
  return "There is no text to check." if text !~ /[A-Za-z]/
  capital = text[0] !~ /[A-Z]/ ? "no" : "yes"
  ending = text[-1] !~ /[^\.!?]/ ? "yes" : "no" 

  if capital == "yes" and ending == "yes"
    "Starts with a captial letter and ends with suitable puctuation."
  elsif capital == "yes"
    "Does not end with suitable punctuation."
  elsif ending == "yes"
    "Has no starting capital letter."
  else
    "Does not start with a capital letter nor end with suitable punction."
  end 
end