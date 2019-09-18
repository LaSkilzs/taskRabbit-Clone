<template>
  <v-container>
    <v-col cols="12">
      <h1 class="student">Register Business</h1>
      <div class="about">
        <v-btn class="buttons">
          <router-link to="/create-project" class="link">Create Project</router-link>
        </v-btn>
        <v-btn class="buttons">
          <router-link to="/skills" class="link">add Project Skill</router-link>
        </v-btn>
      </div>
    </v-col>
    <v-form ref="form" class="form">
      <v-col cols="12" class="textRow">
        <v-text-field v-model="businessData.name" label="name" outlined class="texted" required></v-text-field>
        <v-text-field
          v-model="businessData.description"
          label="description"
          outlined
          class="texted"
          required
        ></v-text-field>
        <v-text-field
          v-model="businessData.tagLine"
          label="Company tagLine"
          outlined
          class="texted"
          required
        ></v-text-field>
      </v-col>
      <v-col cols="12" class="textRow">
        <v-text-field v-model="businessData.street" label="street" outlined class="texted" required></v-text-field>
        <v-text-field v-model="businessData.city" label="city" outlined class="texted" required></v-text-field>
        <v-select
          v-model.lazy="businessData.state"
          :items="statelist"
          :rules="[v => !!v || 'State is required']"
          :label="statelist.name"
          :value="businessData.state"
          outlined
          placeholder="State "
          class="texted"
          required
        ></v-select>
      </v-col>
      <v-col cols="12" class="textRow">
        <v-text-field
          v-model="businessData.zip"
          label="zip"
          outlined
          class="texted"
          text="Number"
          required
        ></v-text-field>
        <v-select
          v-model.lazy="businessData.industry"
          :items="industrylist"
          :rules="[v => !!v || 'Industry is required']"
          :label="industrylist.name"
          :value="businessData.industry"
          outlined
          placeholder="Industry"
          class="texted"
          required
        ></v-select>
        <v-text-field
          v-model="businessData.userId"
          label="userId"
          outlined
          class="texted"
          text="Number"
        ></v-text-field>
      </v-col>
      <div>
        <v-btn class="btns" color="success" @click.prevent="onSubmit">Submit Form</v-btn>
      </div>
    </v-form>
  </v-container>
</template>

<script>
import state from "../../js/States";
import axios from "axios";

export default {
  name: "Business",
  methods: {
    onSubmit() {
      this.industry_id = this.industries.filter(
        industry => this.businessData.industry === industry.name
      );

      const formData = {
        name: this.businessData.name,
        description: this.businessData.description,
        tagline: this.businessData.tagline,
        street: this.businessData.street,
        city: this.businessData.city,
        state: this.businessData.state,
        zip: this.businessData.zip,
        industry_id: this.industry_id[0].id,
        user_id: localStorage.getItem("user_id")
      };
      console.log(formData);
      axios
        .post("/businesses", formData)
        .then(res => localStorage.setItem("bizId", res.data.id))
        .catch(err => err);
      this.$router.push("/profile/user/" + localStorage.getItem("user_id"));
    }
  },
  created() {
    if (!localStorage.getItem("jwt")) this.$router.push("/");
    this.statelist = state;
    axios
      .get("/industries")
      .then(res => {
        res.data.map(industry => this.industrylist.push(industry.name));
        console.log(res.data);
        this.industries = res.data;
      })
      .catch(err => err);
  },
  data: () => ({
    industries: [],
    statelist: [],
    industrylist: [],
    industry_id: "",
    businessData: {
      name: "",
      description: "",
      tagline: "",
      street: "",
      city: "",
      state: "",
      zip: "",
      industry: ""
    }
  })
};
</script>

<style scoped>
.about {
  display: flex;
  justify-content: center;
  margin-bottom: 2rem;
}
.student {
  text-align: center;
  font-size: 2.5rem;
  margin: 1rem;
}
.form {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: 0 auto;
}
.textRow {
  display: flex;
  width: 60rem;
  /* justify-content: center; */
}
.texted {
  margin: 0.3rem;
  width: 50rem;
  font-size: 1rem;
  text-align: center;
}
.btns {
  margin: 1rem;
  width: 15rem;
  font-size: 1rem !important;
  background-color: #fa4938 !important;
  color: white !important;
}
.buttons {
  margin: 1rem;
  width: 15rem;
  font-size: 1rem !important;
  background: white;
}
.link {
  text-decoration: none;
  color: #fa4938 !important;
}
</style>