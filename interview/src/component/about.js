import React from 'react';
import { Link } from 'react-router-dom';
import './About.css';

function  About() {
  return (
    <div className="About">
      <header className="header">
        <div className="logo">Life Relay</div>

        {/* <nav className='Link'>
            <li><Link to="/Home" style={{ textDecoration: "none"}}>Home</Link></li>
            <li><Link to="/stories" style={{ textDecoration: "none"}}>Stories</Link></li>
            <li><Link to="/contact" style={{ textDecoration: "none"}}>Contact</Link></li>
        </nav> */}
      </header>

      <div className="main-content">
        <section className="content">
          <h1>What is Life Relay?</h1>
          <p>#</p>
        </section>
      </div>

      <footer className="footer">
        <p>© 2024 chan. All rights reserved.</p>
      </footer>
    </div>
  );
}

export default About; 
