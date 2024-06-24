import React from 'react';
import { Link } from 'react-router-dom';
import './About.css';

function  About() {
  return (
    <div className="About">
      <header className="header">
        <div className="logo">Life Relay</div>
        <nav className='Link'>
            <li><Link to="/">Home</Link></li>
            <li><Link to="/stories">Stories</Link></li>
            <li><Link to="/contact">Contact</Link></li>
        </nav>
      </header>

      <main className="main-content">
        <section id="what-is">
          <h1>What is Life Relay?</h1>
          <p>사이트에 오신것을 환영합니다.</p>
        </section>
      </main>

      <footer className="footer">
        <p>© 2024 CHAN. All rights reserved.</p>
      </footer>
    </div>
  );
}

export default About; 
