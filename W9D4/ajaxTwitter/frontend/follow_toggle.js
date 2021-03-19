class FollowToggle {

    constructor(el){
        this.$el = $(el);
        this.userId= this.$el.data('user-id');
        this.followState = this.$el.data('initial-follow-state');
        this.render();


    }

    render(){
        if(this.followState=== 'unfollowed'){
        this.$el.html('Follow!');
        this.$el.prop('disabled', false);
        break;
    }
        else if(this.followState === 'followed'){
        this.$el.html('Unfollow!');
        this.$el.prop('disabled', false);
        break;
    }

        else if(this.followState === 'following'){
        this.$el.html('Following...');
        this.$el.prop('disabled', true);
        break;
    }

        else if(this.followState === 'unfollowing'){
        this.$el.html('Unfollowing...');
        this.$el.prop('disabled', true);
        break;
    }
    }

    handleClick(event){
        const that = this;
        event.preventDefault();
        if (this.followState === 'followed'){
            this.followState= 'unfollowing';
             this.render();

         APIUtil.unfollowUser(this.userId).then(()=>{
                that.followState = 'unfollowed';
                that.render();
            });
        } else if(this.followState === 'unfollowed'){
            this.followState= 'following';
             this.render();

         APIUtil.followUser(this.userId).then(()=>{
                that.followState = 'followed';
                that.render();
            });

        }

    }
}

module.exports= FollowToggle;