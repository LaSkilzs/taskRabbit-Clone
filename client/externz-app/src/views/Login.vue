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
      <v-btn class="loginbtn mx-auto pa-2" color="#fa4938">Login</v-btn>
    </v-card-actions>
    <div class="text">
      Not Registered?
      <router-link to="/signup">Sign Up</router-link>Today
    </div>
  </v-card>
</template>

<script>
export default {
  name: "Login",
  data: () => ({
    showPassword: false,
    loginData: {
      email: "",
      password: ""
    }
    // roles: ["student", "business", "admin"]
    //
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
  margin-left: 12rem;
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
