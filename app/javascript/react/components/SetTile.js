import React, { Component }  from 'react'

const SetTile = (props) =>  {

  let bagNames = ''
  if (props.bags.length >= 1) {
    bagNames = props.bags.map(bag => {
      return bag.name
    }).join(', ')
  }

  return(
    <li>
      <h3>{props.name}</h3>
      <p>Bags: {bagNames}</p>
    </li>
  )
}

export default SetTile
