<template>
  <div class="profile">
    <v-container v-bind:profileData="profileData">
      <h1 class="ahead">Profile Page</h1>
      <v-card
        class="moveCard mt-5"
        width="50rem"
        height="25rem"
        v-for="item in profileData"
        :key="item.name"
      >
        <v-row class="cardRow">
          <v-col cols="6">
            <v-img class="image" height="20rem" width="20rem" :src="item.image"></v-img>
          </v-col>
          <v-col>
            <v-card-text>
              <v-col cols="6" sm="6" md="12">
                <v-text-field label="name" :placeholder="item.name" outlined></v-text-field>
              </v-col>
              <v-col cols="6" sm="6" md="12">
                <v-text-field label="email" :placeholder="item.email" outlined></v-text-field>
              </v-col>
              <v-col cols="6" sm="6" md="12">
                <v-text-field :placeholder="item.current" outlined></v-text-field>
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
  },
  data: () => ({
    profileData: [
      {
        image:
          "https://images-na.ssl-images-amazon.com/images/I/4187qTMN5uL.png",
        name: "The Doe",
        email: "doe@email.com",
        current: 0
      }
    ]
  })
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
