import Vue from "vue";
import Router from "vue-router";
import Home from "./views/Home.vue";
import Login from "./views/Login.vue";
import Profile from "./views/Profile.vue";
import Projects from "./views/Projects.vue";
import SignUp from "./components/Forms/SignUp";
import Skills from "./components/Forms/Skills";
import Student from "./components/Forms/Student";
import Business from "./components/Forms/Business";
import CreateProject from "./components/Forms/CreateProject";

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: "/home",
      name: "home",
      component: Home
    },
    {
      path: "/profile",
      name: "profile",
      component: Profile
    },
    {
      path: "/projects",
      name: "projects",
      component: Projects
    },
    {
      path: "/",
      name: "login",
      component: Login
    },
    {
      path: "/signup",
      name: "signup",
      component: SignUp
    },
    {
      path: "/create-profile",
      name: "create-profile",
      component: Student
    },
    {
      path: "/register",
      name: "register",
      component: Business
    },
    {
      path: "/create-project",
      name: "create-project",
      component: CreateProject
    },
    {
      path: "/skills",
      name: "skills",
      component: Skills
    }
  ],
  mode: "history"
});
