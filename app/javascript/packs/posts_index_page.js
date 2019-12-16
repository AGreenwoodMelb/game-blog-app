
import React from 'react'
import ReactDOM from 'react-dom'
import PostListContainer from '../components/PostList/PostListContainer'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <div>
      <PostListContainer />
    </div>,
    document.body.appendChild(document.createElement('div')),
  )
})