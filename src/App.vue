<template>
 <div>导航栏|
   <router-link to="/">Amber</router-link>|
   <router-link to="/xxx">Amber2</router-link>
 </div>
 <hr/>

 <router-view/>
</template>

<script>
import Amber from './components/Amber.vue'

export default {
  name: 'App',
}
</script>
