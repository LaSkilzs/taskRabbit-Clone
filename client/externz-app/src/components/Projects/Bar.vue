<template>
  <v-container class="container">
    <v-row>
      <v-col class="d-flex" cols="12" sm="3" v-for="item in projectItems" :key="item.id">
        <v-select :items="items" :label="item.title" solo></v-select>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "Bar",
  data: () => ({
    projectItems: [
      { id: 1, title: "search by skills" },
      { id: 2, title: "search by location" },
      { id: 3, title: "search by industry" },
      { id: 4, title: "search by date" }
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