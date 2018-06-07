
import React, { Component }  from 'react';

class HomePage extends Component {
  constructor (props) {
    super(props)
    this.state = {
      kits: []
    }
    this.fetchKits = this.fetchKits.bind(this)
  }

  fetchKits () {
    fetch('/api/v1/kits', {
      credentials: 'same-origin',
      method: 'GET'
    })
    .then(response=> response.json())
    .then(parsed=> {
      console.log(parsed)
      this.setState({
        kits: parsed
      })
    })
  }

  componentDidMount () {
    this.fetchKits()
  }

  render () {
    let kitNames = this.state.kits.map(kit => {
      return (
        <li>{kit.name}</li>
      )
    })

    return (
      <div>
        <h1>Yup yup yup</h1>
        <ul>{kitNames}</ul>
      </div>
    )
  }
}

export default HomePage
