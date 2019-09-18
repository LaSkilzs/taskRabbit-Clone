<template>
  <v-card width="600" class="card mx-auto">
    <v-card-title>
      <h1 class="hea display-1 mx-auto">SignUp</h1>
    </v-card-title>
    <v-card-text>
      <v-form>
        <v-text-field prepend-icon="mdi-email" label="Email" outlined v-model="signupData.email" />
        <v-text-field
          prepend-icon="mdi-lock"
          :type="showPassword ? 'text' : 'password'"
          label="Enter Password"
          outlined
          :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
          @click:append="showPassword = !showPassword"
          v-model="signupData.password"
        />
        <v-text-field
          prepend-icon="mdi-lock"
          :type="showPassword ? 'text' : 'password'"
          label="Confirm Your Password"
          outlined
          :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
          @click:append="showPassword = !showPassword"
          v-model="signupData.confirmation"
        />
        <v-select
          prepend-icon="mdi-account-circle"
          :items="roles"
          :label="roles.name"
          placeholder="Account Type"
          outlined
          v-model="signupData.role"
        ></v-select>
      </v-form>
    </v-card-text>
    <v-card-actions>
      <v-btn color="#fa4938" class="submit mb-5" @click.prevent="onSubmit">Submit</v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
import axios from "axios";
export default {
  name: "SignUp",
  methods: {
    onSubmit() {
      const formData = {
        email: this.signupData.email,
        password: this.signupData.password,
        confirmation: this.signupData.confirmation,
        role: this.signupData.role
      };
      console.log(formData);
      // axios
      //   .post("/users", formData)
      //   .then(res => res.data)
      //   .catch(err => err);
    }
  },
  data: () => ({
    showPassword: false,
    roles: ["student", "business", "admin"],
    signupData: {
      email: "",
      password: "",
      confirmation: "",
      role: ""
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
