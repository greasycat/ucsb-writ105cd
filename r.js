const descriptions = {
  u: "align with the values of utilitarianism. Your ethical decision-making skills tend to maximize your family's and society's happiness, which allows you to navigate complex moral dilemmas effectively. You value the welfare of society as a whole!",
  d: "align with the principles of deontology. Your ethical decision-making consistently emphasizes the adherence to moral rules and duties, rather than solely focusing on the recognition and protection of individual rights. You prioritize the inherent rightness or wrongness of actions and base your choices on principles such as honesty, respect for autonomy, and the preservation of human dignity.",
  m: "reflect a strong sense of morality. When making decisions, you tend to consider moral aspects like integrity, fairness, and compassion. Your ethical choices indeed demonstrate a commitment to upholding moral values and striving to do the right thing.",
  r: "indicate a strong recognition and respect for individual rights. You tend to prioritize the protection of fundamental rights, such as equality and autonomy. Your ethical choices indeed demonstrate a commitment to upholding the rights of others and treating individuals with fairness and dignity.",
  v: "demonstrate a strong commitment to virtue ethics. You consistently prioritize the development and cultivation of moral character and virtues in your decision-making. Your choices reflect virtues such as honesty, compassion, integrity, and courage, indicating a genuine concern for leading a morally upright life. Your focus on personal character and the pursuit of virtuous behavior distinguishes you as someone who values the importance of moral virtues in shaping ethical choices.",
  n: "suggest a leaning toward nihilism. Your ethical decision-making demonstrates a skepticism towards moral values and a belief in the absence of inherent meaning or purpose in life. You often question traditional ethical frameworks and may prioritize personal freedom and individual autonomy. Your inclination towards nihilism challenges conventional moral norms and raises thought-provoking questions about the nature of morality and its relevance in human existence."
};


const dict = {
    u: undefined,
    d: undefined,
    m: undefined,
    r: undefined,
    v: undefined,
  };

  let placeholder = null;
  

  // Function to update the dictionary based on the <p> element content
  function updateDict() {
    // get all the <p> elements in the document
    const pElements = document.getElementsByTagName("p");
        // loop over all the <p> elements
    for (const pElement of pElements) {
        if (pElements) {
            const regex = /\d{5}/;
            const matches = pElement.textContent.match(regex);
            if (matches && matches.length > 0) {
                const numbers = matches[0];
                dict.u = numbers.charAt(0);
                dict.d = numbers.charAt(1);
                dict.m = numbers.charAt(2);
                dict.r = numbers.charAt(3);
                dict.v = numbers.charAt(4);

                // set placeholder to this p
                placeholder = pElement;
            }
        }
    }
  }

  
  // Initial update of the dictionary
  updateDict();

  // function to sort the dict key-value pairs by value
    function getTopValues(dict) {
        // check if the first value is not undefined
        if (dict.u === undefined) {
            return;
        }
        // Create items array
        var items = Object.keys(dict).map(function(key) {
            return [key, dict[key]];
        });

        // Sort the array based on the second element
        items.sort(function(first, second) {
            return second[1] - first[1];
        }
        );

        // get the first few elements with the same value
        var first = items[0][1];
        var firstElements = [];
        for (var i = 0; i < items.length; i++) {
            if (items[i][1] === first) {
                firstElements.push(items[i][0]);
            }
        }
        
        // if the length of the firstElements array is 5, then we set firstElements to [n]
        if (firstElements.length === 5) {
            firstElements = ["n"];
        }

        // for each element in firstElements, we add the corresponding description after the placeholder
        for (var i = 0; i < firstElements.length; i++) {
            var description = descriptions[firstElements[i]];
            var newP = document.createElement("p");
            newP.innerHTML = "- " + description;
            newP.style.opacity = '0';
            newP.style.transition = 'opacity 1s';
            placeholder.after(newP);
            newP.offsetHeight;
            newP.style.opacity = '1';
        }

        // delete the placeholder from dom
        placeholder.remove();

    }
  
  // Create a MutationObserver instance
  const observer = new MutationObserver(() => {
    updateDict();
    getTopValues(dict);
  });
  
  // Configure and start observing changes in the document
  const observerConfig = {
    childList: true,
    subtree: true,
    characterData: true,
  };
  
  observer.observe(document, observerConfig);