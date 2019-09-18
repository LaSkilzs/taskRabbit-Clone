<template>
  <v-container>
    <v-card width="600" class="card mx-auto">
      <v-card-title>
        <h1 class="hea display-1 mx-auto">What are your Skills</h1>
      </v-card-title>
      <v-card-text>
        <v-select
          :items="levels"
          :label="levels.name"
          placeholder="skill level"
          outlined
          v-model="skillData.select"
        ></v-select>
      </v-card-text>
      <v-card-text>
        <v-select
          :items="skills"
          :label="skills.name"
          placeholder="skill name"
          outlined
          v-model="skillData.select"
        ></v-select>
      </v-card-text>
      <v-card-actions>
        <v-btn color="#fa4938" class="submit mb-5" @click.prevent="onSubmit">Submit</v-btn>
      </v-card-actions>
    </v-card>
  </v-container>
</template>

<script>
import axios from "axios";

export default {
  name: "Skills",
  created() {
    if (!localStorage.getItem("jwt")) this.$router.push("/");
  },
  methods: {
    onSubmit() {
      const formData = {
        level: this.skillData.level,
        skill: this.skillData.skill,
        id: ""
      };
      axios
        .post("/skills", formData)
        .then(res => res.data)
        .catch(err => err);
      this.$router.push("/profile");
    }
  },
  data: () => ({
    showPassword: false,
    levels: ["beginner", "intermediate", "advance", "expert"],
    skills: ["sample1", "sample2", "sample3"],
    skillData: {
      level: "",
      skill: ""
    }
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