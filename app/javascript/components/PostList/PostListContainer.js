import React from 'react'
import * as serverSync from '../serverSync'

import PostList from './PostList'
// import './PostContainer.css'



export default class PostListContainer extends React.Component {
  
       state = {
            posts: []
        }

    componentDidMount() {
        serverSync.get('/post_manager')
        .then((data)=>{
            this.setState({
                posts:[...data]
            })
        })
        .catch((err)=>{console.log(err)})
    }

    render() {
        return (
            <div>
                <ul>
                     <PostList posts= {this.state.posts}/>
                </ul>
            </div>
        )
    }

}