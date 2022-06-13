console.log("Welcome to your personal diary.");
showStories();

// If user adds a story, add it to the localStorage
let addBtn = document.getElementById("addBtn");
addBtn.addEventListener("click", function (e) {
  let addTxt = document.getElementById("addTxt");
  let stories = localStorage.getItem("stories");
  if (stories == null) {
    storiesObj = [];
  } else {
    storiesObj = JSON.parse(stories);
  }
  storiesObj.push(addTxt.value);
  localStorage.setItem("stories", JSON.stringify(storiesObj));
  addTxt.value = ""; //to make the text blank after clicking the button
  console.log(storiesObj);
  showStories();
});


// Function to show elements from localStorage
function showStories() {
  let stories = localStorage.getItem("stories");
  if (stories == null) {
    storiesObj = [];
  } else {
    storiesObj = JSON.parse(stories);
  }
  let html = "";
  storiesObj.forEach(function (element, index) {
    html += `
              <div class="noteCard my-2 mx-2 card" style="width: 18rem;">
                      <div class="card-body">
                          <h5 class="card-title">Story ${index + 1}</h5>
                          <p class="card-text"> ${element}</p>
                          <button id="${index}"onclick="deleteStory(this.id)" class="btn btn-primary">Delete Story</button>
                      </div>
                  </div>`;
  });
  let storiesElm = document.getElementById("stories");
  if (storiesObj.length != 0) {
    storiesElm.innerHTML = html;
  } else {
    storiesElm.innerHTML = `Nothing to show! Use "Write a story" section above to write your story.`;
  }
}

// for search bar to find diary entries

let search = document.getElementById('searchTxt');
search.addEventListener("input", function () {

  let inputVal = search.value.toLowerCase();

  let storyCards = document.getElementsByClassName('noteCard');
  Array.from(storyCards).forEach(function (element) {
    let cardTxt = element.getElementsByTagName("p")[0].innerText;
    if (cardTxt.includes(inputVal)) {
      element.style.display = "block";
    }
    else {
      element.style.display = "none";
    }

  })
})
