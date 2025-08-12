<template>
  <section class="p-hero">
    <!-- Image Slider -->
    <div class="p-hero__slider">
      <div 
        v-for="(slide, index) in slides" 
        :key="index"
        class="p-hero__slide"
        :class="{ 'p-hero__slide--active': currentSlide === index }"
      >
        <div class="p-hero__slide-image" :style="{ backgroundImage: `url(${slide.image})` }"></div>
        <div class="p-hero__slide-overlay"></div>
      </div>
      
      <!-- Slider Navigation -->
      <div class="p-hero__slider-nav">
        <button 
          v-for="(slide, index) in slides" 
          :key="index"
          class="p-hero__slider-dot"
          :class="{ 'p-hero__slider-dot--active': currentSlide === index }"
          @click="setSlide(index)"
        ></button>
      </div>
      
      <!-- Slider Arrows -->
      <button class="p-hero__slider-arrow p-hero__slider-arrow--prev" @click="prevSlide">
        ‹
      </button>
      <button class="p-hero__slider-arrow p-hero__slider-arrow--next" @click="nextSlide">
        ›
      </button>
    </div>

    <!-- Content -->
    <div class="l-container">
      <div class="p-hero__content">
        <h1 class="p-hero__title">さいとう小児歯科</h1>
        <p class="p-hero__subtitle">
          子どもたちの健やかな成長と<br>
          笑顔を大切にした診療
        </p>
        <div class="p-hero__description">
          小児歯科・予防歯科に特化したクリニック<br>
          2025年9月1日 新規開院予定
        </div>
        <div class="p-hero__buttons">
          <NuxtLink to="/recruit" class="p-hero__button">
            <BaseButton variant="primary" size="large">
              求人情報を見る
            </BaseButton>
          </NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import BaseButton from '~/components/atoms/BaseButton.vue'

// Slider data
const slides = [
  {
    image: '/images/hero-1.jpg', // 明るい診療室の画像
    title: '安心できる診療環境'
  },
  {
    image: '/images/hero-2.jpg', // 子どもが笑顔で診療を受けている画像
    title: '子どもたちの笑顔'
  },
  {
    image: '/images/hero-3.jpg', // 予防歯科の様子
    title: '予防歯科に特化'
  }
]

// Slider state
const currentSlide = ref(0)

// Slider functions
const nextSlide = () => {
  currentSlide.value = (currentSlide.value + 1) % slides.length
}

const prevSlide = () => {
  currentSlide.value = currentSlide.value === 0 ? slides.length - 1 : currentSlide.value - 1
}

const setSlide = (index: number) => {
  currentSlide.value = index
}

// Auto slide
onMounted(() => {
  setInterval(() => {
    nextSlide()
  }, 5000) // 5秒ごとに切り替え
})
</script>