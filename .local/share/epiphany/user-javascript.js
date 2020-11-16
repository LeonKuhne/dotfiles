window.onload = () => {
  // fetch the styles
  fetch("https://lxk1170.github.io/reStyles/styles.json").then(res => res.json()).then(data => {

    let host = window.location.host
    if (host in data) {
      let styles = data[host]
      Object.keys(styles).forEach(selector => {
        let attr = styles[selector]
        Object.keys(attr).forEach(style => {

          // apply attributes
          document.querySelectorAll(selector).forEach(node => {
            node.style[style] = attr[style]
          })

        })
      })
    }
  })
}
