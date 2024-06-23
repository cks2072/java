import React from 'react';
import { Link } from 'react-router-dom';
import './About.css';

const About = () => {
  return (
    <div className="About">
      <header className="header">
        <div className="logo">Life Relay</div>
        <nav>
          <ul>
            <li><Link to="/">Home</Link></li>
            <li><Link to="/stories">Stories</Link></li>
            <li><Link to="/contact">Contact</Link></li>
          </ul>
        </nav>
      </header>

      <main className="main-content">
        <section id="what-is">
          <h1>What is Life Relay?</h1>
          <p>Life Relay is a project for sharing and growing together through relay interviews. Join us and share your story!</p>
        </section>
      </main>

      <footer className="footer">
        <p>© 2024 TENSE MOVEMENT. All rights reserved.</p>
      </footer>
    </div>
  );
}

export default About;
