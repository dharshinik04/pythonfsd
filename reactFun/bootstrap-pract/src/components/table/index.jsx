import React from "react";
import "./styles.css";
function TableContent() {
    return(
        <thead>
        <tr>
          <th>#</th>
          {Array.from({ length: 12 }).map((_, index) => (
            <th key={index}>Table heading</th>
          ))}
          </tr>
      </thead>
    )
}
export default TableContent;