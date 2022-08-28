import React from "react";
 export default function Card(props) {
    const { text, price , lable,clickEvent} = props;
    return(
        <div className="card-border" onClick={clickEvent}>
        <img src="./pics/mainPic.webp" className="main-pic" alt=" " />
        <p className="offer">{lable}</p>
        <p className="text">{text}</p>
        <span className="align">
          <p className="line1">Price :</p>
          <p className="price">{price}$</p>
        </span>
        <span className="cart-container">
          <img src="./pics/cart.svg" alt="cart" className="cart-icon" />
        </span>
      </div>
    )
 }