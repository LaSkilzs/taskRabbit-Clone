<template>
  <v-container>
    <v-card width="600" class="card mx-auto">
      <v-card-title>
        <h1 class="hea display-1 mx-auto">What are your Skills</h1>
      </v-card-title>
      <v-card-text>
        <v-select :items="levels" :label="levels.name" placeholder="skill level" outlined></v-select>
      </v-card-text>
      <v-card-text>
        <v-select :items="skills" :label="skills.name" placeholder="skill name" outlined></v-select>
      </v-card-text>
      <v-card-actions>
        <v-btn color="#fa4938" class="submit mb-5">Submit</v-btn>
      </v-card-actions>
    </v-card>
  </v-container>
</template>

<script>
export default {
  name: "Skills",
  data: () => ({
    showPassword: false,
    levels: ["beginnger", "intermediate", "advance", "expert"],
    skills: ["sample1", "sample2", "sample3"]
    // skillData: {
    //   level: "",
    //   skill: "",
    //   skills
    // }
    //  v-model="skillData.skill"
  })
};
</script>



<style scoped>
.card {
  margin-top: 10rem;
}
.submit {
  width: 25rem;
  margin: 0 auto;
  padding: 1.5rem;
}
.hea {
  font-weight: bold;
  font-size: 2.5rem;
}
</style>