# Cuis-Blueprint

Smalltalk pioneered a remarkable share of what we now take for granted — overlapping windows, the class browser, live objects you can open up and change while they run, the very idea of a programmable environment. But the rest of computing kept inventing too, and much of that good work never found its way back. **Blueprint is an umbrella for bringing it home** — taking ideas that grew up outside and folding them into a live [Cuis Smalltalk](https://cuis-smalltalk.github.io/) image.

First on the menu: a **desktop environment**. A coherent, polished, genuinely *nice* UI built directly on Cuis's Morphic and its VectorEngine — a dock, virtual desktops with an exposé overview, morph halos, and a kit of widgets. It borrows the best moves from a generation of window managers and desktops and assembles them into something beautiful, rich, and familiar.

It's built unusually, too: **written by a coding agent** driving the live image over an HTTP bridge ([Cuis-RemoteControl](https://github.com/mlajtos/Cuis-RemoteControl)) — a "Dan Ingalls in a box" approach, where the environment and the hands shaping it work inside the same running world.

📺 **[Watch the May 2026 demo](https://www.youtube.com/watch?v=5TV1Li12ry0)** — *(June 2026 demo coming soon)*

> A personal, fast-moving research image — expect sharp edges.

## Install

File in `Blueprint.pck.st` (e.g. from a File List: select it, `install package`). Everything else is automatic: the package pulls in `WebClient` (shipped with Cuis; used for HTTPS), downloads the [Tabler Icons](https://tabler.io/icons) font from the jsDelivr CDN on first install, and activates the theme, dock and virtual desktops on its own — no manual step.

Works on a stock current Cuis image (rolling release, update #8090 or later — the package says so via `requires: 'Cuis-Base'`, so an older image will refuse the install rather than half-work). If you ever need to re-activate by hand:

```smalltalk
BlueprintTheme beCurrent.
```

## Blueprint overrides Cuis

Blueprint is not a pure add-on. Besides its own classes and the ~77 brand-new methods it adds to base classes, it **replaces 64 existing methods of the base image** — window chrome (`SystemWindow`), the menu system (`MenuMorph`, `MenuItemMorph`, `MenuLineMorph`), scrollbars, pieces of `WorldMorph` and `Morph`, a few tool windows. That *is* the mechanism of the reskin: install Blueprint and the stock UI is different at the method level.

The [Cuis code-management docs](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev/blob/master/Documentation/CodeManagementInCuis.md) draw the package line elsewhere — packages hold pure additions, and changes to the base image travel in ChangeSets. Blueprint knowingly crosses that line, and that has consequences worth knowing:

- While Blueprint is loaded, a Cuis update that touches one of these 64 methods is shadowed by Blueprint's version, and the package will show up as dirty.
- Deleting the package does **not** undo the overrides — in Cuis, *Delete* merges a package's code into the base image. The way out of Blueprint is a fresh image, not an uninstall.
- This is why the package pins the base version it was last tested on instead of accepting any image it lands in.

<details>
<summary>The 64 overridden methods</summary>

```
BoxMorph          fullScreen
ChangeListWindow  buildMorphicWindow
DebuggerWindow    initialExtent
HybridCanvas      drawWorldBackground:rects:
MenuItemMorph     contents: contentsWithMarkers:inverse: drawOn: hasMarker initialize
                  isEnabled: isSelected: minItemWidth mouseEnter: select setIcon: subMenu:
MenuLineMorph     drawOn: initialize minimumExtent
MenuMorph         addStayUpIcons addTitle: adjustSubmorphsLayout displayFiltered:
                  drawOn: removeStayUpBox
MethodSetWindow   buildMorphicWindow
Morph             addHalo: addItemTo:fromSpec:submenus: collapse
ScrollBar         color: computeSlider drawOn: expandSlider initializeSlider sliderGrabbedAt:
SystemWindow      allowedArea defaultColor drawLabelOn: drawOn: extentChanged:
                  fullyCoveredRectangle initialExtent initialFrameIn: initialize
                  initializeLabelArea interiorExtent interiorOrigin invalidateTitleArea
                  labelHeight labelXPosition minimumExtent rescaleButtons
                  widgetsColor widgetsColor:
TextModelMorph    defaultColor drawOn:
VectorEngineWithPlugin  finishPath:
VersionsBrowserWindow   buildMorphicWindow
WorldMorph        click:localPosition: drawOn: extentChanged: restoreDisplay
                  showTaskbar worldMenuSpec
```

</details>

## The type scale

All UI text sits on one modular scale (ratio ∛2, so sizes double every three steps), rooted at a single logical size — rem, basically. Widgets ask for hierarchy, never points:

```smalltalk
Theme current fontAt: 0.    "body"
Theme current fontAt: 1.    "window titles"
Theme current fontAt: -1.   "menus, pills"
```

And the whole UI zooms with one knob:

```smalltalk
BlueprintTheme fontPointSize: 14.   "default 12; every font follows"
```

## License

MIT — see [LICENSE](LICENSE).
