import React from "react";
import { useSelector } from "react-redux/es/exports";
export default function Display(){
    const count = useSelector((store) => store.counter);
    return <div>{count}</div>;
}