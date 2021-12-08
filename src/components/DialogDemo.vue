<template>
<h1>Dialog 示例</h1>
<Demo :component="Dialog1Demo" />
<Demo :component="Dialog2Demo" />
</template>

<script lang="ts">
import Dialog from '../lib/Dialog.vue'
import Button from '../lib/Button.vue'
import {ref,h} from 'vue'
import {openDialog} from '../lib/openDialog'
export default {
  components: {
    Dialog,
    Button
      },
  setup() {
    const x = ref(false)
    const toggle = () => {
      x.value = !x.value
    }
    const f1 = () => {
      return false
    }
    const f2 = () => {}
    const showDialog = () => {
      openDialog({
        title: h('strong', {}, '标题'),
        content: '你好',
        ok() {
          console.log('ok')
        },
        cancel() {
          console.log('cancel')
        }
      })
    }
    return {
      x,
      toggle,
      f1,
      f2,
      showDialog
    }
  }
}
</script>