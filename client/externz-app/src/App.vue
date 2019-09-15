<template>
  <v-app>
    <Navbar />
    <Login />
    <!-- <main> -->
    <!-- <Home /> -->
    <!-- </main> -->
  </v-app>
</template>

<script>
import Navbar from "./components/Navbar";
import Login from "./components/Login";
import Home from "./components/Home";

export default {
  name: "App",
  components: {
    Navbar,
    Login,
    Home
  },
  data: () => ({
    homePic: require("./images/Home.png")
    //
  })
};
</script>
<style scoped>
.app {
  background: url("http://images5.fanpop.com/image/photos/31500000/Lpspinkysaskia-official-picturee-the-lps-club-31548229-300-300.jpg");
}
</style>
