module.exports = function (eleventyConfig) {
  // Copy static assets
  eleventyConfig.addPassthroughCopy('assets')
  eleventyConfig.addPassthroughCopy('fonts')
  eleventyConfig.addPassthroughCopy('images')
  eleventyConfig.addPassthroughCopy('_redirects')

  // Copy plugin files
  eleventyConfig.addPassthroughCopy('_plugin')

  // Watch for changes in these directories
  eleventyConfig.addWatchTarget('css/')
  eleventyConfig.addWatchTarget('_js/')
  eleventyConfig.addWatchTarget('assets/')

  // Global data
  eleventyConfig.addGlobalData('title', 'DITA')
  eleventyConfig.addGlobalData('description', 'DITA 2.0 and LwDITA drafts')
  eleventyConfig.addGlobalData('release', '3.3')
  eleventyConfig.addGlobalData('version', '3.3.4')

  // Custom filters
  eleventyConfig.addFilter('truncate', function (str, length, suffix = '') {
    if (str.length <= length) return str
    return str.substring(0, length) + suffix
  })

  eleventyConfig.addGlobalData('permalink', () => {
    return (data) => `${data.page.filePathStem}.${data.page.outputFileExtension}`
  })

  return {
    dir: {
      input: '.',
      output: '_site',
      includes: '_includes',
      layouts: '_layouts',
    },
    templateFormats: ['html', 'md', 'njk'],
    htmlTemplateEngine: 'njk',
    markdownTemplateEngine: 'njk',
  }
}
