function StyleController() {
  const toggleStyle = document.getElementById('toggleStyle')

  toggleStyle.addEventListener('change', (e) => {
    activateStylesheet(e.target.value)
    window.localStorage.setItem('STYLESHEET', e.target.value)
  })
  const stored = window.localStorage.getItem('STYLESHEET') || '0'
  toggleStyle.value = stored
  toggleStyle.dispatchEvent(new Event('change'))

  function activateStylesheet(value) {
    for (let i = 0; i < document.styleSheets.length; i++) {
      document.styleSheets[i].disabled = i !== Number.parseInt(value)
    }
  }
}

export default StyleController
