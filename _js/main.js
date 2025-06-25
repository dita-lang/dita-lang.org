import TocController from './lib/TocController'
import SearchController from './lib/SearchController'
import HelpController from './lib/HelpController'
import StyleController from './lib/StyleController'
import $ from 'jquery'
import URI from 'urijs'
import Prism from 'prismjs'
import { addPlatformTabs } from './lib/Common'

addEventListener('load', (event) => {
  try {
    addPlatformTabs()
  } catch (e) {
    console.error(`Failed to add profiling controls: ${e}`)
  }
  try {
    Prism.highlightAll()
  } catch (e) {
    console.error(`Failed to add syntax highlighting: ${e}`)
  }

  StyleController()

  try {
    const indexAttr = $('link[rel=index]').attr('href')
    console.log('indexAttr', indexAttr)
    if (indexAttr && window.history) {
      console.log('fetch')
      const index = URI(indexAttr).absoluteTo(window.location.href).href()
      fetch(index)
        .then((data) => data.text())
        .then((data) => {
          const $toc = $('<body>').append($.parseHTML(data)).find('nav')
          console.log('$toc', $toc)
          TocController($toc, index)
          SearchController($toc, index)
          HelpController()
        })
    } else {
      console.log('just toc')
      TocController()
      SearchController($('nav[role=toc]'))
      HelpController()
    }
  } catch (e) {
    console.error(`Failed to initialize TOC: ${e}`)
  }
})
