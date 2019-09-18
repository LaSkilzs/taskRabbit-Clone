<template>
  <v-container>
    <v-col cols="12">
      <h1 class="student">Create a Project</h1>
    </v-col>
    <v-form ref="form" lazyloading>
      <v-col cols="12" class="textRow3">
        <v-text-field v-model="projectData.name" label="name" outlined class="texted3" required></v-text-field>
        <v-text-field
          v-model="projectData.rate"
          label="rate"
          type="Number"
          outlined
          class="texted3"
          required
        ></v-text-field>
      </v-col>
      <v-textarea
        v-model="projectData.description"
        label="description"
        outlined
        class="texted"
        required
      ></v-textarea>

      <v-col cols="12" class="textRow3">
        <v-select
          v-model="projectData.select"
          :rules="[v => !!v || 'Status is required']"
          :items="status"
          :label="status.title"
          outlined
          placeholder="Enter project status"
          class="texted3"
          required
        ></v-select>

        <v-text-field v-model="projectData.image" label="image" outlined class="texted3" required></v-text-field>

        <v-select
          v-model="projectData.select"
          :rules="[v => !!v || 'Duration is required']"
          :items="duration"
          :label="duration.name"
          outlined
          placeholder="Enter duration of project"
          class="texted3"
          required
        ></v-select>
      </v-col>
      <v-btn color="success" class="projBtn" @click.prevent="onSubmit">Submit</v-btn>
    </v-form>
  </v-container>
</template>
<script>
import axios from "axios";
export default {
  name: "Project",
  created() {
    if (!localStorage.getItem("jwt")) this.$router.push("/");
  },
  methods: {
    onSubmit() {
      const formData = {
        name: this.projectData.name,
        description: this.projectData.description,
        rate: this.projectData.rate,
        duration: this.projectData.duration,
        image: this.projectData.image,
        status: this.projectData.status,
        business_id: localStorage.getItem("bizId")
      };
      console.log(formData);
      //   axios
      //     .post("/projects", formData)
      //     .then(res => res.data)
      //     .catch(err => err);
      //   this.$router.push("/home");
    }
  },
  data: () => ({
    duration: ["a_day", "two_days", "three_days", "four_days"],
    status: ["open", "closed", "pending"],
    projectData: {
      name: "",
      description: "",
      rate: "",
      duration: "",
      image: "",
      status: ""
    }
  })
};
</script>
<style scoped>
.student {
  font-size: 2.5rem;
  font-weight: bold;
  margin-top: 3rem;
  text-align: center;
}
.projBtn {
  width: 30rem;
  margin-bottom: 1rem;
  font-size: 1.5rem;
  margin-left: 25rem;
}
.textRow3 {
  display: flex;
  width: 100rem;
  /* justify-content: center; */
}
.texted3 {
  margin: 0.3rem;
  width: 50rem;
  font-size: 1rem;
  text-align: center;
}
.texted {
  margin: 0.3rem;
  width: 75rem;
  font-size: 1rem;
  text-align: center;
  margin: auto;
}
</style>