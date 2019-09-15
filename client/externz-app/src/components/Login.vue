<template>
  <v-card width="600" class="card mx-auto">
    <v-card-title>
      <h1 class="display-1">Login</h1>
    </v-card-title>
    <v-card-text>
      <v-form>
        <v-text-field prepend-icon="mdi-email" label="Email" outlined />
        <v-text-field
          prepend-icon="mdi-lock"
          :type="showPassword ? 'text' : 'password'"
          label="Password"
          outlined
          :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
          @click:append="showPassword = !showPassword"
        />
      </v-form>
    </v-card-text>
    <v-card-actions>
      <v-btn color="#46d5bb">Register</v-btn>
      <v-spacer></v-spacer>

      <v-btn color="#fa4938">Login</v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  name: "Login",
  data: () => ({
    showPassword: false
    // roles: ["student", "business", "admin"]
    //
  })
};
</script>



<style scoped>
.card {
  margin-top: 20rem;
}
</style>
