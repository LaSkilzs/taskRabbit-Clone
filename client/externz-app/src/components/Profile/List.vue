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
      // { title: "edit profile", path: "/create-profile" },
      { title: "delete profile", path: "/create-profile" },
      { title: "add project skills", path: "/skills" },
      { title: "create project", path: "/create-project" }
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
  width: 65rem;
  margin-top: 3rem;
  margin: auto;
}
.colbtn {
  display: "flex";
  background: #fa4938 !important;
  justify-content: center;
}
.link {
  text-decoration: none;
}
</style>