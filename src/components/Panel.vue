<template>
  <div class="white elevation-2">
    <v-card color="white" flat tile>
      <v-layout row>
        <v-flex xs7>
          <v-card-title primary-title>
            <div class="box" align="left">
              <div class="headline">{{album.name}}</div>
              <div>{{album.artist}}</div>
              <div>({{album.date}})</div>
              <div>{{album.length}}m</div>
            </div>
          </v-card-title>
        </v-flex>
        <v-flex xs5>
          <v-img
            v-bind:src="this.album.coverUrl"
            height="125px"
            contain
            position="right"
            class="mr-2"
          ></v-img>
        </v-flex>
      </v-layout>
      <v-divider light></v-divider>
      <v-card-actions>
        <v-btn>
          <v-icon>add_shopping_cart</v-icon>
          ADD TO CART {{album.price}}
        </v-btn>
        <v-spacer></v-spacer>
        <v-btn class="mr-1" @click="viewAlbum()">DETAILS</v-btn>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script>
export default {
  props: {
    album: null
  },
  methods: {
    viewAlbum() {
      this.$router.push(`/albums/${this.album.id}`);
      // this.$router.push("/register");
    }
  }
};
</script>

<style>
</style>






INSERT INTO album (id, "name", "genre", "price", "date", "length", "artistId", "coverUrl") VALUES (DEFAULT,'Mirage','Progressive Rock', 60, 1974, 38.22,(SELECT id FROM artist WHERE name='Camel'),'https://upload.wikimedia.org/wikipedia/en/8/89/Camel-Mirage.jpg');
INSERT INTO album (id, "name", "genre", "price", "date", "length", "artistId", "coverUrl") VALUES (DEFAULT,'Stationary Traveller','Progressive Rock', 60, 1984, 38.22,(SELECT id FROM artist WHERE name='Camel'),'https://upload.wikimedia.org/wikipedia/en/e/e6/Camel-StationaryTraveller.jpg');
INSERT INTO album (id, "name", "genre", "price", "date", "length", "artistId", "coverUrl") VALUES (DEFAULT,'Ocean','Progressive Rock', 60, 1977, 43.53,(SELECT id FROM artist WHERE name='Eloy'),'https://upload.wikimedia.org/wikipedia/en/b/ba/Eloy_Ocean.jpg');
INSERT INTO album (id, "name", "genre", "price", "date", "length", "artistId", "coverUrl") VALUES (DEFAULT,'Aqualung','Progressive Rock', 60, 1971, 41.39,(SELECT id FROM artist WHERE name='Jethro  Tull'),'https://upload.wikimedia.org/wikipedia/en/1/19/JethroTullAqualungalbumcover.jpg');
INSERT INTO album (id, "name", "genre", "price", "date", "length", "artistId", "coverUrl") VALUES (DEFAULT,'Moving Pictures','Progressive Rock', 60, 1981, 40,(SELECT "id" FROM artist WHERE name='Rush'),'https://upload.wikimedia.org/wikipedia/en/4/4a/Moving_Pictures.jpg');
