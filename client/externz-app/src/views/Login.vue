<template>
  <v-card width="600" class="card mx-auto">
    <v-card-title>
      <h1 class="loginHead display-1">Login</h1>
    </v-card-title>
    <v-card-text>
      <v-form>
        <v-text-field prepend-icon="mdi-email" label="Email" outlined v-model="loginData.email" />
        <v-text-field
          prepend-icon="mdi-lock"
          :type="showPassword ? 'text' : 'password'"
          label="Password"
          outlined
          :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
          @click:append="showPassword = !showPassword"
          v-model="loginData.password"
        />
      </v-form>
    </v-card-text>
    <v-card-actions>
      <v-btn class="loginbtn mx-auto pa-2" color="#fa4938" @click.prevent="onSubmit">Login</v-btn>
    </v-card-actions>
    <div class="text">
      Not Registered?
      <router-link to="/signup">Sign Up</router-link>Today
    </div>
  </v-card>
</template>

<script>
import axios from "axios";

export default {
  name: "Login",
  methods: {
    onSubmit() {
      const formData = {
        email: this.loginData.email,
        password: this.loginData.password
      };
      console.log(formData);
      console.log(this.$router.params);
      axios
        .post("/login", formData)
        .then(res => {
          this.userId = res.data.user.id;
          this.userRole = res.data.user.role;
          localStorage.setItem("role", JSON.stringify(res.data.user.role));
          localStorage.setItem("user_id", JSON.stringify(res.data.user.id));
          localStorage.setItem("jwt", JSON.stringify(res.data.jwt));
          this.$router.push("/profile/user/" + this.userId);
        })
        .catch(err => err);
    }
  },
  data: () => ({
    userId: "",
    userRole: "",
    showPassword: false,
    loginData: {
      email: "",
      password: ""
    },
    user: []
  })
};
</script>



<style scoped>
.card {
  margin-top: 15rem;
}
.text {
  text-align: center;
  font-size: 1rem;
  font-style: italic;
}
.loginbtn {
  width: 20rem;
  margin-bottom: 1rem;
}
.loginHead {
  font-size: 2.5rem;
  font-weight: bold;
  margin: 0 auto;
}
</style>
