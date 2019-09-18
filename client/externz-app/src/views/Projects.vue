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
                  <div class="overline mb-4">{{bizName || "No Company Name"}}</div>
                  <v-list-item-title class="headline mb-1 mt-3">{{n.name}}</v-list-item-title>
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
                  <b>status:</b>
                  {{n.status}}
                </span>
              </div>
              <v-card-actions>
                <v-btn @click="$emit('deleteProject', n.id)" class="butn">delete project</v-btn>
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
import axios from "axios";
export default {
  name: "Projects",
  components: {
    Bar
  },
  created() {
    if (!localStorage.getItem("jwt")) this.$router.push("/");
    axios
      .get("/businesses/" + localStorage.getItem("bizId"))
      .then(res => {
        this.projects = res.data.projects;
        this.bizName = localStorage.getItem("bizName");
        console.log(this.bizName);
      })
      .catch(err => this.$router.push("/"));
  },
  methods: {
    deleteProject(project_id) {
      fetch("http://localhost:3000/api/v1/projects/" + project_id, {
        method: "DELETE"
      }).then(res => console.log(res));
      this.projectData = this.projects.filter(project => project_id !== id);
    }
  },
  data: () => ({
    bizName: "",
    projects: [
      // {
      //   id: 1,
      //   company: "XYZ Company",
      //   project: "The Best Project Ever",
      //   description:
      //     "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque hic modi corrupti mollitia consectetur inventore non qui, facilis dolor, voluptatum tempora? Et animi qui iusto nostrum eaque blanditiis possimus sed? elit.",
      //   rate: "tba",
      //   duration: "2_days",
      //   start: "11/23/2019"
      // },
      // {
      //   id: 2,
      //   company: "XYZ Company",
      //   project: "The Best Project Ever",
      //   description:
      //     "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque hic modi corrupti mollitia consectetur inventore non qui, facilis dolor, voluptatum tempora? Et animi qui iusto nostrum eaque blanditiis possimus sed? elit.",
      //   rate: "tba",
      //   duration: "2_days",
      //   start: "11/23/2019"
      // },
      // {
      //   id: 3,
      //   company: "XYZ Company",
      //   project: "The Best Project Ever",
      //   description:
      //     "Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque hic modi corrupti mollitia consectetur inventore non qui, facilis dolor, voluptatum tempora? Et animi qui iusto nostrum eaque blanditiis possimus sed? elit.",
      //   rate: "tba",
      //   duration: "2_days",
      //   start: "11/23/2019"
      // }
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


