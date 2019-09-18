<template>
  <v-container class="container">
    <h1 class="homeHead">Project Board</h1>
    <v-container class="container">
      <v-row>
        <v-col class="d-flex" cols="12" sm="3">
          <v-select :items="rate" :label="rate.name" placeholder="search by rate" solo></v-select>
        </v-col>
        <v-col class="d-flex" cols="12" sm="3">
          <v-select :items="duration" :label="duration.name" placeholder="search by duration" solo></v-select>
        </v-col>
        <v-col class="d-flex" cols="12" sm="3">
          <v-select :items="status" :label="status.name" placeholder="search by status" solo></v-select>
        </v-col>
        <v-col class="d-flex" cols="12" sm="3">
          <v-select :items="skills" :label="skills.name" placeholder="search by skills" solo></v-select>
        </v-col>
      </v-row>
    </v-container>
    <Board />
  </v-container>
</template>

<script>
import Board from "../components/Home/Board";
import axios from "axios";
export default {
  name: "Home",
  components: { Board },
  created() {
    axios
      .get("/skills")
      .then(res => (this.skills = res.data.map(skill => skill.name)))
      .catch(err => err);
  },
  data: () => ({
    rate: ["0-$100", "$101-499", "$500-$999", "above $1000"],
    duration: ["a_day", "two_days", "three_days", "four_days"],
    status: ["open", "closed", "pending"],
    skills: []
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
