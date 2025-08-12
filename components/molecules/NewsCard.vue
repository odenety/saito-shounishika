<template>
  <BaseCard
    :title="title"
    :description="description"
    :image="image"
    :date="date"
  />
</template>

<script setup lang="ts">
import BaseCard from '~/components/atoms/BaseCard.vue'

interface Props {
  title: string
  description: string
  image: string
  date: string
}

defineProps<Props>()
</script>