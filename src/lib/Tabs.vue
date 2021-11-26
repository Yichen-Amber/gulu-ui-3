<template>
<div>
  <component :is="defaults[0]"/>
  <component :is="defaults[2]"/>
</div>
</template>
<script lang="ts">
import Tab from './Tab.vue'
export default {
    setup(props,context){
        const defaults=context.slots.defaults()
        defaults.forEach((tag)=>{
            if(tag.type!==Tab){
                throw new Error('Tabs 子标签必须是 Tab')
            }
        })
    return {
      defaults
    }
  }
}
</script>