import React from "react";
import { Routes, Route } from "react-router-dom";
import { Product } from "./screens/product";

function App() {
  return (
    <Routes>
      <Route path="/" element={<Product />} />
    </Routes>
  );
}

export default App;
