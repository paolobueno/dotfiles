/**
 * @param el {Node}
 */
let getStuff = el => {
  const links = el.getElementsByClassName('link-subtle');
  return {
    name: el.firstChild.textContent,
    artist: links[0].textContent,
    album: links[1].textContent,
  };
};

let formatSong = song => `${song.name}: ${song.artist} - ${song.album}`;

/**
 * @type Node
 */
let songs = document.getElementsByClassName('track-name-wrapper');

Array.from(songs).map(getStuff).map(formatSong).join('\n');
