// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-04-03',
  devtools: { enabled: false },
  css: ['~/assets/scss/main.scss'],
  modules: ['@nuxtjs/google-fonts'],
  googleFonts: {
    families: {
      'Noto+Sans+JP': [400, 500, 700],
      'Fredoka+One': [400]
    }
  },
  // Static site generation for S3
  ssr: false
})