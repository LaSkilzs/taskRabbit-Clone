<template>
  <v-container>
    <img src="require(`${homePic}`)" />
    <v-btn>Get Started</v-btn>
  </v-container>
</template>

<script>
import homePic from "../images/Home.png";
export default {
  name: "Home",
  data: () => ({
    homePic: "../images/Home.png"
    // roles: ["student", "business", "admin"]
    //
  })
};
</script>

<style>
</style>