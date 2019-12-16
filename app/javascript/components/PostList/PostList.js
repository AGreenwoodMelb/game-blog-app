import React from 'react'
import PostListItem from './PostListItem'
import { link } from 'fs'

export default class PostList extends React.Component{

    render(){
        const postOutput = this.props.posts.map((item) => <li key = {item.id}><a href = {"/posts/"+item.id}><PostListItem post = {item}/></a></li>)
        return(
            <div>
                <ul>
                    {postOutput}
                </ul>
            </div>
        )
    }
}