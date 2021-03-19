class UsersSearch{

constructor(el){
    this.$el = $(el);
    this.$input = this.$el.find('input[name=username]');
    this.$ul = this.$el.find('.users');


}

handleInput(){

    APIUtil.searchUsers(this.$input.val())
    .then(users => this.renderResults(users));

}

renderResults(users){
    this.$ul.empty();
    for(let i =0; i<users.length; i++){
        const user = users[i];
        const $a = $('<a></a>');
        $a.text(`@${user.username}`);
      $a.attr('href', `/users/${user.id}`);
    }

    const $li = $('<li></li>');
    $li.append($a);
}


}