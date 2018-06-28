import React, { Component }  from 'react'
import SetTile from '../components/SetTile'

class SetContainer extends Component {
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
    let kitList = this.state.kits.map(kit => {
      return (
        <SetTile
          key={"kit" + kit.id}
          id={kit.id}
          name={kit.name}
          bags={kit.bags}
        />
      )
    })

    return (
      <div>
        <h1>Clan Divination Sets</h1>
        <ul>{kitList}</ul>
      </div>
    )
  }
}

export default SetContainer
