import $ from "jquery";

class Like {
  constructor() {
    this.events();
  }

  events() {
    $(".like-box").on("click", this.ourClickDispatcher.bind(this));
  }

  ourClickDispatcher(e) {
    let currentLikeBox = $(e.target).closest(".like-box");

    if (currentLikeBox.data("exists") == "yes") {
      this.deleteLike(currentLikeBox);
    } else {
      this.createLike(currentLikeBox);
    }
  }

  createLike(currentLikeBox) {
    $.ajax({
      url: universityData.root_url + "/wp-json/university/v1/manageLike",
      type: "POST",
      data: {
        professorId: currentLikeBox.data("professor"),
      },
      success: (Response) => {
        console.log(Response);
      },
      error: (Response) => {
        console.log(Response);
      },
    });
  }

  deleteLike(currentLikeBox) {
    $.ajax({
      url: universityData.root_url + "/wp-json/university/v1/manageLike",
      type: "DELETE",
      success: (Response) => {
        console.log(Response);
      },
      error: (Response) => {
        console.log(Response);
      },
    });
  }
}

export default Like;
