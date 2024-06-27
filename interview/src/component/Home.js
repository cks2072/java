import React from 'react';
import './Home.css';

const Home = () => {
  return (
    <div className="Home">
      <header className="header">
        <div className="logo">Interview Relay</div>
        <nav>
          <ul>
            <li><a href="#what">What is Interview Relay?</a></li>
            <li><a href="#stories">Stories</a></li>
            {/* <li><a href="#chat">chat</a></li> */}
          </ul>
        </nav>
      </header>

      <main className="main-content">
        <section id="intro">
          <h1>Welcome to Interview Relay</h1>
          <p>Relay interviews.</p>
        </section>
        <section id ="what">
          <h2>what Interview Relay</h2>
          <p>#</p>
        </section>
        <section id="stories">
          <h2>STORIES</h2>
          <hr/>
          <div>
            <h3><strong>Story 1</strong></h3>
            <p>Dolor adipisicing in enim elit. Ex sit excepteur ipsum aute anim eiusmod ex nostrud nostrud occaecat anim voluptate. Lorem magna culpa deserunt labore voluptate. Occaecat minim sunt mollit aliqua ut in ipsum eiusmod non aliqua. Ea cupidatat ullamco do eu pariatur amet cupidatat ullamco. Dolor Lorem ad aute quis sint. Ipsum quis qui nisi dolor voluptate aute.</p>
          </div>
          <div>
            <h3>Story 2</h3>
            <p>Magna nisi dolore esse cillum irure laboris ipsum ea exercitation magna laborum culpa. Laboris dolor laboris irure minim aliquip culpa sint ut esse cupidatat laborum commodo ipsum. Nulla duis velit aliqua incididunt non eiusmod sunt sint magna in. Dolor non nostrud labore minim voluptate proident. Ipsum quis tempor magna reprehenderit eu laborum et irure. Consequat duis cupidatat qui elit consequat ad enim officia laboris officia. Excepteur eiusmod ipsum quis laborum ipsum voluptate et aliqua cupidatat nisi ipsum ad.</p>
          </div>
          <div>
            <h3>Story 3</h3>
            <p>Fugiat dolor minim deserunt ipsum ullamco nulla exercitation aliqua excepteur ut aliqua sint voluptate aliqua. Quis cillum consequat cupidatat sit exercitation ipsum culpa anim est nulla aute. Dolor elit dolore duis esse exercitation reprehenderit est est aliquip. Dolor amet sit esse nisi incididunt.
              Duis elit consectetur cillum amet qui cupidatat adipisicing. Amet do minim fugiat duis minim exercitation adipisicing tempor tempor dolore. Eu consectetur nisi dolor sit dolor excepteur ex commodo sint Lorem cillum. Exercitation magna sit cupidatat labore sunt cupidatat occaecat enim est ad. Amet sit anim dolore quis ea sit. Mollit adipisicing elit nostrud consectetur quis in irure ullamco ullamco. Excepteur sint sunt magna voluptate ullamco proident do quis sit exercitation cupidatat ad Lorem dolore.
              Irure aliqua incididunt nostrud aliqua laborum cillum Lorem do. Nulla ut consequat qui ad aliqua aliqua cupidatat nulla. Aliquip adipisicing minim aute sint reprehenderit officia aute.</p>
          </div>
          <div>
            <h3>Story 4</h3>
            <p>Exercitation deserunt cupidatat esse adipisicing fugiat. Ea reprehenderit officia id id ea cupidatat nulla dolor esse in. Ex velit officia id aute ut elit. Incididunt ipsum dolor veniam reprehenderit mollit.
              Minim anim irure laboris enim. Sint sit magna qui eiusmod dolore. Deserunt magna irure ea pariatur duis anim ad sint laborum cillum excepteur magna. Culpa occaecat ut dolore nisi laborum quis aliqua anim eu sit excepteur nostrud cupidatat veniam. Ut adipisicing excepteur culpa irure ullamco et dolore cupidatat. Anim laborum irure mollit consequat ea in sit do consequat ipsum sint in ea.</p>
          </div>
        </section>
        <hr/>
      </main>

      <footer className="footer">
        <p>© 2024 chan MOVEMENT. All rights reserved.</p>
      </footer>
    </div>
  );
}

export default Home;
