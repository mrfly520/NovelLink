import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)
/*配置路由*/
const routes=[
    {name:'demo',path:"/demo",component:()=>import("../components/demo")}
]
/*实例化路由*/
const router = new VueRouter({
    routes // （简写）相当于 routes: routes
})
/*导出路由模块*/
export default router