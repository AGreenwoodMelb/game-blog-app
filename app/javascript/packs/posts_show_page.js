
import React from 'react'
import ReactDOM from 'react-dom'
// import PostListContainer from '../components/PostList/PostListContainer'
import PostDisplayContainer from '../components/PostDisplay/PostDisplayContainer'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <div>
      <PostDisplayContainer />
    </div>,
    document.body.appendChild(document.createElement('div'))
  )
})