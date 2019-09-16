<template>
  <div class="projects">
    <v-container class="grey lighten-5">
      <h1 class="header">Projects</h1>
      <Bar />
      <v-row no-gutters>
        <template v-for="n in 3">
          <v-col :key="n">
            <v-card class="card pa-2" outlined tile>Column</v-card>
          </v-col>
          <v-responsive v-if="n === 3" :key="`width-${n}`" width="100%"></v-responsive>
        </template>
      </v-row>
    </v-container>
  </div>
</template>
<script>
import Bar from "../components/Projects/Bar";
export default {
  name: "Projects",
  components: {
    Bar
  }
};
</script>


<style scoped>
.card {
  height: 20rem;
  width: 25rem;
  margin-bottom: 1rem;
}
.header {
  margin: auto;
  text-align: center;
  font-size: 3rem;
  margin-top: 5rem;
  margin-bottom: 2rem;
}
</style>


