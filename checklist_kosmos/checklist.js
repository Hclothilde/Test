// This variable holds the URL of the server where the backend is hosted
let serverUrl = "http://10.42.0.1:5000";
// Alternative server URL (commented out)
// let serverUrl = "http://10.29.225.198:5000";

// Variable to store configuration data fetched from the server
let listData; 

// Function to fetch the configuration from the server and dynamically generate the form
async function fetchList() {
  try {
    const myList = document.querySelector("section");

      fetch("list.json")
	.then((response) => {
	  if (!response.ok) {
	    throw new Error(`HTTP error, status = ${response.status}`);
	  }
	  return response.json();
	})
	.then ((data) => {
	  for (let element of data.materiel) {
	    let listItem = document.createElement("ul");
	    
	    let input = document.createElement("input");
	    input.setAttribute("type", "checkbox");
	    input.setAttribute("id", element);
	    input.setAttribute("name", "materiel");
	    input.classList.add("list-element");
	    input.value = myList[element];
	    
	    let label = document.createElement("label");
	    label.setAttribute("for", "materiel" + element);
	    label.classList.add("list-element");
	    label.textContent = element;
	    
	    listItem.append(
			    input,
			    label
			    )
	    
	    myList.appendChild(listItem);
	    listData = myList;
	    }		  
	  })
	}
  catch(error){
    const p = document.createElement("p");
    p.appendChild(document.createTextNode(`Error: ${error.message}`));
    document.body.insertBefore(p, myList);
  }
  
}



// Fetch the list when the page loads
fetchList();


