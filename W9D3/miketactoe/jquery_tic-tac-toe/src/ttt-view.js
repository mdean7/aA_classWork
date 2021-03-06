class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard();
    this.bindEvents();
  }

  bindEvents() {
    this.$el.on("click", "li", ( event => {
      const $cell = $(event.target);
      this.makeMove($cell);
    }));

  }

  makeMove($cell) {
    const currentPlayer = this.game.currentPlayer;
    const pos = $cell.data("pos");

    $cell.addClass(currentPlayer);

    try {
      this.game.playMove(pos);
    } catch (e) {
      alert("This " + e.msg.toLowerCase());
      return;
    }


    if (this.game.isOver()) {
      this.$el.addClass("game-over");
      this.$el.off("click");
    }
      const winner = this.game.winner();
      const $figcaption = $("<figcaption>");
      
      if (winner) {
        this.$el.addClass(`winner-${winner}`);
        $figcaption.html(`You win, ${winner}!`);
      } 
      
  

      this.$el.append($figcaption);
    
  }

  setupBoard() {
    let $ul = $("<ul>");
    for (let rowIdx = 0; rowIdx < 3; rowIdx++) {
      for (let colIdx = 0; colIdx < 3; colIdx++) {
        let $li = $("<li></li>");
        $li.data("pos", [rowIdx, colIdx]);
        $ul.append($li);
    };
    this.$el.append($ul);
  }
}
}

module.exports = View;

