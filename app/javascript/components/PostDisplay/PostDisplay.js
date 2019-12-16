import React from 'react'


export default class PostDiplay extends React.Component{
    
    
    render(){
        return (
            <div>
                <h2>{this.props.post.title}</h2>
                <p>{this.props.post.body}</p>
                <div className = 'post-footer'>
                    <span className = 'author'>{this.props.post.author}</span>
                </div>
                </div>
        )
    }
}