<template>
  <section class="c-section c-section--bg-light">
    <div class="l-container">
      <div class="c-section__header">
        <h2 class="c-section__title">医院案内</h2>
        <p class="c-section__subtitle">
          さいとう小児歯科へのアクセス情報をご案内いたします
        </p>
      </div>
      
      <div class="p-clinic-info">
        <div class="p-clinic-info__content">
          <div class="p-clinic-info__details">
            <h3 class="p-clinic-info__subtitle">所在地</h3>
            <div class="p-clinic-info__address">
              <p class="p-clinic-info__postal">〒328-0015</p>
              <p class="p-clinic-info__location">栃木県栃木市万町 30-5</p>
            </div>
            
            <h3 class="p-clinic-info__subtitle">アクセス</h3>
            <div class="p-clinic-info__access">
              <p>・栃木駅から徒歩約10分</p>
              <p>・駐車場完備（無料）</p>
              <p>・バス停「万町」から徒歩約3分</p>
            </div>
            
            <h3 class="p-clinic-info__subtitle">診療時間</h3>
            <div class="p-clinic-info__hours">
              <div class="p-clinic-info__hours-row">
                <span class="p-clinic-info__day">月・火・水・木</span>
                <span class="p-clinic-info__time">9:30～13:00 / 14:00～18:00</span>
              </div>
              <div class="p-clinic-info__hours-row">
                <span class="p-clinic-info__day">金・土・日・祝</span>
                <span class="p-clinic-info__time p-clinic-info__time--closed">休診</span>
              </div>
            </div>
            
            <h3 class="p-clinic-info__subtitle">お問い合わせ</h3>
            <div class="p-clinic-info__contact">
              <p><strong>TEL:</strong> 0282-51-2023</p>
              <p><strong>FAX:</strong> 0282-51-3014</p>
              <p><strong>E-mail:</strong> saito-shounishika@outlook.jp</p>
            </div>
          </div>
          
          <div class="p-clinic-info__map">
            <div class="p-clinic-info__map-container">
              <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3208.1234567890123!2d139.733333!3d36.383333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzbCsDIzJzAwLjAiTiAxMznCsDQ0JzAwLjAiRQ!5e0!3m2!1sja!2sjp!4v1234567890123"
                width="100%"
                height="400"
                style="border:0;"
                allowfullscreen=""
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"
                title="さいとう小児歯科の地図"
              ></iframe>
            </div>
            <div class="p-clinic-info__map-link">
              <a 
                href="https://maps.google.com/?q=栃木県栃木市万町30-5" 
                target="_blank" 
                rel="noopener noreferrer"
                class="p-clinic-info__map-button"
              >
                📍 Googleマップで見る
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
// Clinic information section component
</script> 