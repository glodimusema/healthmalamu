import Vue from 'vue'
import VueRouter from 'vue-router'
import VueRouteMiddleware from 'vue-route-middleware';
import isNotAdmin from './app/middleware/isNotAdmin'
import isNotUser from './app/middleware/isNotUser'
import isNotMember from './app/middleware/isAdminOrSubAdmin'




Vue.use(VueRouter);

import Info from './views/info.vue'
import Dashboard from './views/Dashboard'



import Profil_stat from './views/Dashboard'

import Role from './views/backend/admin/role.vue'
import Compte from './views/backend/admin/crud.vue'
import Site from './views/backend/admin/configure_site.vue'
import Basic from './views/backend/admin/configure_basic.vue'

import Service from './views/backend/admin/services.vue'
import Operation_blog from './views/backend/admin/operation_blog.vue'
import Operation_partenaire from './views/backend/admin/operation_partenaire.vue'
import Operation_galery from './views/backend/admin/operation_galery.vue'
import Operation_video from './views/backend/admin/operation_video.vue'
import UserProfil from './views/backend/admin/userProfil.vue'
import UserSecure from './views/backend/admin/basicSecure.vue'

import profil_stat from  './views/backend/admin/pnud/profil_stat.vue'


/*
*les scripts commencent
*=====================
*pnud management project
*------------------------
*/

import Pays from './views/backend/admin/pnud/pays.vue'
import Province from './views/backend/admin/pnud/province.vue'
import Secteur from './views/backend/admin/pnud/secteur.vue'
import forme_juridique from './views/backend/admin/pnud/formeJuridique.vue'
import Liste_entreprise from './views/backend/admin/pnud/liste_entreprise.vue'
import entrepriseDetail from './views/backend/admin/pnud/entrepriseDetail.vue'
import CanvasEntrepriseDetail from './views/backend/admin/pnud/canvasEntrepriseDetail.vue'
import SwotEntrepriseDetailProjet from './views/backend/admin/pnud/SwotEntrepriseDetailProjet.vue'
import Entreprise from './views/backend/admin/pnud/pages/entreprises.vue'
import Statistique_entreprise  from './views/backend/admin/pnud/statistique_entreprise.vue'
import Statistique_user  from './views/backend/admin/pnud/pages/statistiqueUtilisateur.vue'
import DashboardAdmin from  './views/backend/admin/pnud/pages/dashbord.vue'
// import DashboardAdmin from  './views/backend/admin/pnud/pages/Admindashboard.vue'
import weekAdmin from  './views/backend/admin/pnud/pages/week.vue'


//burega
import operation_catArticle from './views/backend/admin/categoryArticle.vue'
import operation_territoire from './views/backend/admin/Territoire.vue'
import Team from './views/backend/admin/configure_team.vue'
import Contact_info from './views/backend/admin/configure_contact_info.vue'
import Carousel from './views/backend/admin/configure_carousel.vue'
import Texto from './views/backend/admin/Texto.vue'
//fin burega


import Temoignages from './views/backend/admin/configure_temoignage.vue'
import Valeur from './views/backend/admin/configure_valeur.vue'

import Choix from './views/backend/admin/configure_choix.vue'
import Decision from './views/backend/admin/configure_decision.vue'
import Avantage from './views/backend/admin/configure_avantage.vue'
import NosServices from './views/backend/admin/configure_valeur_services.vue'

import role_service from './views/backend/admin/configure_role.vue'
import Sous_services from './views/backend/admin/configure_sous_service.vue'
 

/*
*les scripts commencent users
*=====================
*pnud management user
*------------------------
*/
import Liste_entreprise_user from './views/backend/admin/pnud/liste_entreprise_user.vue'
import GroupChat from  './views/backend/admin/pnud/pages/groupChat.vue'

/*
*les scripts commencent users
*=====================
*pnud management user
*------------------------
*/

import Ville from './views/backend/projet/Ville.vue'
import Commune from './views/backend/projet/Commune.vue'
import Quartier from './views/backend/projet/Quartier.vue'
import Avenue from './views/backend/projet/Avenue.vue'


/*
*les scripts commencent
*=====================
*pnud management project
*------------------------
*/



const Router = new VueRouter({
  mode: 'history',
  routes: [
    {
      path: '/apps/infos',
      name: 'infos',
      component: Info,

    },
    {
      path: '/dashbord',
      name: 'dashboard_1',
      component: DashboardAdmin,
      // meta: { middleware: [isNotAdmin] }
    },


    /*
    *script pouir site web
    *=======================
    *======================== 
    * 
  
    */
    {
      path: '/admin/temoignages',
      name: 'temoignages_one',
      component: Temoignages,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/valeur',
      name: 'valeur_one',
      component: Valeur,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/choix',
      name: 'choix_one',
      component: Choix,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/decision',
      name: 'decision_one',
      component: Decision,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/avantage',
      name: 'avantage_one',
      component: Avantage,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/service',
      name: 'service_one',
      component: NosServices,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/role_service',
      name: 'role_service_one',
      component: role_service,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/sous_service',
      name: 'sous_service_one',
      component: Sous_services,
      meta: { middleware: [isNotAdmin] }
    },

     /*
    *script pouir site web
    *=======================
    *======================== 
    * 
  
    */



   
    {
      path: '/admin/profil',
      name: 'profil_1',
      component: UserProfil,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/role',
      name: 'role',
      component: Role,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/compte',
      name: 'compte',
      component: Compte,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/configure_site',
      name: 'configure_site',
      component: Site,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/configure_basic',
      name: 'configure_basic',
      component: Basic,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/operation_service',
      name: 'operation_service',
      component: Service,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/operation_blog',
      name: 'operation_blog',
      component: Operation_blog,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/operation_partenaire',
      name: 'operation_partenaire',
      component: Operation_partenaire,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/operation_galery',
      name: 'operation_galery',
      component: Operation_galery,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/operation_video',
      name: 'operation_video',
      component: Operation_video,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/security',
      name: 'security',
      component: UserSecure,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/chat',
      name: 'chat_1',
      component: GroupChat,
      meta: { middleware: [isNotAdmin] }
    },


    

    


    /*
    *scripts pour pnud
    *==================
    */

    {
      path: '/admin/pays',
      name: 'pays',
      component: Pays,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/provinces',
      name: 'province',
      component: Province,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/secteur',
      name: 'secteur',
      component: Secteur,
      meta: { middleware: [isNotAdmin] }
    },

   
    
    {
      path: '/admin/forme_juridique',
      name: 'forme_juridique',
      component: forme_juridique,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/liste_entreprise',
      name: 'liste_entreprise',
      component: Liste_entreprise,
      meta: { middleware: [isNotAdmin] }
    },
    
    {
      path: "/admin/entreprise_detail/:slug",
      name: "entreprise_detail_1",
      component: entrepriseDetail,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: "/admin/canvas_entreprise_detail/:slug",
      name: "canvas_entreprise_detail_1",
      component: CanvasEntrepriseDetail,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: "/admin/swot_entreprise_detail/:slug",
      name: "swot_entreprise_detail_1",
      component: SwotEntrepriseDetailProjet,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/entreprises',
      name: 'entreprises',
      component: Entreprise,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/statistique_entreprise',
      name: 'statistique_entreprise',
      component: Statistique_entreprise,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/statistique_user',
      name: 'statistique_user',
      component: Statistique_user,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/dashboard',
      name: 'dashboard_admin',
      component: DashboardAdmin,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/week',
      name: 'week_admin',
      component: weekAdmin,
      meta: { middleware: [isNotAdmin] }
    },

    //burega
    {
      path: '/admin/operation_catArticle',
      name: 'operation_catArticle',
      component: operation_catArticle,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/territoire',
      name: 'territoire',
      component: operation_territoire,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/operation_team',
      name: 'operation_team',
      component: Team,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/contact_info',
      name: 'contact_info_one',
      component: Contact_info,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/carousel',
      name: 'carousel_one',
      component: Carousel,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/texto',
      name: 'texto_one',
      component: Texto,
      meta: { middleware: [isNotAdmin] }
    },

    //hopital
    {
      path: '/admin/ville',
      name: 'ville',
      component: Ville,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/commune',
      name: 'commune',
      component: Commune,
      meta: { middleware: [isNotAdmin] }
    },
    {
      path: '/admin/quartier',
      name: 'quartier',
      component: Quartier,
      meta: { middleware: [isNotAdmin] }
    },

    {
      path: '/admin/avenue',
      name: 'avenue',
      component: Avenue,
      meta: { middleware: [isNotAdmin] }
    },
    

   
    
    

    
    
    

    
    

    

    /*
    *scripts pour pnud
    *==================
    */


    

   


    
    

    

    


    /*
    *
    *===============
    * *
    * *
    * *
    * *
    * fin lien de users
    * liens de users
    * =================

    */

    
    {
      path: '/user/dashboard',
      name: 'dashbord2',
      component: DashboardAdmin,
      meta: { middleware: [isNotUser] }
    },
    {
      path: '/user/profil',
      nema: 'profil2',
      component: UserProfil,
      // meta: { middleware: [isNotUser] }
    },

    {
      path: '/user/security',
      name: 'security2',
      component: UserSecure,
      meta: { middleware: [isNotUser] }
    },

    {
      path: '/user/liste_entreprise',
      name: 'liste_entreprise_2',
      component: Liste_entreprise_user,
      meta: { middleware: [isNotUser] }
    },

    {
      path: "/user/entreprise_detail/:slug",
      name: "entreprise_detail_2",
      component: entrepriseDetail,
      meta: { middleware: [isNotUser] }
    },

    {
      path: "/user/canvas_entreprise_detail/:slug",
      name: "canvas_entreprise_detail_2",
      component: CanvasEntrepriseDetail,
      meta: { middleware: [isNotUser] }
    },
    {
      path: "/user/swot_entreprise_detail/:slug",
      name: "swot_entreprise_detail_2",
      component: SwotEntrepriseDetailProjet,
      meta: { middleware: [isNotUser] }
    },
    {
      path: "/user/profil_stat",
      name: "profil_stat_2",
      component: profil_stat,
      meta: { middleware: [isNotUser] }
    },

    {
      path: '/user/chat',
      name: 'chat_2',
      component: GroupChat,
      meta: { middleware: [isNotUser] }
    },
    

     /*
    *
    *===============
    * *
    * *
    * *
    * *
    * fin lien de users
    * liens de users
    * =================

    */

    
    {
      path: '/member/dashboard',
      name: 'dashbord_3',
      component: DashboardAdmin,
      // meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/profil',
      nema: 'profil_3',
      component: UserProfil,
      // meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/security',
      name: 'security_3',
      component: UserSecure,
      meta: { middleware: [isNotMember] }
    },



     /*
    *script pouir site web
    *=======================
    *======================== 
    * 
  
    */
    {
      path: '/member/statistique_user',
      name: 'statistique_user',
      component: Statistique_user,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/temoignages',
      name: 'temoignages_thre',
      component: Temoignages,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/valeur',
      name: 'valeur_thre',
      component: Valeur,
      meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/choix',
      name: 'choix_thre',
      component: Choix,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/decision',
      name: 'decision_thre',
      component: Decision,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/avantage',
      name: 'avantage_thre',
      component: Avantage,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/service',
      name: 'service_thre',
      component: NosServices,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/role_service',
      name: 'role_service_thre',
      component: role_service,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/sous_service',
      name: 'sous_service_thre',
      component: Sous_services,
      meta: { middleware: [isNotMember] }
    },

    // autres
    {
      path: '/member/week',
      name: 'week_admin_thre',
      component: weekAdmin,
      meta: { middleware: [isNotMember] }
    },

    //burega
    {
      path: '/member/operation_catArticle',
      name: 'operation_catArticle_thre',
      component: operation_catArticle,
      meta: { middleware: [isNotMember] }
    },

    
    {
      path: '/member/operation_team',
      name: 'operation_team_thre',
      component: Team,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/contact_info',
      name: 'contact_info_thre',
      component: Contact_info,
      meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/carousel',
      name: 'carousel_thre',
      component: Carousel,
      meta: { middleware: [isNotMember] }
    },

     /*
    *script pouir site web
    *=======================
    *======================== 
    * 
  
    */

    {
      path: '/member/operation_blog',
      name: 'operation_blog_2',
      component: Operation_blog,
      meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/operation_partenaire',
      name: 'operation_partenaire_2',
      component: Operation_partenaire,
      meta: { middleware: [isNotMember] }
    },
    {
      path: '/member/operation_galery',
      name: 'operation_galery_2',
      component: Operation_galery,
      meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/operation_video',
      name: 'operation_video_2',
      component: Operation_video,
      meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/chat',
      name: 'chat_3',
      component: GroupChat,
      meta: { middleware: [isNotMember] }
    },

    {
      path: '/member/operation_service',
      name: 'operation_service_thre',
      component: Service,
      meta: { middleware: [isNotMember] }
    },



    
   

    /*
    *
    *===============
    * *
    * *
    * *
    * *
    * fin lien de users
    * liens de users
    * =================

    */


    


















  ],
});


Router.beforeEach(VueRouteMiddleware());
export default Router
