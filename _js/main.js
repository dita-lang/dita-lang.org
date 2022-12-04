import TocController from './lib/TocController'
import SearchController from './lib/SearchController'
import HelpController from './lib/HelpController'
import $ from 'jquery'
import URI from 'urijs'
import Prism from 'prismjs'
import { addPlatformTabs } from './lib/Common'

try {
  addPlatformTabs()
} catch (e) {
  console.log(`Failed to add profiling controls: ${e}`)
}
try {
  Prism.highlightAll()
} catch (e) {
  console.log(`Failed to add syntax highlighting: ${e}`)
}

const toggleStyle = document.getElementById('toggleStyle')
;[...document.styleSheets].forEach(s => {
  const opt = document.createElement('option')
  opt.append(s.title !== null ? s.title : 'Default')
  opt.value = s.title !== null ? s.title : ''
  opt.selected = !s.disabled
  toggleStyle.appendChild(opt)
})
toggleStyle.addEventListener('change', e => {
  const value = e.target.value
  ;[...document.styleSheets].forEach(s => {
    const title = s.title !== null ? s.title : ''
    console.log(s.title, title, value)
    s.disabled = title === value
  })
})

try {
  const indexAttr = $('link[rel=index]').attr('href')
  if (indexAttr && window.history) {
    const index = URI(indexAttr)
      .absoluteTo(window.location.href)
      .href()
    $.ajax({
      url: index,
      success: data => {
        const $toc = $('<body>')
          .append($.parseHTML(data))
          .find('nav')
        TocController($toc, index)
        SearchController($toc, index)
        HelpController()
      }
    })
  }
} catch (e) {
  console.log(`Failed to initialize TOC: ${e}`)
}
