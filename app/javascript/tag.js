document.addEventListener("DOMContentLoaded", () => {
  const tagNameInput = document.querySelector("#cook_form_tag_name");
    if (tagNameInput){
      const inputElement = document.getElementById("cook_form_tag_name");
      inputElement.addEventListener("input", () => {
        const keyword = document.getElementById("cook_form_tag_name").value;
        const XHR = new XMLHttpRequest();
        XHR.open("GET", `/cooks/search/?keyword=${keyword}`, true);
        XHR.responseType = "json";
        XHR.send();
        XHR.onload = () => {
          const tagName = XHR.response.keyword;
          const searchResult = document.getElementById("search-result");
          tagName.forEach((tag) => {
            const childElement = document.createElement("div");
            childElement.setAttribute("class", "child");
            childElement.setAttribute("id", tag.id);
            childElement.innerHTML = tag.tag_name;
            searchResult.appendChild(childElement);
          });
        };
      });
    };
  });