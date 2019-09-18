<template>
  <div class="text-center">
    <v-menu offset-y>
      <template v-slot:activator="{ on }">
        <v-btn class="mainbtn" v-on="on">account options</v-btn>
      </template>
      <v-list>
        <v-list-item v-for="item in this.items" :key="item.title">
          <v-list-item-title>
            <v-btn @click="logout(item.title)">
              <router-link :to="item.path" class="link">{{ item.title }}</router-link>
            </v-btn>
          </v-list-item-title>
        </v-list-item>
      </v-list>
    </v-menu>
  </div>
</template>

<script>
export default {
  name: "SideBar",
  methods: {
    logout(link) {
      if (link === "Logout") localStorage.clear();
    }
  },
  data: () => ({
    items: [
      { title: "Login", path: "/" },
      { title: "Logout", path: "/home" },
      { title: "Create Biz Profile", path: "/register" },
      // { title: "Create Student Profile", path: "/create-profile" },
      { title: "SignUp", path: "/signup" }
    ]
  })
};
</script>
<style scoped>
.mainbtn {
  margin-top: 1.2rem;
  color: #fa4938 !important;
  background: white !important;
}
.link {
  text-decoration: none;
  font-size: 1.2rem;
  color: #fa4938 !important;
  text-align: center;
}
</style>

