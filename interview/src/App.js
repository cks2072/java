// src/App.js
import React from 'react';
import About from './components/About';
import Explore from './components/Explore';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Life Relay</h1>
        <nav>
          <a href="#about">About</a> | <a href="#explore">Explore</a>
        </nav>
      </header>
      <main>
        <section id="about">
          <About />
        </section>
        <section id="explore">
          <Explore />
        </section>
      </main>
    </div>
  );
}

export default App;
