require('specs').setup {
  show_jumps = true,
  min_jump = 10,
  popup = {
    delay_ms = 20,
    inc_ms = 10,
    blend = 10,
    width = 15,
    fader = require('specs').linear_fader,
    resizer = require('specs').shrink_resizer,
  }
}
