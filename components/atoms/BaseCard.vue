<template>
  <div :class="cardClasses">
    <img
      v-if="image && !isService"
      :src="image"
      :alt="title"
      class="c-card__image"
    />
    
    <div v-if="isService" :class="`c-card__icon c-card__icon--${iconColor}`">
      {{ icon }}
    </div>
    
    <div class="c-card__content">
      <p v-if="date" class="c-card__date">{{ date }}</p>
      <h3 class="c-card__title">{{ title }}</h3>
      <p class="c-card__description">{{ description }}</p>
    </div>
  </div>
</template>

<script setup lang="ts">
interface Props {
  title: string
  description: string
  image?: string
  date?: string
  variant?: 'default' | 'service'
  icon?: string
  iconColor?: 'orange' | 'blue' | 'green' | 'pink'
}

const props = withDefaults(defineProps<Props>(), {
  variant: 'default',
  iconColor: 'orange'
})

const isService = computed(() => props.variant === 'service')

const cardClasses = computed(() => [
  'c-card',
  isService.value ? 'c-card--service' : ''
])
</script>