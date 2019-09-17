<template>
  <div class="projects">
    <v-container class="grey lighten-5">
      <h1 class="header">Projects</h1>
      <Bar />
      <v-row no-gutters v-bind:projects="projects">
        <template v-for="n in projects">
          <v-col :key="n.id">
            <v-card class="card pa-2" outlined tile>
              <v-list-item three-line>
                <v-list-item-content>
                  <div class="overline mb-4">{{n.company}}</div>
                  <v-list-item-title class="headline mb-1 mt-3">{{n.project}}</v-list-item-title>
                  <v-list-item-subtitle class="descript">{{n.description}}</v-list-item-subtitle>
                </v-list-item-content>
              </v-list-item>
              <div class="pay">
                <span class="m">
                  <b>duration:</b>
                  {{n.duration}}
                </span>
                <span class="m">
                  <b>rate:</b>
                  {{n.rate}}
                </span>
                <span class="m">
                  <b>start:</b>
                  {{n.start}}
                </span>
              </div>
              <v-card-actions>
                <v-btn @click="$emit('deleteFavs', n.id)" class="butn">delete fav</v-btn>
              </v-card-actions>
            </v-card>
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
  },
  methods: {
    deleteFavs(project_id) {
      this.projectData = this.projects.filter(project => project_id !== id);
    }
  },
  data: () => ({
    projects: [
      {
        id: 1,
        company: "XYZ Company",
        project: "The Best Project Ever",
        description:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque hic modi corrupti mollitia consectetur inventore non qui, facilis dolor, voluptatum tempora? Et animi qui iusto nostrum eaque blanditiis possimus sed? elit.",
        rate: "tba",
        duration: "2_days",
        start: "11/23/2019"
      },
      {
        id: 2,
        company: "XYZ Company",
        project: "The Best Project Ever",
        description:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque hic modi corrupti mollitia consectetur inventore non qui, facilis dolor, voluptatum tempora? Et animi qui iusto nostrum eaque blanditiis possimus sed? elit.",
        rate: "tba",
        duration: "2_days",
        start: "11/23/2019"
      },
      {
        id: 3,
        company: "XYZ Company",
        project: "The Best Project Ever",
        description:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque hic modi corrupti mollitia consectetur inventore non qui, facilis dolor, voluptatum tempora? Et animi qui iusto nostrum eaque blanditiis possimus sed? elit.",
        rate: "tba",
        duration: "2_days",
        start: "11/23/2019"
      }
    ]
  })
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
.pay {
  display: flex;
  justify-content: center;
  width: 23rem;
  margin-top: 1rem;
  margin-bottom: 1rem;
}
.m {
  margin: 0.6rem;
}
.descript {
  margin-top: 1rem;
}
</style>


