/* resources > js > app.js */

require('./bootstrap');

window.Vue = require('vue');

Vue.component('app-init', require('./AppInit.vue').default);

import VueRouter from 'vue-router'
Vue.use(VueRouter)

import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
Vue.use(Vuetify)


import 'material-design-icons-iconfont/dist/material-design-icons.css' // Ensure you are using css-loader
import '@mdi/font/css/materialdesignicons.css'
window.Vue = require('vue');

import ApexCharts from 'apexcharts'

import Embed from 'v-video-embed'
Vue.use(Embed);

import VueApexCharts from 'vue-apexcharts'
Vue.use(VueApexCharts)
Vue.component('apexchart', VueApexCharts)

import Chartkick from 'vue-chartkick'
import Chart from 'chart.js'
Vue.use(Chartkick.use(Chart))

const VueUploadComponent = require('vue-upload-component')
Vue.component('file-upload', VueUploadComponent)

import moment from 'moment'
Vue.prototype.moment = moment




Vue.component('app-init', require('./AppInit.vue').default);
Vue.component('login', require('./views/frontend/login.vue').default);
Vue.component('register', require('./views/frontend/register.vue').default);
Vue.component('forgot', require('./views/frontend/forgot.vue').default);
Vue.component('reset', require('./views/frontend/reset.vue').default);


import Core from './mixins/core'
Vue.mixin(Core);

import Vuex from 'vuex';
Vue.use(Vuex);


import Toasted from 'vue-toasted';
import VueSweetalert2 from 'vue-sweetalert2';
import 'sweetalert2/dist/sweetalert2.min.css';
Vue.use(VueSweetalert2);
Vue.use(Toasted);

import CKEditor from '@ckeditor/ckeditor5-vue2';
Vue.use( CKEditor );


import shareData from './store/index';
const store = new Vuex.Store(
  shareData
);

import router  from './router';


import Dashboard from './views/Templete.vue'
import Products from './views/Products'


const app = new Vue({
    el: '#app',
    router,
    vuetify: new Vuetify(),
    store
});