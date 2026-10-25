# beatscope

**Every hit. On the line.**

A monochrome, FL Studio-style audio visualizer that runs in the browser, styled like a phone filming a monitor: pincushion lens, grain, bloom. Load a track and it draws a DAW-style header, a scrolling arrangement strip, a bass-only circle scope, a stereo phase scope, a dense waveform history, a triggered oscilloscope and a log spectrum with a floating peak readout.

The whole song is analysed up front: every kick is scored against the rest of the track, the strongest fifth hard-invert the frame, and the rest warp the lens in proportion to their strength. Files the browser can't play (ALAC `.m4a` in Chrome, etc.) are converted in-page with a vendored ffmpeg.wasm.

**Live:** https://notarqen.github.io/beatscope/

## Run locally

```sh
./run.sh
```

Then drop an audio or video file onto the page. (Plain `index.html` over `file://` works too, except for the ffmpeg conversion fallback.)

| Key | Action |
| --- | --- |
| space | play / pause |
| ← → | seek 5s |
| click/drag top bar or the header slider | scrub |
| I | toggle kick inverts |
| G | toggle glow |
| drag pane dividers | resize the bottom panes (double-click resets) |
| S | settings (opens in its own window; in-page panel if popups are blocked): lens, kick FX intensities + delay, sub drive, grain/glow/vignette, tint (auto-saved; "save as default" keeps a preset) |
| K | studio: keyframe invert / shake / warp / blur / aberration / flash per lane, All row hits every lane, 0–6 tap live, Auto toggles per lane, export/import JSON |
| M | live mic input (studio keys become trigger pads) |
| F | fullscreen |
| O | open file |
