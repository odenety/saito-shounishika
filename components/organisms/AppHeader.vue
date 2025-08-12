<template>
  <header class="l-header">
    <div class="l-container">
      <div class="l-header__inner">
        <NuxtLink to="/" class="l-header__logo">
          <span class="logo-sai">さい</span><span class="logo-to">とう</span>
          <span class="logo-shouni">小児</span><span class="logo-shika">歯科</span>
        </NuxtLink>
      </div>
    </div>
    
    <nav v-if="!isRecruitPage" class="l-nav">
      <div class="l-container">
        <div class="l-nav__inner">
          <NuxtLink to="/" class="l-nav__item l-nav__item--has-dropdown">Homepage</NuxtLink>
          <NuxtLink to="/features" class="l-nav__item l-nav__item--has-dropdown">Features</NuxtLink>
          <NuxtLink to="/about" class="l-nav__item">About</NuxtLink>
          <NuxtLink to="/staff" class="l-nav__item l-nav__item--has-dropdown">Staff</NuxtLink>
          <NuxtLink to="/services" class="l-nav__item">Services</NuxtLink>
          <NuxtLink to="/events" class="l-nav__item">Events</NuxtLink>
          <NuxtLink to="/gallery" class="l-nav__item l-nav__item--has-dropdown">Gallery</NuxtLink>
          <NuxtLink to="/blog" class="l-nav__item l-nav__item--has-dropdown">Blog</NuxtLink>
          <NuxtLink to="/shop" class="l-nav__item">Shop</NuxtLink>
          <NuxtLink to="/contact" class="l-nav__item">Contacts</NuxtLink>
        </div>
      </div>
    </nav>
  </header>
</template>

<script setup>
// Check if current page is recruit page
const route = useRoute()
// const isRecruitPage = computed(() => route.path.startsWith('/recruit'))
const isRecruitPage = true
</script>