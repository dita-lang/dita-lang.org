import { defineConfig } from 'vite'
import { resolve } from 'path'

// Built as its own single-entry IIFE bundle (not the default 'es' format used
// in vite.config.js) so the output has no `import` statements and no shared
// chunks: the site loads it via a classic <script>, not <script type="module">.
export default defineConfig({
  build: {
    outDir: 'assets',
    emptyOutDir: false,
    rollupOptions: {
      input: resolve(__dirname, '_js/cover.js'),
      output: {
        format: 'iife',
        entryFileNames: 'js/cover.js',
      },
    },
  },
})
