<template>
  <div class="profile">
    <v-container v-bind:profileData="profileData">
      <h1 class="ahead">Profile Page</h1>
      <v-card
        class="moveCard mt-5"
        width="50rem"
        height="25rem"
        v-for="item in profileData"
        :key="item.image"
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
              <v-col cols="6" sm="6" md="12" v-if="isStudent">
                <v-text-field label="email" :placeholder="item.email" outlined></v-text-field>
              </v-col>
              <v-col cols="6" sm="6" md="12" v-if="!isStudent">
                <v-text-field label="email" :placeholder="item.tagline" outlined></v-text-field>
              </v-col>
              <v-col cols="6" sm="6" md="12">
                <v-text-field :placeholder="item.current" outlined></v-text-field>
              </v-col>
            </v-card-text>
          </v-col>
        </v-row>
      </v-card>
      <List />
    </v-container>
  </div>
</template>


<script>
import List from "../components/Profile/List";
import axios from "axios";
export default {
  name: "Profile",
  components: {
    List
  },
  created() {
    if (!localStorage.getItem("jwt")) this.$router.push("/");

    fetch("http://localhost:3000/api/v1/authenticate", {
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer, ${localStorage.getItem("jwt")}`
      }
    })
      .then(res => {
        res.json().then(data => {
          this.profileData = [data.business] || [data.student];
          if (data.business) this.profileData[0]["image"] = this.image;
          localStorage.setItem("bizId", data.business.id);
          localStorage.setItem("bizName", data.business.name);
          if (data.business) this.profileData[0]["email"] = data.user.email;
          console.log(this.profileData);
          if (!localStorage.getItem("jwt")) this.$router.push("/");
          data.user.role === "student"
            ? (this.isStudent = true)
            : this.isStudent;
        });
      })
      .catch(err => this.$router.push("/"));
  },
  data: () => ({
    student: false,
    noProfile: true,
    profileData: [],
    image:
      "http://cdn.static-economist.com/sites/default/files/imagecache/full-width/20140118_wbp005_0.jpg"
  }),
  methods: {
    isStudent: () => {
      if (localStorage.getItem("role") === "student") this.student = true;
    }
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
