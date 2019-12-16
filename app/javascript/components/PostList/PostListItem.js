import React from 'react'


export default class PostListItem extends React.Component{

    render(){
        return(
            <div>
                <div className = "col">
                    <div className = 'row'>
                        <div className = 'header'>Title:</div>
                        <div className = 'text'>{this.props.post.title}</div>
                    </div>
                    <div className = 'row'>
                        <div className = 'header'>Author:</div>
                        <div className = 'text'>Post Author</div>
                    </div>
                    <div className = 'row'>
                        <div className = 'header'>Posted:</div>
                        <div className = 'text'>Post Posted date</div>
                    </div>
                    <div className = 'row'>
                        <div className = 'header'>Tags:</div>
                        <div className = 'text'>Post Tags</div>
                    </div>
                </div>
            </div>
        )
    }
}