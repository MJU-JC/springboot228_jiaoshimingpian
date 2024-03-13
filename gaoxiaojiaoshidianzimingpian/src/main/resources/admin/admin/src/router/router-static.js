import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

     import users from '@/views/modules/users/list'
    import dictionary from '@/views/modules/dictionary/list'
    import gonggao from '@/views/modules/gonggao/list'
    import keyanchengguo from '@/views/modules/keyanchengguo/list'
    import keyanchengguoCollection from '@/views/modules/keyanchengguoCollection/list'
    import mingpian from '@/views/modules/mingpian/list'
    import mingpianDelete from '@/views/modules/mingpianDelete/list'
    import mingpianCollection from '@/views/modules/mingpianCollection/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import config from '@/views/modules/config/list'
    import dictionaryBangongshi from '@/views/modules/dictionaryBangongshi/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionaryKecheng from '@/views/modules/dictionaryKecheng/list'
    import dictionaryKeyanchengguo from '@/views/modules/dictionaryKeyanchengguo/list'
    import dictionaryKeyanchengguoCollection from '@/views/modules/dictionaryKeyanchengguoCollection/list'
    import dictionaryMingpian from '@/views/modules/dictionaryMingpian/list'
    import dictionaryMingpianCollection from '@/views/modules/dictionaryMingpianCollection/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryShangxia from '@/views/modules/dictionaryShangxia/list'
    import dictionaryXueyuan from '@/views/modules/dictionaryXueyuan/list'
    import dictionaryZhiwu from '@/views/modules/dictionaryZhiwu/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    } ,{
        path: '/users',
        name: '管理信息',
        component: users
      }
    ,{
        path: '/dictionaryBangongshi',
        name: '办公室',
        component: dictionaryBangongshi
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionaryKecheng',
        name: '课程',
        component: dictionaryKecheng
    }
    ,{
        path: '/dictionaryKeyanchengguo',
        name: '科研成果类型',
        component: dictionaryKeyanchengguo
    }
    ,{
        path: '/dictionaryKeyanchengguoCollection',
        name: '收藏表类型',
        component: dictionaryKeyanchengguoCollection
    }
    ,{
        path: '/dictionaryMingpian',
        name: '名片类型',
        component: dictionaryMingpian
    }
    ,{
        path: '/dictionaryMingpianCollection',
        name: '收藏表类型',
        component: dictionaryMingpianCollection
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryShangxia',
        name: '是否展示',
        component: dictionaryShangxia
    }
    ,{
        path: '/dictionaryXueyuan',
        name: '学院',
        component: dictionaryXueyuan
    }
    ,{
        path: '/dictionaryZhiwu',
        name: '职务',
        component: dictionaryZhiwu
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/gonggao',
        name: '公告',
        component: gonggao
      }
    ,{
        path: '/keyanchengguo',
        name: '科研成果',
        component: keyanchengguo
      }
    ,{
        path: '/keyanchengguoCollection',
        name: '科研成果收藏',
        component: keyanchengguoCollection
      }
    ,{
        path: '/mingpian',
        name: '名片',
        component: mingpian
      }
    ,{
        path: '/mingpianDelete',
        name: '名片回收站',
        component: mingpianDelete
      }
    ,{
        path: '/mingpianCollection',
        name: '名片收藏',
        component: mingpianCollection
      }
    ,{
        path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
    ,{
        path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
