<template>
  <div>Index</div>
  <Link href="/show">Show Page</Link>
  <div>
    The message is {{ message }}
  </div>
</template>

<script setup>
import { Link } from '@inertiajs/vue3'

defineProps({ message:String })
</script>