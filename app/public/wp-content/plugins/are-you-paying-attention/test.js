wp.blocks.registerBlockType("ourplugin/are-you-paying-attention", {
  title: "Are You Paying Attention?",
  icon: "smiley",
  category: "common",
  edit: function () {
    return wp.element.createElement(
      "h3",
      null,
      "hello, this is from admin editor screen"
    );
  },
  save: function () {
    return wp.element.createElement("h1", null, "this is the front end");
  },
});
