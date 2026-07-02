# Cuis-Blueprint

Smalltalk pioneered a remarkable share of what we now take for granted — overlapping windows, the class browser, live objects you can open up and change while they run, the very idea of a programmable environment. But the rest of computing kept inventing too, and much of that good work never found its way back. **Blueprint is an umbrella for bringing it home** — taking ideas that grew up outside and folding them into a live [Cuis Smalltalk](https://cuis-smalltalk.github.io/) image.

First on the menu: a **desktop environment**. A coherent, polished, genuinely *nice* UI built directly on Cuis's Morphic and its VectorEngine — a dock, virtual desktops with an exposé overview, morph halos, and a kit of widgets. It borrows the best moves from a generation of window managers and desktops and assembles them into something beautiful, rich, and familiar.

It's built unusually, too: **written by a coding agent** driving the live image over an HTTP bridge ([Cuis-RemoteControl](https://github.com/mlajtos/Cuis-RemoteControl)) — a "Dan Ingalls in a box" approach, where the environment and the hands shaping it work inside the same running world.

📺 **[Watch the May 2026 demo](https://www.youtube.com/watch?v=5TV1Li12ry0)** — *(June 2026 demo coming soon)*

> A personal, fast-moving research image — expect sharp edges.

## Install

No external dependencies — base Cuis image only. File in `Blueprint.pck.st`, then make Blueprint the current theme:

```smalltalk
BlueprintTheme beCurrent.   "themes the world; installs the dock + Stage"
```

## License

MIT — see [LICENSE](LICENSE).
