<template>
  <div>
    <NuxtRouteAnnouncer />
    <AppHeader />
    <main class="l-main">
      <NuxtPage />
    </main>
    <AppFooter />
  </div>
</template>

<script setup lang="ts">
import AppHeader from '~/components/organisms/AppHeader.vue'
import AppFooter from '~/components/organisms/AppFooter.vue'

// Global meta tags for all pages
useHead({
  meta: [
    { name: 'robots', content: 'noindex, nofollow' }
  ]
})
</script>