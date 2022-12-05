// function getState() {
//   let stored = window.localStorage.getItem('STYLESHEET')
//   if (!!stored) {
//     try {
//       return JSON.parse(stored)
//     } catch (e) {
//       console.log(`Failed to read platform profile from local storage: ${e}`)
//     }
//   }
// }

function StyleController() {
  document.addEventListener('readystatechange', () => {
    const toggleStyle = document.getElementById('toggleStyle')

    toggleStyle.addEventListener('change', e => {
      activateStylesheet(e.target.value)
      window.localStorage.setItem('STYLESHEET', e.target.value)
    })
    const stored = window.localStorage.getItem('STYLESHEET')
    if (stored !== null) {
      toggleStyle.value = stored
      toggleStyle.dispatchEvent(new Event('change'))
    }

    function activateStylesheet(value) {
      for (const s of document.styleSheets) {
        const title = s.title !== null ? s.title : ''
        s.disabled = title !== value
      }
    }
  })
}

export default StyleController
