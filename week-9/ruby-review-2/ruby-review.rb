# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.
# # Cipher Challenge

# # I worked on this challenge [by myself, with:]
# # I spent [#] hours on this challenge.

# # 1. Solution
# # Write your comments on what each thing is doing.
# # If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   #Turning our input to all lowercase letters, split is creating an array of the input with each letter as its own element.
#   decoded_sentence = [] #We're creating an empty array to push the decoded sentence into.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#     #If we use an array of letters, we can manipulate the index to take each letter and cipher it to the 4 letters prior.
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#     #No, an array will be fine because manually setting values for these keys is unnessecary if we iterate over an array's index.
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # Each is going through each word in input array.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     #This seems unnecessary
#     cipher.each_key do |y| # What is #each_key doing here? This is iterating through each key in the hash
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         #X = each original letter from our input array
#         #Y = the key elements in our hash
#         decoded_sentence << cipher[y] #Push the value from our key, essentially ciphering the letter
#         found_match = true
#         break  # Break so that we don't keep re-ciphering.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #If there's any symbol, we're replacing with a space
#         decoded_sentence << " "
#         found_match = true #Unecessary
#         break # Break so that we don't add infinite spaces
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         #Saying if x is a number, push that number into the decoded sentence, not ciphering numbers
#         decoded_sentence << x
#         found_match = true
#         break # Don't think we need this
#       end
#     end
#     if not found_match  # What is this looking for?  if it hasn't found the char through any above statements
#       decoded_sentence << x #Putting back in the original letters
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? Switching the array back into a string
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  # cipher = ("a".."z").to_a

  input.each do |char|

    if ('a'..'z').to_a.include?(char)
      decrypt_ord = char.ord - 4
      if decrypt_ord < 97
          decrypt_ord += 26
      end
    decoded_sentence << decrypt_ord.chr

    # cipher.each_with_index do |letter, index|
    # if char == letter
    # decoded_sentence << cipher[index-4]

    elsif char == "@" || char == "#" || char == "$" || char == "%"|| char == "^" || char == "&"|| char =="*"
    decoded_sentence << " "

    elsif (0..9).to_a.include?(char)
    decoded_sentence << char

    else
    decoded_sentence << char
    end
  end
    decoded_sentence.join("")
end

#input.gsub(/[^0-9a-z]/i, ' ')

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

=begin Reflection

What concepts did you review in this challenge?
We practiced manipulating data from one type to another in order to get it the way we could work with it.
We went from a string, the message, to an array of all of the letters originally in that message,
to a coded array of all of those changed letters, back to a string of the now encrypted message.
We also practiced pushing to a new array, appending.

What is still confusing to you about Ruby?
We used a new method, .ord, which I need to review.

What are you going to study to get more prepared for Phase 1?
Manipulating data structures and changing them, which this challenge was helpful for.
=end
