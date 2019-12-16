import React from 'react'
import * as serverSync from '../serverSync'
import PostDiplay from './PostDisplay'


export default class PostDisplayContainer extends React.Component{
    
    state ={
        post:null
    }   


    componentDidMount(){
        const temp = (window.location.href).split('/')
        const id = "" + temp[temp.length-1]

        serverSync.get('post_manager/'+id)
        .then((data) => {
            this.setState({
                post:data
            })
        })
        .catch((err) => {
            debugger
        })

    }
    

    render(){
        const output = this.state.post == null ? '' : <PostDiplay post = {this.state.post}/>
        return (
            <div>
                {/* <h1>{this.state.post.title}</h1> */}
                {output}
            </div>
        )

    }
}