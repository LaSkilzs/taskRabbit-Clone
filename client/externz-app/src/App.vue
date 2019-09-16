<template>
  <v-app>
    <Navbar />
    <router-view />
  </v-app>
</template>

<script>
import Navbar from "./components/Home/Navbar";

export default {
  name: "App",
  components: {
    Navbar
  }
};
</script>
<style >
</style>
