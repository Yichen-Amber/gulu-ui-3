<template>
<div>
    <button class="gulu-button"
    :class="{[`theme-${theme}`]: theme}">
      <slot />
    </button>
  </div>
</template>
<script lang="ts">
export default {
  props: {
    theme:{
    type:String,
    default:'button'
  }
  }
}
</script>
<style lang="scss" scoped>
div {
  border: 1px solid red;
}
</style> 