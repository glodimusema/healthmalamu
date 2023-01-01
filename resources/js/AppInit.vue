<template>
  <v-app id="inspire">
    <!-- navigation -->
    <v-navigation-drawer v-model="drawer" app>
      <!-- navigation -->
      <Navigation :linkAdmin="linkAdmin" />
      <!-- fin navigation -->
    </v-navigation-drawer>
    <!-- fin navigation -->

    <!-- appbar -->
    <v-app-bar app elevate-on-scroll elevation="3">

      <v-app-bar-nav-icon @click="drawer = !drawer"> </v-app-bar-nav-icon>

       
      <v-spacer />

       
      
      <v-spacer />
      <!-- notification -->
      <v-btn @click="changeTheme" small fab depressed class="mr-2">
          <v-icon>{{ themeIcon }}</v-icon>
      </v-btn>
      <!-- <Notification /> -->
      <!-- fin notification -->

      <!-- navMenu avatar -->
      <NavMenu />
      <!-- fin navMenu avatar -->
      <v-progress-linear
        v-show="isloading"
        :indeterminate="isloading"
        absolute
        bottom
        color="primary"
      ></v-progress-linear>
    </v-app-bar>
    <!-- fin apbar -->

    <v-main style="background: #f5f5f540">
      <v-container class="py-8 px-6" fluid>
        <router-view></router-view>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import { mapGetters, mapActions } from "vuex";
import Navigation from "./views/component/navigation.vue";
import Notification from "./views/component/notification.vue";
import NavMenu from "./views/component/navMenu.vue";
export default {
  name: "App",
  components: {
    Navigation,
    Notification,
    NavMenu,
  },
  data() {
    return {
      cards: ["Today", "Yesterday"],
      drawer: true,

      themeIcon: "dark_mode",
      lightBg: "background: rgb(246 248 250)",
      darkBg: "background:rgb(40, 42, 54)",

      linkAdmin: [],
    };
  },
  created() {
    this.showConnected();
    this.testLink();
  },
  computed: {
    ...mapGetters(["userList", "isloading"]),
  },
  methods: {

    ...mapActions(["getUser"]),

    changeTheme() {
      this.$vuetify.theme.dark = !this.$vuetify.theme.dark;
      !this.$vuetify.theme.dark ? this.lightMode() : this.darkMode();
    },
    lightMode() {
      this.themeIcon = "dark_mode";
      this.$store.state.bgColor = this.lightBg;
    },
    darkMode() {
      this.themeIcon = "light_mode";
      this.$store.state.bgColor = this.darkBg;
    },

    showConnected() {
      var connected = this.userData.email;
      // console.log("user connected:" + connected);
    },
    testLink() {
      if (this.userData.id_role == 1) {
        this.linkAdmin = {
          links: [
            {
              icon: "mdi-microsoft-windows",
              text: "Tableau de bord",
              href: "/admin/dashboard",
            },

            {
              icon: "chat",
              text: "Chat",
              href: "/admin/chat",
            },
          ],

          links_operation_2: [
            {
              icon: "credit_card",
              text: "Carousel",
              href: "/admin/carousel",
            },
            {
              icon: "credit_card",
              text: "Service",
              href: "/admin/operation_service",
            },
            {
              icon: "store",
              text: "Galérie",
              href: "/admin/operation_galery",
            },
            {
              icon: "store",
              text: "Vidéo",
              href: "/admin/operation_video",
            },
            {
              icon: "store",
              text: "Partenaire",
              href: "/admin/operation_partenaire",
            },

            {
              icon: "store",
              text: "Notre famille",
              href: "/admin/operation_team",
            },



          ],

          links_operation: [
            // {
            //   icon: "store",
            //   text: "Pays",
            //   href: "/admin/pays",
            // },
            // {
            //   icon: "credit_card",
            //   text: "Provinces",
            //   href: "/admin/provinces",
            // },

            // {
            //   icon: "store",
            //   text: "Chef lieu",
            //   href: "/admin/ville",
            // },
            // {
            //   icon: "store",
            //   text: "Commune",
            //   href: "/admin/commune",
            // },

            // {
            //   icon: "store",
            //   text: "Quartier",
            //   href: "/admin/quartier",
            // },

            // {
            //   icon: "store",
            //   text: "Avenue",
            //   href: "/admin/avenue",
            // },

            // {
            //   icon: "store",
            //   text: "Forme juridique",
            //   href: "/admin/forme_juridique",
            // },
            // {
            //     text: "Statistique sur les blogs",
            //     href: "/admin/statistique_entreprise",
            // },
            // {
            //   icon: "store",
            //   text: "Territoire",
            //   href: "/admin/territoire",
            // },
           
            // {
            //   icon: "store",
            //   text: "Envoie SMS",
            //   href: "/admin/texto",
            // },
            
            {
              icon: "store",
              text: "Statistique sur Les utilisateur",
              href: "/admin/statistique_user",
            },


            {
              icon: "api",
              text: "Témoignage",
              href: "/admin/temoignages",
            },

            {
              icon: "api",
              text: "Nos Valeurs",
              href: "/admin/valeur",
            },

            {
              icon: "api",
              text: "Nos Rôles",
              href: "/admin/role_service",
            },

            {
              icon: "api",
              text: "Nos Choix",
              href: "/admin/choix",
            },

           
            {
              icon: "credit_card",
              text: "Services",
              href: "/admin/service",
            },
           

            {
              icon: "api",
              text: "Decisions",
              href: "/admin/decision",
            },

            {
              icon: "api",
              text: "Avantage",
              href: "/admin/avantage",
            },
            {
              icon: "api",
              text: "Sous services",
              href: "/admin/sous_service",
            },

           

           

            
          ],

          links_systems: [
            {
              icon: "people",
              text: "Compte",
              href: "/admin/compte",
            },

            {
              icon: "api",
              text: "Privilège",
              href: "/admin/role",
            },
            {
              icon: "credit_card",
              text: "Contact pour info",
              href: "/admin/contact_info",
            },

            {
              icon: "api",
              text: "Configuration basique",
              href: "/admin/configure_basic",
            },

            {
              icon: "api",
              text: "Configuration du site",
              href: "/admin/configure_site",
            },

          ],

          sublinks: [
            {
              icon: "book",
              text: "A propos ",
              href: "/admin/about_page",
            },
          ],

          listGroup: [
            {
              text: "Article",
              icon: "local_mall",
              items: [
               
                {

                    text: "Catégorie d'article",
                    href: "/admin/operation_catArticle",
                },
                {
                    text: "Blog",
                    href: "/admin/operation_blog",
                },

                {
                    icon: "store",
                    text: "Mot de la semaine",
                    href: "/admin/week",
                },
                
              ],
            },
          ],

          links_systems_mouvement: [
            {
              icon: "api",
              text: "Type de mouvement",
              href: "/admin/operation_type_mouvement",
            },

            {
              icon: "api",
              text: "Type d'examen",
              href: "/admin/operation_type_examen",
            },

            {
              icon: "api",
              text: "Les examens",
              href: "/admin/operation_examen",
            },

            {
              icon: "api",
              text: "Type medicament",
              href: "/admin/operation_type_medicament",
            },

            {
              icon: "api",
              text: "Les medicaments",
              href: "/admin/operation_medicament",
            },
           
            

          ],

          links_systems_mouvement_2: [
            {
              icon: "api",
              text: "Laboratoire",
              href: "/admin/operation_laboratoire",
            },

            {
              icon: "api",
              text: "Pharmatie",
              href: "/admin/operation_type_examen",
            },

            {
              icon: "api",
              text: "Comptabilité",
              href: "/admin/operation_comptabilite",
            },

            {
              icon: "api",
              text: "Gestion rendez-vous",
              href: "/admin/operation_rendez_vous",
            },

           

          ],

          links_systems_mouvement_3: [
            {
              icon: "api",
              text: "Statistique sur malade",
              href: "/admin/operation_laboratoire",
            },

            {
              icon: "api",
              text: "Raport financier",
              href: "/admin/operation_type_examen",
            },

            {
              icon: "api",
              text: "Fiche de stock médicament",
              href: "/admin/operation_comptabilite",
            },

           
           

          ],

          admins: [
            ["Management", ""],
            ["Settings", ""],
          ],
        };
      } else if (this.userData.id_role == 2) {
        this.linkAdmin = {
          links: [
            {
              icon: "mdi-microsoft-windows",
              text: "Tableau de bord",
              href: "/user/dashboard",
            },

           {
              icon: "chat",
              text: "Chat",
              href: "/user/chat",
            },
          ],

          links_operation: [
            {
              icon: "credit_card",
              text: "Mon entreprise",
              href: "/user/liste_entreprise",
            },
            
          ],

          links_operation_2: [
            
          ],

          links_systems: [],

          sublinks: [
            {
              icon: "book",
              text: "A propos ",
              href: "/user/about_page",
            },
          ],

          listGroup: [
            {
              text: "Statistiques",
              icon: "donut_small",
              items: [
                {
                  text: "Ma statistique actuelle",
                  href: "/user/profil_stat",
                },
              ],
            },
          ],
        };
      } else if (this.userData.id_role == 3) {
        this.linkAdmin = {
          links: [
            {
              icon: "mdi-microsoft-windows",
              text: "Tableau de bord",
              href: "/member/dashboard",
            },

            {
              icon: "chat",
              text: "Chat",
              href: "/member/chat",
            },
          ],

          links_operation_2: [
            
          ],

          links_operation: [
            // {
            //   icon: "credit_card",
            //   text: "Entreprise",
            //   href: "/member/liste_entreprise",
            // },
            // {
            //   icon: "store",
            //   text: "Opération 2",
            //   href: "/member/operation2",
            // },

          
            {
              icon: "api",
              text: "Témoignage",
              href: "/member/temoignages",
            },

            {
              icon: "api",
              text: "Nos Valeurs",
              href: "/member/valeur",
            },

            {
              icon: "api",
              text: "Nos Rôles",
              href: "/member/role_service",
            },

            {
              icon: "api",
              text: "Nos Choix",
              href: "/member/choix",
            },

           
            {
              icon: "credit_card",
              text: "Services",
              href: "/member/service",
            },
           

            {
              icon: "api",
              text: "Décisions",
              href: "/member/decision",
            },

            {
              icon: "api",
              text: "Avantage",
              href: "/member/avantage",
            },
            {
              icon: "api",
              text: "Sous services",
              href: "/member/sous_service",
            },

            {
              icon: "credit_card",
              text: "Carousel",
              href: "/member/carousel",
            },
            {
              icon: "credit_card",
              text: "Autre Service",
              href: "/member/operation_service",
            },
            {
              icon: "store",
              text: "Galérie",
              href: "/member/operation_galery",
            },
            {
              icon: "store",
              text: "Vidéo",
              href: "/member/operation_video",
            },
            {
              icon: "store",
              text: "Partenaire",
              href: "/member/operation_partenaire",
            },

            {
              icon: "store",
              text: "Notre famille",
              href: "/member/operation_team",
            },



          ],

          links_systems: [],

          sublinks: [
            {
              icon: "book",
              text: "A propos ",
              href: "/member/about_page",
            },
          ],

          listGroup: [
            {
              text: "Statistiques",
              icon: "donut_small",
              items: [
                {
                  icon: "store",
                  text: "Statistique sur Les utilisateur",
                  href: "/member/statistique_user",
                },
              ],
            },
          ],
        };
      } else {
      }
    },
  },
};
</script>


