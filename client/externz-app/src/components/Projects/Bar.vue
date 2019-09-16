<template>
  <v-container class="container">
    <v-row>
      <v-col class="d-flex" cols="12" sm="3" v-for="item in projectItems" :key="item.placeholder">
        <v-select :items="items" :label="item.placeholder" solo></v-select>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "Bar",
  data: () => ({
    projectItems: [
      { placeholder: "search by skills" },
      { placeholder: "search by location" },
      { placeholder: "search by industry" },
      { placeholder: "search by date" }
    ],
    items: ["one", "two", "three"]
  })
};
</script>

<style scoped>
.container {
  margin-bottom: 4rem;
}
</style>