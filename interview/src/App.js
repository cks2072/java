import './App.css';
import React from 'react';
import { Link, Route, Routes } from 'react-router-dom';

import Home from './component/Home';
import About from './component/About';
import Explore from './component/Explore';

function App() {

  return (
    <div className="App">
      <header className="App-header">
        <div className="login_box">
        <a href='#'>로그인</a> | <a href='#'>회원가입</a>
        </div>
        <h1>Interview Relay</h1>
        <nav>
          <Link to="/">Home</Link> | <Link to="/about">About</Link> | <Link to="/explore">Explore</Link>
        </nav>
      </header>
      <main>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
          <Route path="/explore" element={<Explore />} />
        </Routes>
      </main>
    </div>
  );
}


export default App;
