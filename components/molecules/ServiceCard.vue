<template>
  <BaseCard
    :title="title"
    :description="description"
    :icon="icon"
    :icon-color="iconColor"
    variant="service"
  />
</template>

<script setup lang="ts">
import BaseCard from '~/components/atoms/BaseCard.vue'

interface Props {
  title: string
  description: string
  icon: string
  iconColor: 'orange' | 'blue' | 'green' | 'pink'
}

defineProps<Props>()
</script>