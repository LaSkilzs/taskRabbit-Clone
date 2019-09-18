<template>
  <v-container class="stuCont mx-auto">
    <v-row>
      <v-col cols="12">
        <h1 class="student">Create a Profile</h1>
      </v-col>
      <v-form ref="form" class="mx-auto">
        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.fname"
            label="First Name"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.lname"
            label="Last Name"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.phone"
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
            label="street"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-text-field v-model="studentData.city" label="city" outlined class="texted" required></v-text-field>
          <v-select
            v-model="studentData.select"
            :items="statelist"
            :rules="[v => !!v || 'State is required']"
            :label="statelist.name"
            outlined
            placeholder="State "
            class="texted"
            required
          ></v-select>
        </v-col>
        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.zip"
            label="zip"
            text="Number"
            outlined
            class="texted"
            required
          ></v-text-field>
          <v-select
            v-model="studentData.select"
            :items="majorlist"
            :rules="[v => !!v || 'Major is required']"
            outlined
            class="texted"
            required
            :label="majorlist.name"
            placeholder="major"
          ></v-select>
          <v-select
            v-model="studentData.education"
            :items="education"
            :label="education.name"
            :rules="[v => !!v || 'education is required']"
            placeholder="highest education attained"
            outlined
            class="texted"
            text="Number"
            required
          ></v-select>
        </v-col>
        <v-col cols="12" class="textRow">
          <v-text-field
            v-model="studentData.image"
            label="image"
            outlined
            class="texted"
            text="Number"
            required
          ></v-text-field>
          <v-text-field
            v-model="studentData.userId"
            label="userId"
            outlined
            class="texted"
            text="Number"
            hidden
          ></v-text-field>
        </v-col>
        <v-checkbox
          v-model="studentData.checkbox"
          :rules="[v => !!v || 'You must select to continue!']"
          label="Do you have a degree?"
          outlined
          class="texted"
          required
        ></v-checkbox>
        <v-btn color="success" class="stuBtn" @click.prevent="onSubmit">Submit</v-btn>
      </v-form>
    </v-row>
  </v-container>
</template>

<script>
import major from "../../js/Majors";
import state from "../../js/States";
import axios from "axios";

export default {
  name: "Student",
  methods: {
    onSubmit() {
      const formData = {
        fname: this.studentData.fname,
        lname: this.studentData.lname,
        phone: this.studentData.phone,
        street: this.studentData.street,
        city: this.studentData.city,
        state: this.studentData.state,
        zip: this.studentData.zip,
        degree: this.studentData.degree,
        education: this.studentData.education,
        major: this.studentData.major,
        image: this.studentData.image,
        user_id: this.user_id
      };
      axios
        .post("/students", formData)
        .then(res => res.data)
        .catch(err => err);
      this.$router.push("/profile");
    }
  },
  created() {
    if (!localStorage.getItem("jwt")) this.$router.push("/");
    this.statelist = state;
    this.majorlist = major;
  },
  data: () => ({
    statelist: [],
    majorlist: [],
    education: [
      "high school",
      "associate degree",
      "college",
      "graduate",
      "doctorate"
    ],
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
      image: "https://images-na.ssl-images-amazon.com/images/I/4187qTMN5uL.png",
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
  width: 60rem;
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