<template>
  <v-row class="rowed">
    <v-col class="d-flex" v-for="item in listItems" :key="item.title">
      <v-btn class="colbtn">
        <router-link :to="item.path" class="link">{{item.title}}</router-link>
      </v-btn>
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: "List",
  showList: false,
  data: () => ({
    listItems: [
      { title: "manage profile", path: "/create-profile" },
      { title: "manage skills", path: "/skills" },
      { title: "past projects", path: "/projects" },
      { title: "manage account", path: "/signup" }
    ]
  })
};
</script>

<style scoped>
.card {
  margin-top: 2rem;
  height: 24rem;
}
.list {
  margin-top: 3rem;
}
.rowed {
  width: 80rem;
  margin-top: 3rem;
}
.colbtn {
  display: "flex";
  background: #fa4938 !important;
}
.link {
  text-decoration: none;
}
</style>