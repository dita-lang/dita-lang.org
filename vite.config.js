import { defineConfig } from 'vite'
import { resolve } from 'path'

export default defineConfig({
  build: {
    outDir: 'assets',
    rollupOptions: {
      input: {
        main: resolve(__dirname, '_js/main.js'),
        mainCSS: resolve(__dirname, 'css/main.scss'),
        implementer: resolve(__dirname, 'css/implementer.scss'),
        source: resolve(__dirname, 'css/source.scss'),
        debug: resolve(__dirname, 'css/debug.scss')
      },
      output: {
        assetFileNames: (assetInfo) => {
          if (/\.(css|scss)$/.test(assetInfo.name)) {
            return `css/[name].[ext]`
          }
          if (/\.(js|ts)$/.test(assetInfo.name)) {
            return `js/[name].[ext]`
          }
          return `[name].[ext]`
        },
        chunkFileNames: 'js/[name].[hash].js',
        entryFileNames: 'js/[name].[hash].js'
      }
    }
  },
  css: {
    preprocessorOptions: {
      scss: {
        additionalData: `@import "css/_default.scss";`
      }
    }
  }
}) 