<template>
  <div>
    <v-navigation-drawer v-model="sideNav"></v-navigation-drawer>
    <v-toolbar color="#fa4938" height="80rem">
      <v-app-bar-nav-icon color="white"></v-app-bar-nav-icon>
      <v-spacer></v-spacer>
      <v-toolbar-items v-for="item in menuItems" :key="item.title">
        <v-btn text>
          <router-link :to="item.path" class="link">{{item.title}}</router-link>
        </v-btn>
      </v-toolbar-items>
      <v-spacer></v-spacer>
      <v-toolbar-items>
        <SideBar />
      </v-toolbar-items>
    </v-toolbar>
  </div>
</template>

<script>
import SideBar from "../../components/Forms/SideBar";
export default {
  name: "Navbar",
  components: {
    SideBar
  },
  methods: {},
  data: () => ({
    isUser: "" || localStorage["jwt"],
    sideNav: false,
    menuItems: [
      { icon: "home", title: "Home", path: "/home" },
      { icon: "account_box", title: "Profile", path: "/profile/admin/10" },
      { icon: "work", title: "Projects", path: "/projects" }
    ]
  })
};
</script>

<style >
.link {
  text-decoration: none;
  font-size: 1.2rem;
  color: white !important;
}
</style>