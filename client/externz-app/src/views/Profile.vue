<template>
  <div class="profile">
    <v-container>
      <h1 class="ahead">Profile Page</h1>
      <v-card class="moveCard mt-5" width="50rem" height="25rem">
        <v-row class="cardRow">
          <v-col cols="6">
            <v-img
              class="image"
              height="20rem"
              width="20rem"
              src="https://images-na.ssl-images-amazon.com/images/I/4187qTMN5uL.png"
            ></v-img>
          </v-col>
          <v-col>
            <v-card-text>
              <v-col cols="6" sm="6" md="12">
                <v-text-field label="name" outlined></v-text-field>
              </v-col>
              <v-col cols="6" sm="6" md="12">
                <v-text-field label="skills" outlined></v-text-field>
              </v-col>
              <v-col cols="6" sm="6" md="12">
                <v-text-field label="current_projects" outlined current_projects></v-text-field>
              </v-col>
            </v-card-text>
          </v-col>
        </v-row>
      </v-card>
      <!-- <v-row class="row"> -->
      <List />
      <!-- </v-row> -->
    </v-container>
  </div>
</template>


<script>
import List from "../components/Profile/List";
export default {
  name: "Profile",
  components: {
    List
  }
};
</script>
<style  scoped>
.profile {
  margin: 0 auto;
  margin-top: 5rem;
  display: flex;
}
.image {
  margin: 0 auto;
  margin-top: 1rem;
}
.row {
  border: 1rem solid grey;
}
.cardRow {
  margin: 0 auto;
}
.moveCard {
  margin: 0 auto;
}
.ahead {
  text-align: center;
  font-size: 3rem;
}
</style>
