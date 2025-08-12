<template>
  <div>
    <HeroSection />
    <ServicesSection />
    <NewsSection />
    <ClinicInfoSection />
  </div>
</template>

<script setup lang="ts">
import HeroSection from '~/components/molecules/HeroSection.vue'
import ServicesSection from '~/components/organisms/ServicesSection.vue'
import NewsSection from '~/components/organisms/NewsSection.vue'
import ClinicInfoSection from '~/components/organisms/ClinicInfoSection.vue'

// Meta tags
useHead({
  title: 'さいとう小児歯科 - 子どもたちの健やかな成長と笑顔を大切にした診療',
  meta: [
    {
      name: 'description',
      content: 'さいとう小児歯科は小児歯科・予防歯科に特化したクリニックです。子どもたちの健やかな成長と笑顔を大切にした診療を提供します。'
    },
    {
      property: 'og:title',
      content: 'さいとう小児歯科 - 子どもたちの健やかな成長と笑顔を大切にした診療'
    },
    {
      property: 'og:description',
      content: 'さいとう小児歯科は小児歯科・予防歯科に特化したクリニックです。子どもたちの健やかな成長と笑顔を大切にした診療を提供します。'
    }
  ]
})
</script>