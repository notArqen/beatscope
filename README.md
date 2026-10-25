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
| click/drag top bar | scrub |
| I | toggle kick inverts |
| G | toggle glow |
| drag pane dividers | resize the bottom panes (double-click resets) |
| F | fullscreen |
| O | open file |
