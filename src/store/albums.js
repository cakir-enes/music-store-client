/* eslint-disable no-undef */
/* eslint-disable no-restricted-syntax */

import HTTP from '../http';


function process(resp) {
  const albums = [];
  let batch = [];

  for (const artist of resp.data) {
    for (const [j, val] of artist.albums.entries()) {
      if (j % 4 === 0) {
        albums.push(batch);
        batch = [];
      }
      val.artist = artist.name;
      batch.push(val);
    }
    if (batch.length > 0) {
      albums.push(batch);
      batch = [];
    }
  }
  console.log(albums);
  return albums;
}
export default {
  namespaced: true,
  state: {
    albums: null,
    batch: null,
    errors: [],
  },
  data: {
    batch: [],
    albums: [],
  },
  actions: {
    fetchAlbums({ commit }) {
      HTTP()
        .get('/albums')
        .then((resp) => { commit('setAlbums', process(resp)); })
        .catch((e) => {
          console.log(e);
        });
    },
  },
  getters: {

  },
  mutations: {
    setAlbums(state, albums) {
      state.albums = albums;
    },
  },
};
