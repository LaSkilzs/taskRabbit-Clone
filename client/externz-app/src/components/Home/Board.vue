<template>
  <div v-bind:projectData="projectData" v-on:addToFavs="addToFavs">
    <v-card
      class="mx-auto mb-3"
      max-width="600"
      v-for="data in projectData"
      :key="data.id"
      outlined
    >
      <v-list-item three-line>
        <v-list-item-content>
          <div class="overline mb-4">Company Name: {{data.business.name}}</div>
          <v-list-item-title class="headline mb-1">Project Name: {{data.name}}</v-list-item-title>
          <v-list-item-subtitle>Project Description: {{data.description}}</v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>
      <div class="pay">
        <span>
          <b>duration:</b>
          {{data.duration}}
        </span>
        <span>
          <b>rate:</b>
          ${{data.rate}}
        </span>
        <!-- <span>Status: {{data.status}}</span> -->
        <span>
          <b>status:</b>
          {{data.status}}
        </span>
      </div>

      <v-card-actions>
        <v-btn @click="$emit('addToFavs', data.id)" class="butn">add to favs</v-btn>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Board",
  methods: {
    addToFavs(project_id) {
      // this.projectData = this.projectData.filter(project => project_id !== id);
      console.log(project_id);
    }
  },
  created() {
    axios
      .get("http://localhost:3000/api/v1/projects")
      .then(res => (this.projectData = res.data));
  },
  data: () => ({
    projectData: []
  })
};
</script>

<style>
.pay {
  display: flex;
  justify-content: space-around;
  width: 30rem;
  margin-top: 2rem;
  margin-bottom: 1rem;
}
.butn {
  margin: auto;
  width: 20rem;
  background: #fa4938 !important;
  color: white !important;
  font-size: 1rem !important;
}
</style>

