// src/components/Explore.js
import React from 'react';

const Explore = () => {
  return (
    <div style={{ padding: '20px', maxWidth: '800px', margin: '0 auto', fontFamily: 'Arial, sans-serif' }}>
      <h1>Explore Interviews</h1>
      <p>
        Welcome to the Explore page! Here you can discover personal life stories and interviews from various users. Dive in and get inspired by the diverse experiences shared by our community.
      </p>
      {/* Example of listing interviews */}
      <div style={{ marginTop: '20px' }}>
        <h2>Interviews</h2>
        <ul>
          <li>Interview 1: [Brief Description]</li>
          <li>Interview 2: [Brief Description]</li>
          <li>Interview 3: [Brief Description]</li>
          {/* Add more interviews as needed */}
        </ul>
      </div>
    </div>
  );
};

export default Explore;
