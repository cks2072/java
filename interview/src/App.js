import './App.css';
import React from 'react';
import { Link, Route, Routes } from 'react-router-dom';

import About from './component/About';
import Explore from './component/Explore';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Life Relay</h1>
        <nav>
          <Link to="/about">About</Link> | <Link to="/explore">Explore</Link>
        </nav>
      </header>
      <main>
        <Routes>
          <Route path="/about" element={<About />} />
          <Route path="/explore" element={<Explore />} />
        </Routes>
      </main>
    </div>
  );
}

export default App;
