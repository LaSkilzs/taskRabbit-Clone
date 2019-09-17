<template>
  <v-container>
    <v-col cols="12">
      <h1 class="student">Register Business</h1>
    </v-col>

    <v-form ref="form" v-model="valid" lazy-validation>
      <v-text-field
        v-model="businessData.name"
        :counter="10"
        :rules="nameRules"
        label="Company Name"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-text-field
        v-model="businessData.description"
        :counter="10"
        :rules="descriptionRules"
        label="description"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-text-field
        v-model="businessData.tagLine"
        :counter="10"
        :rules="tagLineRules"
        label="Company tagLine"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-text-field
        v-model="businessData.street"
        :rules="streetRules"
        label="street"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-text-field
        v-model="businessData.city"
        :rules="cityRules"
        label="city"
        outlined
        class="texted"
        required
      ></v-text-field>
      <v-select
        v-model="businessData.select"
        :items="items"
        :rules="[v => !!v || 'State is required']"
        label="State"
        outlined
        class="texted"
        required
      ></v-select>
      <v-text-field
        v-model="businessData.zip"
        :rules="zipRules"
        label="zip"
        outlined
        class="texted"
        text="Number"
        required
      ></v-text-field>

      <v-text-field
        v-model="businessData.industry_id"
        label="industry_id"
        outlined
        class="texted"
        text="Number"
        required
      ></v-text-field>
      <v-text-field
        v-model="businessData.userId"
        label="userId"
        outlined
        class="texted"
        text="Number"
      ></v-text-field>

      <v-btn color="success">Submit</v-btn>
    </v-form>
  </v-container>
</template>

<script>
export default {
  name: "Business",
  data: () => ({
    businessData: {
      name: "",
      description: "",
      tagline: "",
      street: "",
      city: "",
      state: "",
      zip: "",
      industry_id: ""
    }
  })
};
</script>