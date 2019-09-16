<template>
  <v-container>
    <v-col cols="12">
      <h1 class="student">Create a Project</h1>
    </v-col>
    <v-form ref="form" v-model="valid" lazy-validation>
      <v-text-field
        v-model="name"
        :counter="10"
        :rules="nameRules"
        label="Company Name"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-textarea v-model="description" label="description" outlined class="texted" required></v-textarea>

      <v-text-field
        v-model="pay"
        :rules="payRules"
        label="pay"
        type="Number"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-text-field
        v-model="start"
        :rules="startRules"
        label="start"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-text-field
        v-model="image"
        :rules="imageRules"
        label="image"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-select
        v-model="select"
        :items="items"
        :rules="[v => !!v || 'Status is required']"
        label="Status"
        outlined
        class="texted"
        required
      ></v-select>

      <v-btn color="success" class="projBtn">Submit</v-btn>
    </v-form>
  </v-container>
</template>
<script>
export default {
  name: "Project"
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
</style>