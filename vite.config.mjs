import { defineVueAppConfig } from '@padcom/vite-config-vue'

import pkg from './package.json'

export default defineVueAppConfig(pkg, {
  define: {
    // enable hydration mismatch details in production build
    __VUE_OPTIONS_API__: false,
  },
})
