import React from 'react';
import './Home.css';

const Home = () => {
  return (
    <div className="Home">
      <header className="header">
        <div className="logo">Life Relay</div>
        <nav>
          <ul>
            <li><a href="#what-is">What is Life Relay?</a></li>
            <li><a href="#stories">Stories</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </nav>
      </header>

      <main className="main-content">
        <section id="intro">
          <h1>Welcome to Life Relay</h1>
          <p>Life Relay is a project for sharing and growing together through relay interviews. Join us and share your story!</p>
        </section>
        <section id="stories">
          <h2>Featured Stories</h2>
          <article>
            <h3>Story 1</h3>
            <p>This is a brief introduction to story 1...</p>
          </article>
          <article>
            <h3>Story 2</h3>
            <p>This is a brief introduction to story 2...</p>
          </article>
        </section>
      </main>

      <footer className="footer">
        <p>© 2024 TENSE MOVEMENT. All rights reserved.</p>
      </footer>
    </div>
  );
}

export default Home;
