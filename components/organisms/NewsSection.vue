<template>
  <section class="c-section c-section--bg-light">
    <div class="l-container">
      <div class="c-section__header">
        <h2 class="c-section__title">お知らせ</h2>
        <p class="c-section__subtitle">
          医院からのお知らせや歯科に関する情報をお届けします
        </p>
      </div>
      
      <div class="p-news__grid">
        <NewsCard
          v-for="news in newsItems"
          :key="news.id"
          :title="news.title"
          :description="news.description"
          :image="news.image"
          :date="news.date"
        />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import NewsCard from '~/components/molecules/NewsCard.vue'

const newsItems = [
  {
    id: 1,
    title: '2025年9月1日 新規開院のお知らせ',
    description: 'さいとう小児歯科が栃木県栃木市万町30-5にて新規開院いたします。小児歯科・予防歯科に特化した診療を提供いたします。',
    image: 'https://images.pexels.com/photos/3376790/pexels-photo-3376790.jpeg?auto=compress&cs=tinysrgb&w=400',
    date: '2025-01-20'
  },
  {
    id: 2,
    title: '歯科衛生士求人情報',
    description: 'オープニングスタッフとして歯科衛生士を募集しています。週1日から勤務可能で、ライフスタイルに合わせた働き方ができます。',
    image: 'https://images.pexels.com/photos/4386466/pexels-photo-4386466.jpeg?auto=compress&cs=tinysrgb&w=400',
    date: '2025-01-15'
  },
  {
    id: 3,
    title: '子どもの歯磨き習慣について',
    description: '乳幼児期からの正しい歯磨き習慣の重要性と、年齢別の歯磨きのポイントをご紹介いたします。',
    image: 'https://images.pexels.com/photos/8613311/pexels-photo-8613311.jpeg?auto=compress&cs=tinysrgb&w=400',
    date: '2025-01-10'
  },
  {
    id: 4,
    title: 'フッ素塗布の効果について',
    description: '虫歯予防に効果的なフッ素塗布について、その効果と適切な時期について詳しくご説明いたします。',
    image: 'https://images.pexels.com/photos/8613095/pexels-photo-8613095.jpeg?auto=compress&cs=tinysrgb&w=400',
    date: '2025-01-05'
  }
]
</script>