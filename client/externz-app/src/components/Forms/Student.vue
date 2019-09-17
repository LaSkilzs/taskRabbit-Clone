<template>
  <v-container class="stuCont mx-auto">
    <v-row>
      <v-col cols="12">
        <h1 class="student">Create a Profile</h1>
      </v-col>
      <v-form ref="form" v-model="valid" lazy-validation class="mx-auto">
        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.fname"
            :counter="10"
            :rules="nameRules"
            label="First Name"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.lname"
            :counter="10"
            :rules="nameRules"
            label="Last Name"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.phone"
            :rules="phoneRules"
            label="Phone"
            outlined
            class="texted"
            type="Number"
            required
          ></v-text-field>
        </v-col>

        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.street"
            :rules="streetRules"
            label="street"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.city"
            :rules="cityRules"
            label="city"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-select
            v-model="studentData.select"
            :items="items"
            :rules="[v => !!v || 'State is required']"
            label="State"
            outlined
            class="texted"
            required
          ></v-select>
        </v-col>
        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.zip"
            :rules="zipRules"
            label="zip"
            text="Number"
            outlined
            class="texted"
            required
          ></v-text-field>

          <v-text-field
            v-model="studentData.major"
            :rules="majorRules"
            label="major"
            text="Number"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.education"
            :rules="educationRules"
            label="education"
            outlined
            class="texted"
            text="Number"
            required
          ></v-text-field>
        </v-col>
        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.degree"
            :rules="degreeRules"
            label="degree"
            outlined
            class="texted"
            text="Number"
            required
          ></v-text-field>

          <v-text-field
            v-model="studentData.image"
            :rules="imageRules"
            label="image"
            outlined
            class="texted"
            text="Number"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.userId"
            :rules="userIdRules"
            label="userId"
            outlined
            class="texted"
            text="Number"
            hidden
          ></v-text-field>
        </v-col>
        <v-checkbox
          v-model="studentData.checkbox"
          :rules="[v => !!v || 'You must agree to continue!']"
          label="Do you have a degree?"
          outlined
          class="texted"
          required
        ></v-checkbox>
        <v-btn color="success" class="stuBtn">Submit</v-btn>
      </v-form>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "Student",
  data: () => ({
    studentData: {
      fname: "",
      lname: "",
      phone: "",
      street: "",
      city: "",
      state: "",
      zip: "",
      degree: false,
      education: "",
      major: "",
      image: "",
      user_id: ""
    }
  })
};
</script>
<style scoped>
.student {
  text-align: center;
  font-size: 2.5rem;
  font-weight: bold;
}
.textRow {
  display: flex;
  width: 60rem;
  justify-content: center;
}
.texted {
  margin: 0.5rem;
  width: 50rem;
  padding: 0.5rem;
  font-size: 1rem;
  text-align: center;
}
.stuBtn {
  width: 30rem;
  margin-bottom: 1rem;
  margin-left: 15rem;
  font-size: 1rem;
  font-weight: bold;
}
</style>