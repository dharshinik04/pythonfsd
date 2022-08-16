s=input("Enter:")
def checkBracket(s:str)->bool:
    
   st=[]
   m={")":"(","}":"{","]":"["}
   for i in s:
      if i in m:
       if st and st[-1]==m[i]:
        st.pop()
       else:
        return False
      else:
        st.append(i)
   return True if not st else False


print(checkBracket(s))