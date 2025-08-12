<template>
  <component
    :is="tag"
    :to="to"
    :href="href"
    :class="buttonClasses"
    v-bind="$attrs"
  >
    <slot />
  </component>
</template>

<script setup lang="ts">
interface Props {
  variant?: 'primary' | 'secondary' | 'outline'
  size?: 'default' | 'large'
  tag?: 'button' | 'a' | 'NuxtLink'
  to?: string
  href?: string
}

const props = withDefaults(defineProps<Props>(), {
  variant: 'primary',
  size: 'default',
  tag: 'button'
})

const buttonClasses = computed(() => [
  'c-button',
  `c-button--${props.variant}`,
  props.size === 'large' ? 'c-button--large' : ''
])
</script>