<template>
  <section class="c-section">
    <div class="l-container">
      <div class="c-section__header">
        <h2 class="c-section__title">診療科目</h2>
        <p class="c-section__subtitle">
          小児歯科・予防歯科に特化した専門的な診療を提供します
        </p>
      </div>
      
      <div class="p-services__grid">
        <ServiceCard
          v-for="service in services"
          :key="service.id"
          :title="service.title"
          :description="service.description"
          :icon="service.icon"
          :icon-color="service.iconColor"
        />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import ServiceCard from '~/components/molecules/ServiceCard.vue'

const services = [
  {
    id: 1,
    title: '小児歯科',
    description: '子どもの歯の成長に合わせた専門的な治療を行います。虫歯治療から歯の矯正まで、お子様の歯の健康を守ります。',
    icon: '🦷',
    iconColor: 'orange' as const
  },
  {
    id: 2,
    title: '予防歯科',
    description: '虫歯や歯周病を防ぐための予防処置を行います。フッ素塗布、シーラント、ブラッシング指導などで歯の健康を維持します。',
    icon: '🛡️',
    iconColor: 'blue' as const
  },
  {
    id: 3,
    title: '歯科口腔外科',
    description: '親知らずの抜歯や口腔内の外科的処置を行います。安全で痛みの少ない治療を心がけています。',
    icon: '🏥',
    iconColor: 'green' as const
  },
  {
    id: 4,
    title: '矯正歯科',
    description: '子どもの歯並びや噛み合わせを整える矯正治療を行います。成長期に合わせた最適なタイミングで治療を開始します。',
    icon: '✨',
    iconColor: 'pink' as const
  },
  {
    id: 5,
    title: '審美歯科',
    description: '美しい歯並びと自然な笑顔を実現する審美治療を行います。お子様の自信につながる治療を提供します。',
    icon: '😊',
    iconColor: 'orange' as const
  },
  {
    id: 6,
    title: '訪問歯科',
    description: '通院が困難な方のために、ご自宅や施設に訪問して歯科診療を行います。お気軽にご相談ください。',
    icon: '🏠',
    iconColor: 'blue' as const
  }
]
</script>