<template>
  <v-card class="moveCard mt-5" width="50rem" height="25rem" \>
    <v-row class="cardRow">
      <v-col cols="6">
        <v-img class="image" height="20rem" width="20rem" :src="item.image"></v-img>
      </v-col>
      <v-col>
        <v-card-text>
          <v-col cols="6" sm="6" md="12">
            <v-btn>Create Student Profile</v-btn>
          </v-col>
          <v-col cols="6" sm="6" md="12">
            <v-btn>Create Business Profile</v-btn>
          </v-col>
        </v-card-text>
      </v-col>
    </v-row>
  </v-card>
</template>

<script>
export default {
  name: "NewProfile"
};
</script>
