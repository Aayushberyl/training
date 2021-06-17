def palindrome(s)
    a=s.chars
    for i in a
        for j in a
            if a[i]==a[j]
            
        a.sort.join
        return puts("#{s} is a Palindrome String")
    else
        return puts("#{s} is not a Palindrome String")
    end
end
print("Enter String : ")
s=gets.chomp
palindrome(s)