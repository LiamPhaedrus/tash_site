import React from 'react'
import ReactDOM from 'react-dom'

import Root from '../react/containers/Root'

document.addEventListener('DOMContentLoaded', () => {
  let reactElement = document.getElementById('app')

  if (reactElement) {
    ReactDOM.render(
      <Root />,
      reactElement
    )
  }
})
