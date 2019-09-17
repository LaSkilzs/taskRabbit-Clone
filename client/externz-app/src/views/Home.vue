<template>
  <v-container class="container">
    <h1 class="homeHead">Project Board</h1>
    <v-container class="container">
      <v-row>
        <v-col class="d-flex" cols="12" sm="3" v-for="item in homeItems" :key="item">
          <v-select :items="items" :label="item" solo></v-select>
        </v-col>
      </v-row>
    </v-container>
    <Board />
    <!-- <v-btn>Get Started</v-btn> -->
  </v-container>
</template>

<script>
import Board from "../components/Home/Board";
export default {
  name: "Home",
  components: { Board },
  data: () => ({
    homeItems: [
      "search by date",
      "search by state",
      "search by rate",
      "search by duration"
    ],
    items: ["one", "two", "three"]
  })
};
</script>

<style scoped>
.homeHead {
  font-size: 2.5rem;
  text-align: center;
  margin: 2rem;
}
</style>
