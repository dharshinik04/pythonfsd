import React from "react";
import "./App.css";
import { ShoppingDashboard } from "./components/screens/shoppingDashboard";

export default function App() {
  const renderPage = 1;

  return (
    <div className="App">
      <ShoppingDashboard />
    </div>
  );
}
