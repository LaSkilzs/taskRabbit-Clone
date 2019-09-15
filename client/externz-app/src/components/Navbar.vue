<template>
  <v-app-bar>
    <!-- <v-navigation-drawer v-model="sideNav"></v-navigation-drawer> -->
    <v-toolbar color="#fa4938">
      <v-app-bar-nav-icon color="white"></v-app-bar-nav-icon>
      <v-toolbar-title>Externz</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items v-for="item in menuItems" :key="item.title">
        <v-btn text>{{item.title}}</v-btn>
      </v-toolbar-items>
      <v-spacer></v-spacer>
      <v-toolbar-items v-for="btn in menuBtns" :key="btn.title">
        <v-btn text>{{btn.title}}</v-btn>
      </v-toolbar-items>
    </v-toolbar>
  </v-app-bar>
</template>

<script>
export default {
  name: "Navbar",
  data: () => ({
    sideNav: false,
    menuItems: [
      { icon: "home", title: "Home" },
      { icon: "account_box", title: "Profile" },
      { icon: "work", title: "Project" }
    ],
    menuBtns: [
      { icon: "lock_open", title: "Login" },
      { icon: "lock", title: "Logout" }
    ]
  })
};
</script>

<style >
</style>