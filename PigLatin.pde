import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}

}




public void draw()
{
	// no use
}



public int findFirstVowel(String word)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  
  String vowels = new String("aeiou");
  
  for (int i = 0; i < word.length(); i++)
  {
    for (int j = 0; j < vowels.length(); j++)
    {
      if ((word.substring(i, i+1)).equals(vowels.substring(j, j+1)))
        return i;
    }
  }
  
  return -1;
}




public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if ((sWord.substring(0,2)).equals("qu"))
	{
		return sWord.substring(2) + sWord.substring(0,2) + "ay";
	}
	else if (findFirstVowel(sWord) != 0)
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay"; 
	}

	return "ERROR";
}
