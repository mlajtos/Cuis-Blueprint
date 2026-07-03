'From Cuis7.9 [latest update: #7983] on 3 July 2026 at 4:37:17 pm'!
'Description '!
!provides: 'Blueprint' 1 287!
!requires: 'WebClient' 1 nil 1!
SystemOrganization addCategory: #Blueprint!
SystemOrganization addCategory: #'Blueprint-StateMachine'!
SystemOrganization addCategory: #'Blueprint-Stage'!
SystemOrganization addCategory: #'Blueprint-Halo'!


!classDefinition: #BlueprintPackage category: #Blueprint!
CodePackage subclass: #BlueprintPackage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'BlueprintPackage class' category: #Blueprint!
BlueprintPackage class
	instanceVariableNames: ''!


!BlueprintPackage commentStamp: '<historical>' prior: 0!
The package's install hook (CodePackage subclass, found by codePackageClass). postPackageInstall runs after the code loads and delegates to BlueprintTheme beCurrent -- fonts, typography, theme, Dock and Stage come up without any manual step.!

!BlueprintPackage class methodsFor: 'installation' stamp: ''!
postPackageInstall
	"Runs automatically at the end of filing in the Blueprint package. All activation logic lives in the
	single robust entry point BlueprintTheme class>>beCurrent (icon font + typography + theme + Dock + Stage,
	UI-safe + idempotent)."
	BlueprintTheme beCurrent! !
BlueprintPackage prePackageInstall!
!classDefinition: #Animation category: #Blueprint!
Object subclass: #Animation
	instanceVariableNames: 'morph block startMs durationMs easing onDone'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'Animation class' category: #Blueprint!
Animation class
	instanceVariableNames: ''!

!classDefinition: #Animator category: #Blueprint!
Object subclass: #Animator
	instanceVariableNames: 'animations armedWorld armedAtMs'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'Animator class' category: #Blueprint!
Animator class
	instanceVariableNames: ''!

!classDefinition: #SymbolFont category: #Blueprint!
Object subclass: #SymbolFont
	instanceVariableNames: ''
	classVariableNames: 'Codepoints'
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'SymbolFont class' category: #Blueprint!
SymbolFont class
	instanceVariableNames: ''!

!classDefinition: #Placement category: #'Blueprint-Stage'!
Object subclass: #Placement
	instanceVariableNames: 'space home'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'Placement class' category: #'Blueprint-Stage'!
Placement class
	instanceVariableNames: ''!

!classDefinition: #Space category: #'Blueprint-Stage'!
Object subclass: #Space
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'Space class' category: #'Blueprint-Stage'!
Space class
	instanceVariableNames: ''!

!classDefinition: #Stage category: #'Blueprint-Stage'!
Object subclass: #Stage
	instanceVariableNames: 'placements spaces active shown mode pending views flights reservations'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'Stage class' category: #'Blueprint-Stage'!
Stage class
	instanceVariableNames: ''!

!classDefinition: #StateMachine category: #'Blueprint-StateMachine'!
Object subclass: #StateMachine
	instanceVariableNames: 'current initial transitions observers queued parent initialOf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-StateMachine'!
!classDefinition: 'StateMachine class' category: #'Blueprint-StateMachine'!
StateMachine class
	instanceVariableNames: ''!

!classDefinition: #BlueprintTheme category: #Blueprint!
Theme subclass: #BlueprintTheme
	instanceVariableNames: ''
	classVariableNames: 'FontCache FontPointSize Tile'
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'BlueprintTheme class' category: #Blueprint!
BlueprintTheme class
	instanceVariableNames: ''!

!classDefinition: #Popover category: #Blueprint!
BoxMorph subclass: #Popover
	instanceVariableNames: 'text labelMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'Popover class' category: #Blueprint!
Popover class
	instanceVariableNames: ''!

!classDefinition: #MorphHalo category: #'Blueprint-Halo'!
BoxMorph subclass: #MorphHalo
	instanceVariableNames: 'target positionOffset haloBox'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Halo'!
!classDefinition: 'MorphHalo class' category: #'Blueprint-Halo'!
MorphHalo class
	instanceVariableNames: ''!

!classDefinition: #MorphHaloScrubber category: #'Blueprint-Halo'!
BoxMorph subclass: #MorphHaloScrubber
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Halo'!
!classDefinition: 'MorphHaloScrubber class' category: #'Blueprint-Halo'!
MorphHaloScrubber class
	instanceVariableNames: ''!

!classDefinition: #MorphHaloTitle category: #'Blueprint-Halo'!
BoxMorph subclass: #MorphHaloTitle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Halo'!
!classDefinition: 'MorphHaloTitle class' category: #'Blueprint-Halo'!
MorphHaloTitle class
	instanceVariableNames: ''!

!classDefinition: #SystemWindowResizeHalo category: #'Blueprint-Halo'!
BoxMorph subclass: #SystemWindowResizeHalo
	instanceVariableNames: 'dragHand dragSelector dragOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Halo'!
!classDefinition: 'SystemWindowResizeHalo class' category: #'Blueprint-Halo'!
SystemWindowResizeHalo class
	instanceVariableNames: ''!

!classDefinition: #AnalogClock category: #Blueprint!
ColoredBoxMorph subclass: #AnalogClock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'AnalogClock class' category: #Blueprint!
AnalogClock class
	instanceVariableNames: ''!

!classDefinition: #CellPreview category: #Blueprint!
ColoredBoxMorph subclass: #CellPreview
	instanceVariableNames: 'previewSize clickAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'CellPreview class' category: #Blueprint!
CellPreview class
	instanceVariableNames: ''!

!classDefinition: #ClockHands category: #Blueprint!
ColoredBoxMorph subclass: #ClockHands
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'ClockHands class' category: #Blueprint!
ClockHands class
	instanceVariableNames: ''!

!classDefinition: #MenuTitleMorph category: #Blueprint!
ColoredBoxMorph subclass: #MenuTitleMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'MenuTitleMorph class' category: #Blueprint!
MenuTitleMorph class
	instanceVariableNames: ''!

!classDefinition: #SearchBar category: #Blueprint!
ColoredBoxMorph subclass: #SearchBar
	instanceVariableNames: 'searchIcon searchField clearButton padding gap cornerRadius bgColor strokeColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'SearchBar class' category: #Blueprint!
SearchBar class
	instanceVariableNames: ''!

!classDefinition: #Slider category: #Blueprint!
ColoredBoxMorph subclass: #Slider
	instanceVariableNames: 'value minVal maxVal changedAction committedAction dragging animating'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'Slider class' category: #Blueprint!
Slider class
	instanceVariableNames: ''!

!classDefinition: #SymbolCatalog category: #Blueprint!
ColoredBoxMorph subclass: #SymbolCatalog
	instanceVariableNames: 'cellSize labelHeight labelGap gap padding names allNames filter filterChangedAction borderColor symbolColor labelColor labelFont symbolInset selectedIndex dragStart dragCell'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'SymbolCatalog class' category: #Blueprint!
SymbolCatalog class
	instanceVariableNames: ''!

!classDefinition: #Dock category: #'Blueprint-Stage'!
ColoredBoxMorph subclass: #Dock
	instanceVariableNames: 'orientation duration edge resizeState edgeGlow dragHand preferredScale'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'Dock class' category: #'Blueprint-Stage'!
Dock class
	instanceVariableNames: ''!

!classDefinition: #DockTile category: #'Blueprint-Stage'!
ColoredBoxMorph subclass: #DockTile
	instanceVariableNames: 'aspect window savedLoc homeCenter centerOffset animating'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'DockTile class' category: #'Blueprint-Stage'!
DockTile class
	instanceVariableNames: ''!

!classDefinition: #SpaceCard category: #'Blueprint-Stage'!
ColoredBoxMorph subclass: #SpaceCard
	instanceVariableNames: 'space'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'SpaceCard class' category: #'Blueprint-Stage'!
SpaceCard class
	instanceVariableNames: ''!

!classDefinition: #StageOverview category: #'Blueprint-Stage'!
ColoredBoxMorph subclass: #StageOverview
	instanceVariableNames: 'fromMap toMap windows animDuration originMap'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'StageOverview class' category: #'Blueprint-Stage'!
StageOverview class
	instanceVariableNames: ''!

!classDefinition: #WindowProxyMorph category: #'Blueprint-Stage'!
ColoredBoxMorph subclass: #WindowProxyMorph
	instanceVariableNames: 'window'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'WindowProxyMorph class' category: #'Blueprint-Stage'!
WindowProxyMorph class
	instanceVariableNames: ''!

!classDefinition: #StateMachineMorph category: #'Blueprint-StateMachine'!
ColoredBoxMorph subclass: #StateMachineMorph
	instanceVariableNames: 'chart positions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-StateMachine'!
!classDefinition: 'StateMachineMorph class' category: #'Blueprint-StateMachine'!
StateMachineMorph class
	instanceVariableNames: ''!

!classDefinition: #MorphHaloHandle category: #'Blueprint-Halo'!
HaloHandleMorph subclass: #MorphHaloHandle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Halo'!
!classDefinition: 'MorphHaloHandle class' category: #'Blueprint-Halo'!
MorphHaloHandle class
	instanceVariableNames: ''!

!classDefinition: #SearchField category: #Blueprint!
EntryFieldMorph subclass: #SearchField
	instanceVariableNames: 'changedAction placeholder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'SearchField class' category: #Blueprint!
SearchField class
	instanceVariableNames: ''!

!classDefinition: #SymbolMorph category: #Blueprint!
LabelMorph subclass: #SymbolMorph
	instanceVariableNames: 'symbolName'
	classVariableNames: 'OpticalCache'
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'SymbolMorph class' category: #Blueprint!
SymbolMorph class
	instanceVariableNames: ''!

!classDefinition: #SymbolButton category: #Blueprint!
SymbolMorph subclass: #SymbolButton
	instanceVariableNames: 'clickAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'SymbolButton class' category: #Blueprint!
SymbolButton class
	instanceVariableNames: ''!

!classDefinition: #FillWidthScrollPane category: #Blueprint!
PluggableScrollPane subclass: #FillWidthScrollPane
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint'!
!classDefinition: 'FillWidthScrollPane class' category: #Blueprint!
FillWidthScrollPane class
	instanceVariableNames: ''!

!classDefinition: #StageTest category: #'Blueprint-Stage'!
TestCase subclass: #StageTest
	instanceVariableNames: 'stage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-Stage'!
!classDefinition: 'StageTest class' category: #'Blueprint-Stage'!
StageTest class
	instanceVariableNames: ''!

!classDefinition: #StateMachineTest category: #'Blueprint-StateMachine'!
TestCase subclass: #StateMachineTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Blueprint-StateMachine'!
!classDefinition: 'StateMachineTest class' category: #'Blueprint-StateMachine'!
StateMachineTest class
	instanceVariableNames: ''!


!Animation commentStamp: '<historical>' prior: 0!
One running tween owned by the Animator: the target morph, the eased 0..1 block, duration, and the onDone continuation. A dumb record -- the Animator drives it (tickAt:), morphs never see it.!

!Animator commentStamp: '<historical>' prior: 0!
The shared UI animation engine: a single alarm-driven loop that tweens any morph property via blocks. animate:using:duration:easing:onDone: runs a 0..1-eased block each frame; after:do: is a one-shot timer. All Blueprint choreography (window flies, dock glow, slider tweens, overview arcs) runs here so timing/easing stay consistent and there is exactly one clock (Time localMillisecondClock, the Morphic alarm clock). Singleton: Animator current. Also home to the shared geometry for window flights (bezier paths, corner placement).!

!SymbolFont commentStamp: '<historical>' prior: 0!
The icon system: maps symbolic names (#search, #x, #chevron-right, ...) to glyphs in the Tabler Icons webfont. Class-side codepoints lazily downloads the TTF + CSS from the CDN into <image>/SymbolFont/ (ensureFontData, once), registers the font, and parses the CSS into the name->codepoint map. SymbolFont at: #name answers the glyph Character; SymbolMorph renders it. 5000+ icons; browse them with SymbolCatalog open.!

!Placement commentStamp: '<historical>' prior: 0!
One managed window's place in the Stage: which Space it belongs to and, when it has been moved off its home (minimized to the dock, tiled by the overview, mid-flight), where home is. The single source of truth for "where does this window belong" -- views (Dock cards, StageOverview) read it, never invent their own. Created via Placement in: aSpace.!

!Space commentStamp: '<historical>' prior: 0!
One virtual desktop: an identity the Stage partitions windows into. Deliberately dumb -- a Space is little more than a name; membership lives in the Stage's Placements, geometry in the windows themselves, and presentation in the views (SpaceCard, StageOverview).!

!Stage commentStamp: '<historical>' prior: 0!
The window-management model: one Placement per managed window (the single source of truth for where a window belongs), a list of Spaces partitioning them, and a hierarchical mode chart live(settled|switching) / overview(opening|visible|closing). Holds NO morphs and runs headless -- Dock, Overview and SpaceCards are stateless views that render this model and report animation completions back (switchSettled, mode fire: #opened/#closed).!

!StateMachine commentStamp: '<historical>' prior: 0!
A hierarchical (Harel-style) state chart: nested states, an initial child per composite, event transitions, and an event queue. Build with StateMachine initial:states: -- states is a nested spec of state -> (event -> target) maps -- then drive with fire: / fireOrQueue: and test with is:/can:. The current state is always a leaf; is: answers true for any ancestor too, so modes compose (e.g. the Stage's live(settled|switching|overview) chart). onTransition: hooks every step; StateMachineMorph draws the chart live.!

!BlueprintTheme commentStamp: '<historical>' prior: 0!
The Blueprint look, as data: a Theme subclass holding the design tokens -- accent + chrome colours (chromeBody/chromeHighlight/chromeHairline, windowHighlight/windowHairline), the corner-radius language (roundedWindowRadius 16, roundedMenuRadius 12, roundedMiniRadius 3, all logical px), metrics, and the type scale (fontAt:/pointsAt:, rem root fontPointSize, ratio 2^(1/3)). BlueprintTheme beCurrent is the single activation entry point: icon font, typography, theme, Dock + Stage -- UI-process-safe and idempotent. The class-side startUp: reinstalls the tile and re-anchors the dock on image resume.!

!Popover commentStamp: '<historical>' prior: 0!
A tailed tooltip balloon: dark chrome (Theme tokens) with a squircle body and a pointer tail aimed at its target (tailSide). Geometry parameters read through tuneAt:default: so a live tuner can reshape it; text: sets the label. Used by DockTile for hover tips.!

!MorphHalo commentStamp: '<historical>' prior: 0!
The Blueprint halo -- the system-wide morph inspector/manipulator (Morph>>haloClass answers this class). A BoxMorph framing its target with an accent squircle, carrying: eight MorphHaloHandle grips for resize (addResizeHandles, shown when the target okayToResizeEasily) plus corner rotate zones; MorphHaloScrubber pills for the numeric metrics (position, extent, scale, rotation -- drag to scrub); and a MorphHaloTitle pill with the target name and window-style controls (closeTarget / collapseTarget / expandTarget / menu). It tracks the target every step and dismisses on a click elsewhere (it accepts keyboard events too -- see rejectsEvent:). State: target, positionOffset, haloBox.!

!MorphHaloScrubber commentStamp: '<historical>' prior: 0!
A halo metric pill: shows one target metric (its #labelKind property -- position, extent, scale or rotation) and scrubs it on horizontal drag when that operation is permitted (kindIsInteractive). Scrubbing compensates about the target centre so the morph stays put while the number changes; sensitivity is DPI-corrected. Text renders cap-centred like the title pill.!

!MorphHaloTitle commentStamp: '<historical>' prior: 0!
The halo's name-and-controls pill, shown above the target frame: an accent (window-coloured for windows) squircle capsule with the window control buttons -- close, collapse, expand, menu, wired to closeTarget/collapseTarget/expandTarget/menu on the halo -- followed by the target's name. Recreates the window chrome look via the shared Theme tokens and chromeStrokes.!

!SystemWindowResizeHalo commentStamp: '<historical>' prior: 0!
The window-edge resize affordance: an invisible border around every SystemWindow that hit-tests eight edge/corner zones, shows the matching resize cursor, and drags the window frame. Blueprint's replacement for the classic grow box -- windows stay chrome-free; the affordance appears only where the cursor is.!

!AnalogClock commentStamp: '<historical>' prior: 0!
A wall clock: a dark squircle face with white/gray ticks and a stepped ClockHands overlay (separate morph so the face never repaints). A demo of Blueprint drawing -- squircle chrome, tuneAt: geometry, stepping -- and a nice thing to have on the desktop.!

!CellPreview commentStamp: '<historical>' prior: 0!
The catalog's "how big is a cell" swatch: a rounded outline square that tracks the Slider while the user scrubs cell size, with an optional clickAction. Pure feedback chrome for SymbolCatalog's toolbar.!

!ClockHands commentStamp: '<historical>' prior: 0!
The moving parts of AnalogClock: hour/minute/second hands stepped once a second, drawn as rounded strokes with the second hand in accent orange. Split from the face so per-second damage is just the hands region.!

!MenuTitleMorph commentStamp: '<historical>' prior: 0!
The header block of a Blueprint menu: holds the bold title lines that MenuMorph>>addTitle: builds (question menus, informUserDuring: progress). Exists mainly to report its true size to the menu layout -- MenuMorph>>adjustSubmorphsLayout sizes rows from minimumExtent, and a plain box under-reports.!

!SearchBar commentStamp: '<historical>' prior: 0!
A search input as one piece of chrome: magnifier glyph + borderless SearchField + clear button in a translucent capsule that strokes accent on focus. Metric ivars are physical px (set once in initialize). changedAction: fires per keystroke -- SymbolCatalog filters live from it.!

!Slider commentStamp: '<historical>' prior: 0!
A horizontal value slider: accent-filled track and a white squircle thumb. min:max: sets the range; value: moves the thumb (clamped); changedAction: fires on every change and committedAction: once on release or when animateValueTo: (a 300ms Animator tween, cancelled by grabbing the thumb) lands. Drag anywhere on the track -- the thumb jumps, then follows.!

!SymbolCatalog commentStamp: '<historical>' prior: 0!
The icon browser: a scrolling grid of every SymbolFont glyph with its name, filterable live from a SearchBar and resizable with a Slider (cell size). Cells drag-copy: dragging one drops a SymbolMorph clone into the world. Open via the world menu (New morph... is not needed -- SymbolCatalog open) . Also the package's showcase of SearchBar + Slider + FillWidthScrollPane working together.!

!Dock commentStamp: '<historical>' prior: 0!
The Blueprint taskbar: a floating chrome bar anchored to a screen edge (positionAtEdge:), holding one DockTile per minimized window and one SpaceCard per Space. Installed as the world taskbar by BlueprintTheme currentTheme: and registered as the Stage's view (connectStage): switches fly through performSwitch:, space changes reshape the cards. One sizing rule (itemExtent + a phi clamp) sizes every item; edge-hover arms an interactive resize with a glowing frame. Chrome comes from the Theme tokens (chromeBody/chromeHighlight/chromeHairline).!

!DockTile commentStamp: '<historical>' prior: 0!
One minimized window's tile in the Dock: shows the shrunk window itself (scaleToFitInto: via refitIn:), remembers where it came from (homeCenter), and restores on click with the shared fly choreography. Sized by the dock's one item-sizing rule (fullExtentIn:); shows a Popover tip with the window title on hover.!

!SpaceCard commentStamp: '<historical>' prior: 0!
The Dock's live miniature of one Space: a mini-screen showing a proxy (WindowProxyMorph) per managed window, continuously synced to the real desktop while its space is shown, frozen during switches, and holding the real (shrunk) windows while its space is stowed. Also the drag surface for moving windows between spaces: proxies can be picked up and carried onto another card (the real window rides along). The accent frame tracks Stage active via showsActiveFrame -- it moves the instant a switch begins.!

!StageOverview commentStamp: '<historical>' prior: 0!
The exposÃ© view: tiles every managed desktop window into a spaced grid (enter), lets the user pick or hover one, then flies everything home (exit). A transparent full-screen layer -- it paints only hover outlines, and while open it OVERWRITES each window's live location (truth stays in its origin map), so mid-overview geometry reads give the tile, not home. Drives the Stage mode chart (openOverview/opened/closeOverview) so switches cannot interleave with it. Singleton: StageOverview default.!

!WindowProxyMorph commentStamp: '<historical>' prior: 0!
A SpaceCard's stand-in for one desktop window: a squircle in the window's colour, drawn axis-aligned in local coordinates so the engine's transform handles rotation/scale for free. Live proxies track their window every step; frozen proxies (transitions) and carried proxies (drags between cards) are positioned by the card. Pure view -- all state lives in the card's maps.!

!StateMachineMorph commentStamp: '<historical>' prior: 0!
A live diagram of a StateMachine: nested Harel boxes laid out left-to-right (BFS rank), orthogonal edges routed along ceiling/floor lanes (Sugiyama-style), the current state filled accent and refreshed on every transition. StateMachineMorph on: aMachine answers a morph you can drop into the world; it subscribes via onTransition: so it animates as the machine runs. Layout ideas borrowed from XState's visualizer and ELK.!

!MorphHaloHandle commentStamp: '<historical>' prior: 0!
A halo grip: a small white accent-bordered square centred in a larger invisible hit box. The eight resize grips drive MorphHalo>>startResize:with: / resizeTargetTo:grip:; the corner rotate zones draw nothing (property #role = #rotate) -- the rotate cursor is their only affordance.!

!SearchField commentStamp: '<historical>' prior: 0!
The SearchBar's inner text field: an EntryFieldMorph stripped of its own chrome (transparent, borderless, height pinned to 24 logical px) so the bar draws the frame instead. Forwards content changes through changedAction:.!

!SymbolMorph commentStamp: '<historical>' prior: 0!
A single icon glyph as a morph: a LabelMorph whose contents is one SymbolFont character, sized via pointSize: (the glyph em, physical pt). Set which icon with name: (a SymbolFont symbol); unknown names render empty. The building block for menu icons, dock affordances and buttons -- vector, so it scales with the UI.!

!SymbolButton commentStamp: '<historical>' prior: 0!
A clickable SymbolMorph: fires its action block on mouse-up inside. Optional #discColor / #glyphScale properties draw a filled disc behind a scaled-down glyph (the SearchBar clear button). No button chrome -- the glyph (or disc) is the whole affordance.!

!FillWidthScrollPane commentStamp: '<historical>' prior: 0!
A PluggableScrollPane whose scrollee always fills the pane width (vertical scrolling only): the inner morph is re-widened on every extent change. SymbolCatalog's grid lives in one.!

!StageTest commentStamp: '<historical>' prior: 0!
Unit tests for the Stage model: placements, space membership, switching, minimize/restore and the mode chart -- all headless (windows are plain symbols; no morphs, no world).!

!StateMachineTest commentStamp: '<historical>' prior: 0!
Unit tests for StateMachine: flat and nested transitions, initial-child resolution, is:/can: semantics, the event queue, and the turnstile/nested fixtures shared with the visualizer examples.!

!Animation methodsFor: 'initialization' stamp: ''!
setMorph: aMorph block: aBlock duration: ms easing: anEasingBlock onDone: aDoneBlock
	morph := aMorph.
	block := aBlock.
	durationMs := ms.
	easing := anEasingBlock.
	onDone := aDoneBlock! !

!Animation methodsFor: 'accessing' stamp: ''!
morph
	^ morph! !

!Animation methodsFor: 'accessing' stamp: ''!
onDone
	^ onDone! !

!Animation methodsFor: 'stepping' stamp: ''!
tickAt: nowMs
	"Apply this animation eased progress for the current frame. Answer true once finished.
	startMs is captured lazily from the first frame so it always shares the caller clock
	(the World delivers Time localMillisecondClock, a different epoch from millisecondClockValue)."
	| t |
	startMs isNil ifTrue: [startMs := nowMs].
	t := durationMs = 0 ifTrue: [1.0] ifFalse: [(nowMs - startMs) / durationMs].
	t >= 1.0 ifTrue: [block value: (easing value: 1.0). ^ true].
	block value: (easing value: t).
	^ false! !

!Animation class methodsFor: 'instance creation' stamp: ''!
on: aMorph do: aBlock duration: ms easing: anEasingBlock onDone: aDoneBlock
	^ self new setMorph: aMorph block: aBlock duration: ms easing: anEasingBlock onDone: aDoneBlock! !

!Animator methodsFor: 'initialization' stamp: 'ML 3/Jul/2026 13:57:27'!
initialize
	super initialize.
	animations := OrderedCollection new.
	armedWorld := nil.
	armedAtMs := nil! !

!Animator methodsFor: 'accessing' stamp: ''!
animations
	^ animations! !

!Animator methodsFor: 'accessing' stamp: ''!
world
	^ UISupervisor ui! !

!Animator methodsFor: 'controlling' stamp: ''!
cancelFor: aMorph
	"Drop any in-flight animation targeting aMorph (re-animating a morph supersedes the old)."
	animations := animations reject: [:a | a morph == aMorph]! !

!Animator methodsFor: 'animating' stamp: ''!
after: ms do: aBlock
	"Fire aBlock ONCE after ms, with no per-frame work -- a one-shot timer riding the same World alarm loop
	as the animations. Keyed to a private token rather than a morph, so a timer never dedups against another
	timer and never cancels a morph's animation. The idiomatic replacement for animating some morph with
	an empty per-frame block just to get a delayed onDone."
	animations add: (Animation on: Object new do: [:t | ] duration: ms easing: [:t | t] onDone: aBlock).
	self scheduleNextFrame! !

!Animator methodsFor: 'animating' stamp: ''!
animate: aMorph using: aBlock duration: ms easing: easingSpec onDone: doneBlock
	"Register a per-frame animation: aBlock receives eased progress (0..1) each frame and applies
	it to aMorph. easingSpec is a Symbol (see easingNamed:) or a [:t|...] block. Any existing
	animation on aMorph is cancelled first. Driven by World alarms, not Morph stepping."
	| ease |
	ease := easingSpec isSymbol ifTrue: [self class easingNamed: easingSpec] ifFalse: [easingSpec].
	self cancelFor: aMorph.
	animations add: (Animation on: aMorph do: aBlock duration: ms easing: ease onDone: doneBlock).
	self scheduleNextFrame! !

!Animator methodsFor: 'animating' stamp: ''!
animateMorph: aMorph using: aBlock duration: ms onDone: doneBlock
	"Convenience matching the old Dock signature; defaults to cubic ease-in-out."
	^ self animate: aMorph using: aBlock duration: ms easing: #cubicInOut onDone: doneBlock! !

!Animator methodsFor: 'stepping' stamp: 'ML 3/Jul/2026 15:46:54'!
ensureTicking
	"Heartbeat: if animations are pending, make sure a frame alarm is actually coming --
	scheduleNextFrame's watchdog reclaims an arm that is stale (lost world, or era-shifted
	by the startup clock correction; see its comment). Called from the world cycle (the
	active SpaceCard's #step), which is the only driver guaranteed to run AFTER startup
	-- deferred-message tricks all drain in the same startup cycle and stay pre-shift."
	animations isEmpty ifFalse: [self scheduleNextFrame]! !

!Animator methodsFor: 'stepping' stamp: 'ML 3/Jul/2026 14:00:52'!
rearm
	"Drop any pending alarm and re-arm freshly on the current world (no-op without
	pending animations). For moments when a previously-scheduled alarm cannot be
	trusted at all -- notably right after image/world startup, where the world's first
	cycle era-shifts every alarm scheduled before it (WorldMorph>>adjustAlarmTimes:).
	Unlike scheduleNextFrame's watchdog, this does not wait out the trust window."
	armedWorld ifNotNil: [:w | w removeAlarm: #stepAnimationsAt: for: self].
	armedWorld := nil.
	armedAtMs := nil.
	animations isEmpty ifFalse: [self scheduleNextFrame]! !

!Animator methodsFor: 'stepping' stamp: 'ML 3/Jul/2026 15:46:54'!
scheduleNextFrame
	"Arm a one-shot World alarm for the next frame -- with a heartbeat watchdog. A
	pending arm is trusted only if it is on the CURRENT world and recent; otherwise the
	alarm is presumed lost and reclaimed. Alarms genuinely get lost: an arm on a world
	that gets replaced dies with it, and an alarm scheduled before the world's first
	cycle is era-shifted into the far future by WorldMorph>>adjustAlarmTimes: (its
	clock-weirdness correction assumes alarms predate the boot). Without the watchdog
	one lost alarm wedges every future animation. Must use Time localMillisecondClock --
	the same clock the World cycle and MorphicAlarm use."
	| w now |
	w := self world.
	w ifNil: [^ self].
	now := Time localMillisecondClock.
	(armedWorld == w and: [armedAtMs notNil and: [now - armedAtMs < 1000]]) ifTrue: [^ self].
	armedWorld == w ifTrue: [w removeAlarm: #stepAnimationsAt: for: self].
	w addAlarm: #stepAnimationsAt: withArguments: #() for: self at: now + self class frameMs.
	armedWorld := w.
	armedAtMs := now! !

!Animator methodsFor: 'stepping' stamp: 'ML 3/Jul/2026 13:51:49'!
stepAnimationsAt: nowMs
	"One frame (fired by the World alarm): advance every animation, fire onDone for finished
	ones, then re-arm while any remain."
	| finished |
	armedWorld := nil.
	finished := OrderedCollection new.
	animations copy do: [:a | (a tickAt: nowMs) ifTrue: [finished add: a]].
	finished do: [:a | animations remove: a ifAbsent: []].
	finished do: [:a | a onDone ifNotNil: [:d | d value]].
	animations isEmpty ifFalse: [self scheduleNextFrame]! !

!Animator methodsFor: 'timers' stamp: ''!
sequence: steps
	"Run a list of {delayMs. aBlock} steps in order: evaluate each block, then wait delayMs (which covers
	that block's own animation) before starting the next. Built on after:do:. Empty list is a no-op. This is
	how the demo chains animated ops so each finishes before the next begins."
	| step |
	steps isEmpty ifTrue: [^ self].
	step := steps first.
	(step at: 2) value.
	self after: (step at: 1) do: [self sequence: steps allButFirst]! !

!Animator class methodsFor: 'accessing' stamp: ''!
default
	"The shared animation engine (lazily created). All Blueprint choreography runs on
	this one instance so timing stays coherent and there is a single alarm loop."
	^ Default ifNil: [Default := self new]! !

!Animator class methodsFor: 'accessing' stamp: ''!
reset
	Default := nil! !

!Animator class methodsFor: 'constants' stamp: ''!
frameMs
	"Target frame interval in ms (~60 fps)."
	^ 16! !

!Animator class methodsFor: 'easing' stamp: ''!
easingNamed: aSymbol
	"Easing curves lifted from the cuis-xp Animation package (Raffaillac/Fernandes). Each
	answers a block mapping parametric t in [0,1] to eased t. Unknown names fall back to linear."
	aSymbol == #linear ifTrue: [^ [:t | t]].
	aSymbol == #cubicIn ifTrue: [^ [:t | t * t * t]].
	aSymbol == #cubicOut ifTrue: [^ [:t | | u | u := 1.0 - t. 1.0 - (u * u * u)]].
	aSymbol == #cubicInOut ifTrue: [^ [:t | | u | u := 1.0 - t. t < 0.5 ifTrue: [4.0 * t * t * t] ifFalse: [1.0 - (4.0 * u * u * u)]]].
	aSymbol == #quadOut ifTrue: [^ [:t | | u | u := 1.0 - t. 1.0 - (u * u)]].
	aSymbol == #backOut ifTrue: [^ [:t | | u | u := t - 1.0. (u * u * ((2.70158 * u) + 1.70158)) + 1.0]].
	^ [:t | t]! !

!Animator class methodsFor: 'geometry' stamp: ''!
bezierFrom: p0 to: p1 corner: cornerP at: t
	"Quadratic Bezier point at parameter t (0..1) from p0 to p1, bending through control point
	cornerP. The single home for every Blueprint fly-along-an-arc gesture (dock minimize/restore,
	window-group collapse/restore) so the curve math lives in exactly one place."
	| u |
	u := 1 - t.
	^ (p0 * (u * u)) + (cornerP * (2 * u * t)) + (p1 * (t * t))! !

!Animator class methodsFor: 'geometry' stamp: ''!
centerOffsetOf: aMorph
	"The UNSCALED origin->visual-centre vector for aMorph -- the input placeMorph:centeredAt:... needs to
	place it back. Uses the EXACT affine image of the local centre (morphExtent/2) when the extent is
	known; falls back to the measured bounds centre only for nil-morphExtent vector morphs. Captured once
	(it is intrinsic and scale-invariant), so the per-frame placement never re-measures."
	| me vc |
	me := aMorph morphExtent.
	vc := me ifNotNil: [aMorph location transform: (me / 2)] ifNil: [aMorph findFullBoundsInOwner center].
	^ (vc - aMorph morphPosition) / aMorph location scale! !

!Animator class methodsFor: 'geometry' stamp: ''!
dockCornerNear: dockP far: farP vertical: aBool
	"The quadratic-Bezier control point that makes a fly between farP (out in the desktop) and dockP
	(at the dock edge) leave/enter PERPENDICULAR to that edge. A vertical dock (left/right edge) wants
	a horizontal approach, so the bend keeps dockP y; a horizontal dock (top/bottom) keeps dockP x. The
	dock end is dockP regardless of fly direction, which is why callers key on dock-vs-far, not from-vs-to."
	^ aBool
		ifTrue: [farP x @ dockP y]
		ifFalse: [dockP x @ farP y]! !

!Animator class methodsFor: 'placing' stamp: ''!
placeMorph: m centeredAt: aPoint scale: s rotation: r offset: centerOffset baseRotation: r0
	"Set m's location so its visual centre lands EXACTLY on aPoint at scale s and rotation r. The UNSCALED
	centre offset (captured at baseRotation r0) is rotated by (r - r0) -- via Point>>rotatedBy: -- so the
	centre stays on aPoint as the morph turns; the translation then puts that centre at aPoint. Absolute
	placement (no findFullBoundsInOwner read) -- repeated frames never chase pixel rounding (no jitter). The
	single home for the math DockTile, the window-group cluster and the card mini-map all place through.
	A placement equal to the current one is skipped entirely: location: invalidates unconditionally, so
	re-asserting an identical placement (e.g. a mini-map poll over a static desktop) would redraw for
	nothing -- equal inputs produce an equal transformation, so skipping is exact, not approximate."
	| off loc |
	off := centerOffset rotatedBy: r - r0.
	loc := AffineTransformation new.
	loc withRotation: r scale: s.
	loc withTranslation: aPoint - (off * s).
	loc = m location ifTrue: [^ self].
	m location: loc! !

!SymbolFont class methodsFor: 'accessing' stamp: ''!
at: aName
	"Answer the Character that represents the symbol named aName.
	aName is a Symbol like #home, #search, #settings. Signal if not registered."
	^ self at: aName ifAbsent: [self error: 'Unknown symbol: ', aName printString]
! !

!SymbolFont class methodsFor: 'accessing' stamp: ''!
at: aName ifAbsent: aBlock
	"Answer the Character that represents the symbol named aName, or evaluate
	aBlock if no such symbol is registered."
	| cp |
	cp := self codepoints at: aName asSymbol ifAbsent: [^ aBlock value].
	^ Character value: cp
! !

!SymbolFont class methodsFor: 'accessing' stamp: ''!
includesName: aName
	^ self codepoints includesKey: aName asSymbol
! !

!SymbolFont class methodsFor: 'accessing' stamp: ''!
names
	"All registered symbol names (Symbols)."
	^ self codepoints keys
! !

!SymbolFont class methodsFor: 'rendering' stamp: ''!
fontDescriptionPointSize: pointSize
	"Answer the FontFamily TT description for the symbol font at the given size."
	^ FontFamily familyName: self fontFamilyName pointSize: pointSize
! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
codepoints
	"The name -> codepoint map, parsed once from the Tabler CSS and cached. The
	download/registration dance (ensureFontData -- which stats files on disk) runs
	only on the first access, NOT per lookup: glyph-heavy paths like menu building
	ask for codepoints many times per frame."
	Codepoints ifNil: [
		self ensureFontData.
		Codepoints := self loadFromCss: self cssFile].
	^ Codepoints! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
cssFile
	"The CSS codepoint map file (in #symbolFontDir), downloaded on demand by #ensureFontData."
	^ self symbolFontDir concatPathComponentsAsFile: #('tabler-icons.css')! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
cssUrl
	"Tabler Icons webfont CSS (name -> codepoint map), pinned version."
	^ 'https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@3.44.0/dist/tabler-icons.css'! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
ensureFontData
	"Ensure the Tabler icon font (TTF glyphs) + CSS codepoint map are present, downloading them once from the
	Tabler CDN into the image directory if absent, then registering the TTF so glyphs render. Idempotent.
	Requires the WebClient package. The TTF download disables gzip and reads the socket in binary."
	| dir cssEntry ttfEntry |
	dir := self symbolFontDir.
	cssEntry := dir concatPathComponentsAsFile: #('tabler-icons.css').
	cssEntry exists ifFalse: [
		dir assureExistence.
		cssEntry fileContents: (WebClient httpGet: self cssUrl) content asString].
	ttfEntry := dir concatPathComponentsAsFile: #('tabler-icons.ttf').
	ttfEntry exists ifFalse: [ | resp |
		dir assureExistence.
		resp := WebClient new httpGet: self ttfUrl do: [:req | req headerAt: 'Accept-Encoding' put: 'identity'].
		resp stream ifNotNil: [:s | s binary].
		ttfEntry binaryContents: resp content].
	(FontFamily familyNamed: self fontFamilyName) isNil ifTrue: [
		TrueTypeFontFamily readTrueTypeFontEntry: ttfEntry]! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
fontFamilyName
	"The underlying TrueType family that provides the glyphs. This is exactly the family name that a fresh
	TrueTypeFontFamily readTrueTypeFontEntry: of the Tabler TTF registers (its internal familyName), so the
	#ensureFontData idempotency guard and the renderer (SymbolFont>>fontDescriptionPointSize:) both resolve it."
	^ 'tabler-icons'! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
symbolFontDir
	"The directory holding the Tabler assets: a SymbolFont download cache under the image directory, or a
	TrueTypeFonts/TablerIcons directory beside the image if the files already live there (dev setup)."
	| cache legacy |
	cache := DirectoryEntry smalltalkImageDirectory / 'SymbolFont'.
	(cache exists and: [cache fileNames includes: 'tabler-icons.css']) ifTrue: [^ cache].
	legacy := DirectoryEntry smalltalkImageDirectory parent / 'TrueTypeFonts' / 'TablerIcons'.
	(legacy exists and: [legacy fileNames includes: 'tabler-icons.css']) ifTrue: [^ legacy].
	^ cache! !

!SymbolFont class methodsFor: 'font data' stamp: ''!
ttfUrl
	"Tabler Icons webfont TTF (glyphs), pinned version."
	^ 'https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@3.44.0/dist/fonts/tabler-icons.ttf'! !

!SymbolFont class methodsFor: 'private' stamp: ''!
loadFromCss: aFileEntry
	"Parse a Font-Awesome-style CSS rule file into a Dictionary
	name -> codepoint Integer. subStrings: wants a string of delimiters,
	not a single Character."
	| dict |
	dict := Dictionary new.
	(aFileEntry textContents subStrings: '}') do: [:rule |
		self parseRule: rule into: dict].
	^ dict
! !

!SymbolFont class methodsFor: 'private' stamp: ''!
parseRule: rule into: dict
	"Parse one CSS rule of the form NAME{ content...HEX...}. The font-specific
	prefix .ti- is handled here and not exposed by the public API.
	Tabler defines legacy aliases (e.g. .ti-360 -> same codepoint as .ti-view-360-arrow)
	after the canonical icon block. We keep only the first (canonical) name for
	each codepoint by skipping duplicates here."
	| tiAt nameEnd cAt hexEnd hex codepoint |
	tiAt := rule findString: '.ti-'.
	cAt := rule findString: 'content: "\'.
	(tiAt = 0 or: [cAt = 0]) ifTrue: [^ self].
	nameEnd := rule indexOf: $: startingAt: tiAt + 4.
	nameEnd = 0 ifTrue: [^ self].
	cAt := cAt + 11.
	hexEnd := (rule indexOf: $" startingAt: cAt) - 1.
	hexEnd < cAt ifTrue: [^ self].
	hex := (rule copyFrom: cAt to: hexEnd) asUppercase.
	hex isEmpty ifTrue: [^ self].
	codepoint := Integer readFrom: hex readStream base: 16.
	(dict values includes: codepoint) ifTrue: [^ self].
	dict at: (rule copyFrom: tiAt + 4 to: nameEnd - 1) asSymbol put: codepoint! !

!Placement methodsFor: 'accessing' stamp: ''!
home
	"The window's full-size location, remembered by a view at displacement time so the window can be put back."
	^ home! !

!Placement methodsFor: 'accessing' stamp: ''!
home: aLocation
	home := aLocation! !

!Placement methodsFor: 'accessing' stamp: ''!
isMinimized
	"Minimized = off-stage: no space holds the window (it lives in a dock tile)."
	^ space isNil! !

!Placement methodsFor: 'accessing' stamp: ''!
space
	^ space! !

!Placement methodsFor: 'accessing' stamp: ''!
space: aSpace
	space := aSpace! !

!Placement methodsFor: 'printing' stamp: ''!
printOn: aStream
	aStream nextPutAll: 'Placement('.
	self isMinimized
		ifTrue: [aStream nextPutAll: 'off-stage']
		ifFalse: [aStream print: space].
	aStream nextPutAll: ')'! !

!Placement class methodsFor: 'instance creation' stamp: ''!
in: aSpace
	"A fresh placement: lives in aSpace, no remembered home yet."
	^ self new space: aSpace! !

!Space methodsFor: 'accessing' stamp: ''!
name
	^ name! !

!Space methodsFor: 'accessing' stamp: ''!
name: aString
	name := aString! !

!Space methodsFor: 'printing' stamp: ''!
printOn: aStream
	aStream nextPutAll: 'Space('; nextPutAll: (name ifNil: ['unnamed']); nextPutAll: ')'! !

!Stage methodsFor: 'initialization' stamp: 'ML 3/Jul/2026 14:41:04'!
initialize
	super initialize.
	placements := IdentityDictionary new.
	spaces := OrderedCollection with: Space new.
	active := spaces first.
	shown := active.
	views := Dictionary new.
	flights := IdentitySet new.
	reservations := OrderedCollection new.
	mode := self modeChart.
	mode onTransition: [:m | (m is: #settled) ifTrue: [self drainPending]]! !

!Stage methodsFor: 'initialization' stamp: ''!
modeChart
	"What the stage can be doing. Completion events (#settle #opened #closed) come from views when
	their animations finish; missing edges ARE the guards (e.g. no #openOverview while switching)."
	^ StateMachine initial: #live states: {
		#live -> {
			#initial -> #settled.
			#states -> {
				#settled -> { #switch -> #switching. #openOverview -> #overview }.
				#switching -> { #settle -> #settled } } }.
		#overview -> {
			#initial -> #opening.
			#states -> {
				#opening -> { #opened -> #visible }.
				#visible -> { #dismiss -> #closing. #reflow -> #opening }.
				#closing -> { #closed -> #live } } } }! !

!Stage methodsFor: 'accessing' stamp: ''!
active
	^ active! !

!Stage methodsFor: 'accessing' stamp: ''!
mode
	^ mode! !

!Stage methodsFor: 'accessing' stamp: ''!
shown
	"The space whose windows are materialized on the desktop right now. Lags `active` while a switch
	flies; views reconcile shown toward active, then report switchSettled which snaps them equal."
	^ shown! !

!Stage methodsFor: 'accessing' stamp: ''!
spaces
	^ spaces! !

!Stage methodsFor: 'queries' stamp: ''!
isInFlight: aWindow
	^ flights includes: aWindow! !

!Stage methodsFor: 'queries' stamp: ''!
minimizedWindows
	^ placements keys select: [:w | (placements at: w) isMinimized]! !

!Stage methodsFor: 'queries' stamp: ''!
placementOf: aWindow
	^ placements at: aWindow ifAbsent: [nil]! !

!Stage methodsFor: 'queries' stamp: ''!
windows
	^ placements keys! !

!Stage methodsFor: 'queries' stamp: ''!
windowsIn: aSpace
	^ placements keys select: [:w | (placements at: w) space == aSpace]! !

!Stage methodsFor: 'events' stamp: ''!
forget: aWindow
	"A window leaves (closed): its placement goes with it. No mode guard -- a window may die any time."
	(placements removeKey: aWindow ifAbsent: [nil]) ifNil: [^ self].
	flights remove: aWindow ifAbsent: [].
	self reconcile.
	self notify: #forgotten with: aWindow! !

!Stage methodsFor: 'events' stamp: ''!
manage: aWindow
	"A window arrives (opened or adopted): it lives in the active space."
	(placements includesKey: aWindow) ifTrue: [^ self].
	placements at: aWindow put: (Placement in: active).
	self reconcile.
	self notify: #managed with: aWindow! !

!Stage methodsFor: 'events' stamp: ''!
switchSettled
	"A view reports the switch flight finished: shown snaps to active, then settling drains any
	queued switch (which may immediately re-enter #switching)."
	(mode is: #switching) ifFalse: [^ self].
	shown := active.
	self notify: #settled with: active.
	mode fire: #settle! !

!Stage methodsFor: 'events' stamp: 'ML 3/Jul/2026 15:38:11'!
switchTo: aSpace
	"Point `active` at aSpace and enter #switching; views fly windows to make `shown` catch up.
	While busy the request waits -- last one wins -- and drains on the next transition into
	#settled (or when the last flight lands). Two gates: the mode chart (no switch during a
	switch or overview) AND in-flight windows -- a switch fired while a window is still flying
	between placements (a move:to: stow, a restore) would stow/release around the airborne
	window and corrupt the card hand-off, so it queues instead."
	(spaces includes: aSpace) ifFalse: [^ self].
	aSpace == active ifTrue: [^ self].
	((mode can: #switch) and: [flights isEmpty]) ifFalse: [pending := aSpace. ^ self].
	active := aSpace.
	mode fire: #switch.
	self notify: #switch with: aSpace! !

!Stage methodsFor: 'private' stamp: ''!
drainPending
	pending ifNotNil: [:p | pending := nil. self switchTo: p]! !

!Stage methodsFor: 'private' stamp: ''!
reconcile
	"Keep exactly one empty space -- the fresh desktop you can always switch to. Drop surplus
	empties (never the active one); spawn one when every space holds windows. Views hear #spaces."
	| empties keeper changed |
	changed := false.
	empties := spaces select: [:sp | (self windowsIn: sp) isEmpty].
	empties isEmpty
		ifTrue: [spaces addLast: Space new. changed := true]
		ifFalse: [
			keeper := (empties includes: active) ifTrue: [active] ifFalse: [empties last].
			empties do: [:sp | sp == keeper ifFalse: [spaces remove: sp. changed := true]]].
	changed ifTrue: [self notify: #spaces with: nil]! !

!Stage methodsFor: 'views' stamp: ''!
flightBegan: aWindow
	"A view reports aWindow is being flown between placements. Pure annotation (desktop scans skip
	in-flight windows); all CONTROL flow lives in the mode chart."
	flights add: aWindow! !

!Stage methodsFor: 'views' stamp: 'ML 3/Jul/2026 15:38:11'!
flightEnded: aWindow
	"A view reports aWindow's flight landed. When the LAST flight lands on a settled stage,
	drain any switch that queued while windows were airborne (switchTo: defers on flights --
	see its comment; the mode-transition drain only covers switches queued during #switching)."
	flights remove: aWindow ifAbsent: [].
	(flights isEmpty and: [mode is: #settled]) ifTrue: [self drainPending]! !

!Stage methodsFor: 'views' stamp: 'ML 3/Jul/2026 14:41:04'!
notify: event with: arg
	views valuesDo: [:v | v value: event value: arg]! !

!Stage methodsFor: 'views' stamp: 'ML 3/Jul/2026 14:41:04'!
onChange: aBlock
	"Anonymous subscription (unique key): kept for listeners that are never recreated.
	Views with a lifecycle should use onChange:for: and a stable key."
	views at: Object new put: aBlock! !

!Stage methodsFor: 'views' stamp: 'ML 3/Jul/2026 14:41:04'!
onChange: aBlock for: aKey
	"Subscribe a view under aKey: aBlock gets (eventSymbol, argument) after every model
	change -- #managed/#forgotten/#minimized/#restored with the window, #switch/#settled
	with the space, #spaces with nil. KEYED so a recreated view (theme reapplied, a new
	Dock after startup) REPLACES its predecessor's subscription instead of stacking a
	ghost listener -- two docks fighting over the same stow/release choreography corrupts
	placements."
	views at: aKey put: aBlock! !

!Stage methodsFor: 'windows' stamp: ''!
minimize: aWindow
	"Minimize = off-stage: the window leaves its space for the dock. Reconciling keeps exactly one
	empty space (minimizing a space's last window would otherwise strand a surplus empty)."
	(self placementOf: aWindow) ifNotNil: [:p |
		p space: nil.
		self reconcile.
		self notify: #minimized with: aWindow]! !

!Stage methodsFor: 'windows' stamp: ''!
move: aWindow to: aSpace
	"Move a window to an arbitrary space -- the fifth space verb beside manage:/forget:/minimize:/restore:. Unlike
	restore: (always the active space) this targets ANY space, so a window can be pushed to a desktop the user is
	not on. Mutate placement space -> reconcile (keeps exactly one empty space: peeling a window onto the empty
	spare spawns a fresh spare) -> notify #moved. The visual hand-off between cards and the live desktop is the
	view's job (SpaceCard>>settle:into:, which animates the carried window into its target)."
	(spaces includes: aSpace) ifFalse: [^ self].
	(self placementOf: aWindow) ifNotNil: [:p |
		p space == aSpace ifTrue: [^ self].
		p space: aSpace.
		self reconcile.
		self notify: #moved with: aWindow]! !

!Stage methodsFor: 'windows' stamp: ''!
restore: aWindow
	"Un-minimize: the window rejoins the ACTIVE space -- it comes back where the user is, not where
	it left. Reconciling spawns a fresh empty space when the restore fills the last one."
	(self placementOf: aWindow) ifNotNil: [:p |
		p space: active.
		self reconcile.
		self notify: #restored with: aWindow]! !

!Stage methodsFor: 'real estate' stamp: ''!
arena
	"The usable screen area: the world minus every reserved edge strip (the dock's, today). The
	single source of truth for window real estate -- initial frames, fullscreen bounds and the
	overview grid all compute inside this rectangle; tiling will too."
	| a |
	a := UISupervisor ui viewBox.
	reservations do: [:res | | strut t |
		strut := res screenStrut.
		t := strut value.
		strut key == #left ifTrue: [a := (a left + t) @ a top corner: a corner].
		strut key == #right ifTrue: [a := a origin corner: (a right - t) @ a bottom].
		strut key == #top ifTrue: [a := a left @ (a top + t) corner: a corner].
		strut key == #bottom ifTrue: [a := a origin corner: a right @ (a bottom - t)]].
	^ a! !

!Stage methodsFor: 'real estate' stamp: ''!
initialFrameFor: anExtent
	"A staggered frame for a new window of anExtent: candidate spots spiral out level by level from
	each of the four arena corners (grid-spaced, DPI-scaled); the first whose anchor corner is not
	already claimed by a window on the shown space wins, so a grabbable corner of every window stays
	visible. Replaces the stock staggering policy minus its MVC-era scrollbar/screen-top setbacks
	and sub-VGA small-screen branches."
	| a grid frame frames corner delta putative |
	a := self arena.
	grid := 40 * DisplayScreen hostOSScaleFactor.
	frame := 0 @ 0 extent: anExtent.
	frames := (self windowsIn: shown) collect: [:w | w displayBounds].
	frames := frames reject: [:f | f isNil].
	0 to: 3 do: [:level |
		1 to: 4 do: [:ci | | cornerSel |
			cornerSel := #(topLeft topRight bottomRight bottomLeft) at: ci.
			corner := a perform: cornerSel.
			delta := ((3 - level) * grid + (grid / 2)) @ (level * grid).
			1 to: ci - 1 do: [:i | delta := delta y negated @ delta x].
			putative := corner + delta.
			(frames allSatisfy: [:f | ((f perform: cornerSel) - putative) r > (5 * DisplayScreen hostOSScaleFactor)])
				ifTrue: [^ (frame aligned: (frame perform: cornerSel) with: putative) translatedAndSquishedToBeWithin: a]]].
	^ (a origin extent: anExtent) translatedAndSquishedToBeWithin: a! !

!Stage methodsFor: 'real estate' stamp: 'ML 3/Jul/2026 14:41:04'!
reserve: anObject
	"Register a screen-edge reserver: an object answering #screenStrut (an edge -> thickness
	association). The arena excludes every reserved strip. One reservation per CLASS: a
	recreated dock replaces its predecessor's strut instead of double-reserving the edge."
	reservations := reservations reject: [:r | r class == anObject class].
	reservations add: anObject! !

!Stage methodsFor: 'real estate' stamp: ''!
settleWindowsIntoArena
	"Nudge every shown window back inside the arena, animated -- called when a reservation moves
	(e.g. the dock snaps to another edge). Windows already inside don't move. Quiet unless the
	chart is in live/settled, so it never fights a switch or the overview."
	| a |
	(mode can: #openOverview) ifFalse: [^ self].
	a := self arena.
	(self windowsIn: shown) do: [:w | | f t |
		f := w morphPosition extent: w morphExtent.
		t := f translatedAndSquishedToBeWithin: a.
		t = f ifFalse: [
			Animator default animate: w using: [:k | | o e |
				o := f origin + ((t origin - f origin) * k).
				e := f extent + ((t extent - f extent) * k).
				w morphPosition: o; morphExtent: e] duration: 300 easing: #cubicInOut onDone: []]]! !

!Stage methodsFor: 'real estate' stamp: ''!
standardWindowExtent
	"The default extent for a new window: a generous code-font-derived size (roughly 52 x 40
	characters), capped so a window placed at any stagger level still fits the arena (the 340 is
	8.5 stagger-grid steps of 40, DPI-scaled)."
	| s |
	s := DisplayScreen hostOSScaleFactor.
	^ ((self arena extent - (340 * s)) min: 52 @ 40 * (Preferences at: #standardCodeFont) lineSpacing) rounded! !

!Stage class methodsFor: 'instance creation' stamp: ''!
reset
	Default := nil! !

!Stage class methodsFor: 'accessing' stamp: ''!
default
	"The live singleton -- the model every Blueprint window view renders from."
	^ Default ifNil: [Default := self new]! !

!StateMachine methodsFor: 'runtime' stamp: ''!
drainQueue
	"After a transition, fire the first queued event that is now legal (which itself drains again), so a
	backlog clears as states allow. Events that never become legal simply wait."
	| fireable |
	fireable := queued detect: [:e | self can: e] ifNone: [nil].
	fireable ifNotNil: [queued remove: fireable. self fire: fireable]! !

!StateMachine methodsFor: 'runtime' stamp: ''!
fireOrQueue: event
	"Fire event now if legal; otherwise remember it and auto-fire when the machine next reaches a state
	that accepts it. The root fix for an event (e.g. a group switch-back) requested while busy -- nothing
	is dropped."
	(self fire: event) ifFalse: [queued addLast: event]! !

!StateMachine methodsFor: 'runtime' stamp: ''!
state
	^ current! !

!StateMachine methodsFor: 'introspection' stamp: ''!
allTransitions
	"Every transition as a { from. event. to } triple -- the data a visualiser or Mermaid/DOT export consumes."
	| out |
	out := OrderedCollection new.
	transitions keysAndValuesDo: [:from :evMap |
		evMap keysAndValuesDo: [:ev :to | out add: { from. ev. to }]].
	^ out asArray! !

!StateMachine methodsFor: 'introspection' stamp: ''!
eventsFrom: aState
	^ (transitions at: aState ifAbsent: [Dictionary new]) keys! !

!StateMachine methodsFor: 'introspection' stamp: ''!
initial
	"The starting state -- e.g. for a diagram's [*] entry edge."
	^ initial! !

!StateMachine methodsFor: 'introspection' stamp: ''!
initialChildOf: aState
	"The child state a compound enters by default (its #initial), or nil for a leaf. For tooling/visualisers."
	^ initialOf at: aState ifAbsent: [nil]! !

!StateMachine methodsFor: 'introspection' stamp: ''!
onTransition: aBlock
	"XState subscribe: aBlock is evaluated with this machine after every successful transition. The hook a
	live visualiser uses to repaint, or a client to redrawNeeded."
	observers add: aBlock! !

!StateMachine methodsFor: 'introspection' stamp: ''!
parentOf: aState
	"The compound state containing aState, or nil at the root -- for tooling/visualisers."
	^ parent at: aState ifAbsent: [nil]! !

!StateMachine methodsFor: 'introspection' stamp: ''!
path
	"The current configuration root-first, e.g. #(live settled) -- the leaf plus its ancestors."
	| s out |
	out := OrderedCollection new.
	s := current.
	[s notNil] whileTrue: [out addFirst: s. s := parent at: s ifAbsent: [nil]].
	^ out asArray! !

!StateMachine methodsFor: 'introspection' stamp: ''!
possibleEvents
	"The events that would transition from here -- the leaf's own plus everything inherited from ancestors."
	| s evs |
	evs := Set new.
	s := current.
	[s notNil] whileTrue: [
		evs addAll: (transitions at: s ifAbsent: [Dictionary new]) keys.
		s := parent at: s ifAbsent: [nil]].
	^ evs! !

!StateMachine methodsFor: 'introspection' stamp: ''!
states
	"Every state mentioned in the spec (sources and targets) -- for tooling/validation."
	| s |
	s := Set new.
	transitions keysAndValuesDo: [:from :evMap | s add: from. evMap valuesDo: [:to | s add: to]].
	^ s! !

!StateMachine methodsFor: 'private' stamp: ''!
installStates: aSpec under: aParent
	"Walk a declarative spec (stateName -> entries) installing each state. Two RESERVED keys make a state
	compound: #initial -> childState and #states -> { nested spec }; #on -> {...} wraps plain transitions
	(growth seam for entry/exit). Every other entry is event -> target. Children record aParent so events
	can bubble leaf-to-root at fire: time."
	aSpec do: [:assoc | | dict |
		dict := Dictionary new.
		assoc value do: [:a | dict at: a key put: a value].
		aParent ifNotNil: [parent at: assoc key put: aParent].
		(dict removeKey: #initial ifAbsent: [nil]) ifNotNil: [:i | initialOf at: assoc key put: i].
		(dict removeKey: #states ifAbsent: [nil]) ifNotNil: [:sub | self installStates: sub under: assoc key].
		(dict removeKey: #on ifAbsent: [nil]) ifNotNil: [:on | on do: [:a | dict at: a key put: a value]].
		transitions at: assoc key put: dict]! !

!StateMachine methodsFor: 'private' stamp: ''!
leafFor: aState
	"Entering a compound state descends through its #initial children until a leaf -- current is always a leaf."
	| s |
	s := aState.
	[initialOf includesKey: s] whileTrue: [s := initialOf at: s].
	^ s! !

!StateMachine methodsFor: 'private' stamp: ''!
setInitial: aState states: aSpec
	initial := aState.
	observers := OrderedCollection new.
	queued := OrderedCollection new.
	transitions := Dictionary new.
	parent := Dictionary new.
	initialOf := Dictionary new.
	self installStates: aSpec under: nil.
	current := self leafFor: aState! !

!StateMachine methodsFor: 'events' stamp: ''!
fire: event
	"XState send: take the (state, event) transition if one exists -- looked up on the current leaf first,
	then bubbling up the parent chain (a child shadows its parent for the same event). On a hit: enter the
	target (descending to its initial leaf if compound), notify observers, drain queued events, answer
	true. An unmatched event is a no-op answering false; that false IS the guard/debounce, declaratively."
	| s evMap |
	s := current.
	[s notNil] whileTrue: [
		evMap := transitions at: s ifAbsent: [Dictionary new].
		(evMap includesKey: event) ifTrue: [
			current := self leafFor: (evMap at: event).
			observers do: [:obs | obs value: self].
			self drainQueue.
			^ true].
		s := parent at: s ifAbsent: [nil]].
	^ false! !

!StateMachine methodsFor: 'events' stamp: ''!
reset
	"Return to the initial state (descending to its leaf; no observer notification) and clear queued events."
	current := self leafFor: initial.
	queued := OrderedCollection new! !

!StateMachine methodsFor: 'testing' stamp: ''!
can: event
	"XState snapshot.can: is event a legal transition right now -- on the leaf or any ancestor? (No firing.)"
	| s |
	s := current.
	[s notNil] whileTrue: [
		((transitions at: s ifAbsent: [Dictionary new]) includesKey: event) ifTrue: [^ true].
		s := parent at: s ifAbsent: [nil]].
	^ false! !

!StateMachine methodsFor: 'testing' stamp: ''!
is: aSymbol
	"XState snapshot.matches: true for the current leaf AND any of its ancestors -- (m is: #overview) holds
	while the machine sits in #overview's #visible child."
	| s |
	s := current.
	[s notNil] whileTrue: [
		s == aSymbol ifTrue: [^ true].
		s := parent at: s ifAbsent: [nil]].
	^ false! !

!StateMachine class methodsFor: 'instance creation' stamp: ''!
initial: aState states: aSpec
	"Build a machine from a declarative XState-shaped spec: aSpec is a collection of associations
	stateName -> entries, where each entry is event -> targetState. Two RESERVED keys make a state
	hierarchical (a compound state): #initial -> childState picks the child entered by default, and
	#states -> { nested spec } declares the children. Events undefined on the current leaf bubble up the
	parent chain; (m is: #parent) holds while in any child. A flat spec (no reserved keys) behaves as a
	plain FSM. { #on -> {...} } wraps transitions explicitly -- the seam for entry/exit actions later.
	Answers a machine settled at aState (descended to its initial leaf if compound)."
	^ self new setInitial: aState states: aSpec! !

!BlueprintTheme methodsFor: 'accent' stamp: ''!
focusIndicator
	^ self accentColor! !

!BlueprintTheme methodsFor: 'accent' stamp: ''!
menuHighlight
	^ self accentColor! !

!BlueprintTheme methodsFor: 'accent' stamp: ''!
textHighlight
	^ self accentColor! !

!BlueprintTheme methodsFor: 'colors' stamp: ''!
paneBackgroundFrom: aColor
	"Blueprint: body color matches frame color (single-tone chrome — drop the
	default veryMuchLighter step so chrome reads as one flat panel)."
	^ aColor
! !

!BlueprintTheme methodsFor: 'colors' stamp: ''!
textPane
	"Blueprint: translucent white, so the window body colour tints through and
	the text pane adapts to the window colour."
	^ Color white alpha: 0.5! !

!BlueprintTheme methodsFor: 'scrollbars' stamp: ''!
scrollbarColor
	"Blueprint: scrollbar track is invisible — only the slider shows."
	^ Color transparent
! !

!BlueprintTheme methodsFor: 'scrollbars' stamp: ''!
scrollbarShowButtons
	"Blueprint: drop the up/down arrow buttons — clean track + slider only."
	^ false
! !

!BlueprintTheme methodsFor: 'scrollbars' stamp: ''!
scrollbarSliderShadowColor
	"Blueprint: no shadow at all — slider drags clean."
	^ Color transparent
! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
buttonPaneHeight
	"32 logical pt, answered as physical px (consumers use it raw)."
	^ 32 * DisplayScreen hostOSScaleFactor! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
layoutAdjusterThickness
	"4 logical pt, answered as physical px (consumers use it raw)."
	^ 4 * DisplayScreen hostOSScaleFactor! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
roundedButtonRadius
	"8 logical pt, answered as physical px -- PluggableButtonMorph>>drawRoundLookOn:
	uses it raw in canvas space. (The rounded*Radius siblings for windows/menus/minis
	are LOGICAL; this one predates that convention and its consumer is base code.)"
	^ 8 * DisplayScreen hostOSScaleFactor! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
roundedWindowRadius
	"16 px window corner — softer than the Theme default 8."
	^ 16! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
scrollbarThickness
	"16 logical pt, answered as physical px (ScrollBar and friends use it raw)."
	^ 16 * DisplayScreen hostOSScaleFactor! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
titleBarButtonsExtent
	"16 logical pt square, answered as physical px -- SystemWindow>>rescaleButtons
	sets it as a raw morphExtent."
	| e |
	e := 16 * DisplayScreen hostOSScaleFactor.
	^ e @ e! !

!BlueprintTheme methodsFor: 'metrics' stamp: ''!
windowBorderWidth
	"Blueprint: no literal border; squircle chrome handles the visual edge.
	Title-bar layout now uses chromePadding instead of borderWidth."
	^ 0! !

!BlueprintTheme methodsFor: 'tool colors' stamp: ''!
workspace
	"Workspace window frame: muted moss-olive. The vanilla theme uses a high-saturation
	chartreuse (H=60 S=0.73 V=0.72); this picks a gentler hue with lower saturation so
	both the frame and the derived pane background look calmer."
	^ self useUniformColors
		ifTrue: [self defaultWindowColor]
		ifFalse: [Color h: 75 s: 0.35 v: 0.55]! !

!BlueprintTheme methodsFor: 'typography' stamp: ''!
fontAt: step
	"Cached type-scale lookup: glyph-heavy paths (menu building) ask for fonts
	thousands of times per frame, and the uncached computation (float pow + family
	dictionary walk) adds up. The key carries every input -- step, rem root, display
	scale, family -- so zoom or family changes simply miss into fresh entries."
	| key |
	key := { step. FontPointSize. DisplayScreen hostOSScaleFactor. FontFamily defaultFamilyName }.
	FontCache isNil ifTrue: [FontCache := Dictionary new].
	^ FontCache at: key ifAbsentPut: [super fontAt: step]! !

!BlueprintTheme class methodsFor: 'tile' stamp: ''!
buildTile
	"Build a scale-free blueprint tile: 1000 px square with four nested grids at 8/40/200/1000.
	Lines are painted smallest first so larger scales overlay at intersections."
	| tile w bg scales |
	w := 1000.
	bg := Color r: 0.098 g: 0.220 b: 0.420.
	scales := {
		8    -> (Color r: 0.153 g: 0.267 b: 0.455).
		40   -> (Color r: 0.263 g: 0.361 b: 0.525).
		200  -> (Color r: 0.416 g: 0.494 b: 0.624).
		1000 -> (Color r: 0.505 g: 0.572 b: 0.682) }.
	tile := Form extent: w@w depth: 32.
	tile fillColor: bg.
	scales do: [:assoc |
		| step lineColor i |
		step := assoc key.
		lineColor := assoc value.
		i := 0.
		[i < w] whileTrue: [
			tile fill: (i@0 extent: 1@w) fillColor: lineColor.
			tile fill: (0@i extent: w@1) fillColor: lineColor.
			i := i + step]].
	tile bits pin.
	^ tile! !

!BlueprintTheme class methodsFor: 'tile' stamp: ''!
tile
	"Lazy, cached. Force a rebuild by setting Tile := nil."
	Tile ifNil: [Tile := self buildTile].
	^ Tile! !

!BlueprintTheme class methodsFor: 'class initialization' stamp: ''!
initialize
	"BlueprintTheme initialize"
	Smalltalk addToStartUpList: self! !

!BlueprintTheme class methodsFor: 'activation' stamp: 'ML 3/Jul/2026 15:38:57'!
applyLookWhenWorldReady
	"The world-facing half of activation: typography, theme + chrome + Dock + Stage
	(super beCurrent -> currentTheme:), then the Animator rearm one cycle later.
	SELF-RETRYING: during a scripted startup (-r installs, -s scripts) the deferred-message
	queue drains BEFORE the UI world is fully up -- runningWorld answers nil, and a plain
	guard would silently skip the Dock/Stage setup (the theme would apply but the desktop
	would never assemble). So when the world is not ready yet, re-defer OURSELVES and try
	again next cycle; the world always arrives, and activation completes unattended."
	UISupervisor runningWorld isNil ifTrue: [
		^ UISupervisor whenUIinSafeState: [self applyLookWhenWorldReady]].
	self applyTypography.
	super beCurrent.
	UISupervisor whenUIinSafeState: [Animator default rearm]! !

!BlueprintTheme class methodsFor: 'activation' stamp: 'ML 3/Jul/2026 15:38:57'!
beCurrent
	"The single, robust entry point for activating the Blueprint desktop environment:
	 (1) ensure the Tabler icon font is downloaded, registered, and its codepoints parsed;
	 (2) apply Blueprint's typography -- #fontPointSize logical points scaled to the display;
	 (3) apply the theme + window chrome + Dock + Stage; and
	 (4) rearm the Animator one cycle later (see Animator>>rearm -- startup era-shifts alarms).
	Steps 2-4 need a running UI world and live in applyLookWhenWorldReady, which runs inline
	when called from the UI process (File List install, theme picker) and otherwise defers --
	re-deferring itself until the world exists, so scripted startups assemble unattended.
	Idempotent."
	SymbolFont codepoints.
	UISupervisor runningWorld isNil
		ifTrue: [UISupervisor whenUIinSafeState: [self applyLookWhenWorldReady]]
		ifFalse: [self applyLookWhenWorldReady].
	^ self! !

!BlueprintTheme class methodsFor: 'activation' stamp: 'ML 3/Jul/2026 16:37:07'!
currentTheme: aTheme
	"Apply the standard Theme machinery, then install the blueprint tile and the Dock
	(via installDockIn:) as the world taskbar, connected to the Stage."
	super currentTheme: aTheme.
	self runningWorld ifNotNil: [:w |
		w backgroundImage: self tile.
		w taskbar ifNotNil: [:bar | (bar isKindOf: Dock) ifFalse: [bar delete. w instVarNamed: 'taskbar' put: nil]].
		w taskbar isNil ifTrue: [self installDockIn: w].
		w fullRepaintNeeded].
	^ aTheme! !

!BlueprintTheme class methodsFor: 'activation' stamp: 'ML 3/Jul/2026 16:36:57'!
installDockIn: aWorld
	"Install a freshly wired Dock as aWorld's taskbar: existing desktop windows join the
	active space, the dock listens for Stage changes, and the cards mirror the spaces.
	The single source of truth for dock installation -- called from activation
	(currentTheme:) and from any taskbar rebuild (WorldMorph>>showTaskbar)."
	aWorld instVarNamed: 'taskbar' put: Dock new.
	aWorld addMorph: aWorld taskbar.
	aWorld taskbar reflow.
	aWorld desktopWindows do: [:win | Stage default manage: win].
	aWorld taskbar connectStage.
	aWorld taskbar syncCards! !

!BlueprintTheme class methodsFor: 'typography' stamp: ''!
applyTypography
	"Push the type scale into the UI. The Cuis preference fonts (list/menu/code/button)
	get the body step (0) via PreferenceSet defaultFontSize: -- which also refreshes
	cursors and canvas caches -- and the window title font is then pinned to step 1, so
	every derived font follows the rem root (fontPointSize) and the 2^(1/3) modular
	scale. Uses a scratch instance rather than Theme current: this runs during
	activation, BEFORE the current theme has switched to Blueprint. UI process only."
	| proto |
	proto := self new.
	PreferenceSet defaultFontSize: (proto fontAt: 0) pointSize.
	Preferences name: #windowTitleFont category: #font value: (proto fontAt: 1).
	UISupervisor ui ifNotNil: [:w | w fontPreferenceChanged]! !

!BlueprintTheme class methodsFor: 'typography' stamp: ''!
fontPointSize
	"The base UI font size in LOGICAL points (1rem). Everything text-sized derives from it via
	PreferenceSet defaultFontSize:. Default 12. Set with #fontPointSize: to zoom the whole UI."
	^ FontPointSize ifNil: [12]! !

!BlueprintTheme class methodsFor: 'typography' stamp: ''!
fontPointSize: aLogicalPointSize
	"Set the base (1rem) UI font size in logical points and re-apply live -- the one knob to zoom the UI.
	Persists in the image; #beCurrent honours it (so activation no longer clobbers a chosen size)."
	FontPointSize := aLogicalPointSize.
	UISupervisor runningWorld isNil
		ifTrue: [UISupervisor whenUIinSafeState: [self applyTypography]]
		ifFalse: [self applyTypography]! !

!BlueprintTheme class methodsFor: 'system startup' stamp: 'ML 3/Jul/2026 16:09:41'!
fitDisplay
	"Refit the desktop to the current display geometry: re-tile the wallpaper and
	reflow the Dock. Geometry only -- never re-runs activation. (Activation itself
	triggers restoreDisplay via Theme class>>currentTheme:, so anything stronger
	than a refit here would make activation re-enter itself.)"
	| w |
	w := UISupervisor ui.
	w ifNil: [^ self].
	w backgroundImage: self tile.
	(w taskbar isKindOf: Dock) ifTrue: [w taskbar reflow]! !

!BlueprintTheme class methodsFor: 'system startup' stamp: 'ML 3/Jul/2026 16:37:07'!
startUp: resuming
	"Image startup hook (registered in the startup list): refit the desktop to the
	current display geometry -- it may differ from the one the image was saved on.
	Dock survival across upstream desktop rebuilds is NOT handled here -- the theme-aware
	WorldMorph>>showTaskbar override covers every rebuild path structurally."
	Theme current class == self ifFalse: [^ self].
	self fitDisplay! !

!Popover methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Chrome body + edge on the popover's custom tailed path (pathOn:inset:): Theme
	chromeBody fill, 1px chromeHighlight inner stroke, 0.5px chromeHairline outer."
	| s |
	s := self hostScale.
	aCanvas fillColor: Theme current chromeBody do: [self pathOn: aCanvas inset: 0].
	aCanvas strokeWidth: 1 * s color: Theme current chromeHighlight do: [self pathOn: aCanvas inset: 1 * s].
	aCanvas strokeWidth: 0.5 * s color: Theme current chromeHairline do: [self pathOn: aCanvas inset: 0.25 * s]! !

!Popover methodsFor: 'drawing' stamp: ''!
pathOn: aCanvas inset: i
	"Body outline built in a canonical tail-DOWN frame, point-transformed to the actual side. Full
	corner, short flat shoulder, a smooth tail bump rising to a ROUNDED nose (horizontal tangent at the
	tip), short flat shoulder, full corner. All geometry constants (logical px) read through
	tuneAt:default: so a live tuner can drive them; defaults are the shipped values. Logical px scaled
	via hostOSScaleFactor; i trims for concentric stroking."
	| s me ex ey side vertical canW canH r tailHalf tailH cx tipTan shoulder tx left right top bodyBottom bottomTip midX |
	s := DisplayScreen hostOSScaleFactor.
	me := self morphExtent. ex := me x. ey := me y.
	side := self tailSide.
	vertical := (side == #bottom or: [side == #top]).
	vertical ifTrue: [canW := ex. canH := ey] ifFalse: [canW := ey. canH := ex].
	r := (((self tuneAt: #pCorner default: Theme current roundedMenuRadius) * s) - i) max: 0.
	tailH := (vertical ifTrue: [self tuneAt: #pProtrudeV default: 8] ifFalse: [self tuneAt: #pProtrudeS default: 6]) * s.
	shoulder := (self tuneAt: #pShoulder default: 2) * s.
	tailHalf := ((((self tuneAt: #pBase default: 12) * s) - i) max: (3 * s)) min: ((((canW / 2) - r - shoulder)) max: (3 * s)).
	tipTan := ((self tuneAt: #pTip default: 2) * s) min: tailHalf.
	cx := ((8 * s) min: (tailHalf - tipTan)) max: 0.
	tx := side == #top
		ifTrue: [[:p | p x @ (ey - p y)]]
		ifFalse: [side == #right
			ifTrue: [[:p | p y @ p x]]
			ifFalse: [side == #left
				ifTrue: [[:p | (ex - p y) @ p x]]
				ifFalse: [[:p | p]]]].
	left := i. right := canW - i. top := i.
	bodyBottom := canH - tailH - i. bottomTip := canH - i. midX := canW // 2.
	aCanvas moveTo: (tx value: left @ (top + r)).
	aCanvas quadraticBezierTo: (tx value: (left + r) @ top) control: (tx value: left @ top).
	aCanvas lineTo: (tx value: (right - r) @ top).
	aCanvas quadraticBezierTo: (tx value: right @ (top + r)) control: (tx value: right @ top).
	aCanvas lineTo: (tx value: right @ (bodyBottom - r)).
	aCanvas quadraticBezierTo: (tx value: (right - r) @ bodyBottom) control: (tx value: right @ bodyBottom).
	aCanvas lineTo: (tx value: (midX + tailHalf) @ bodyBottom).
	aCanvas cubicBezierTo: (tx value: midX @ bottomTip) control1: (tx value: (midX + tailHalf - cx) @ bodyBottom) control2: (tx value: (midX + tipTan) @ bottomTip).
	aCanvas cubicBezierTo: (tx value: (midX - tailHalf) @ bodyBottom) control1: (tx value: (midX - tipTan) @ bottomTip) control2: (tx value: (midX - tailHalf + cx) @ bodyBottom).
	aCanvas lineTo: (tx value: (left + r) @ bodyBottom).
	aCanvas quadraticBezierTo: (tx value: left @ (bodyBottom - r)) control: (tx value: left @ bodyBottom).
	aCanvas lineTo: (tx value: left @ (top + r)).
	aCanvas closePath! !

!Popover methodsFor: 'building' stamp: ''!
text: aString
	"Build the label and size the bubble (text-height, no growth). Reserve the tail protrusion on the
	axis facing the tail side; the protrusion (logical px) is read through tuneAt:default: so a tuner
	can drive it. Logical px scaled via hostOSScaleFactor."
	| s padX padY tailH labelW labelH bodyW bodyH side vertical |
	s := DisplayScreen hostOSScaleFactor.
	text := aString.
	labelMorph ifNotNil: [labelMorph delete].
	labelMorph := LabelMorph
		contents: aString
		font: (Preferences at: #standardListFont)
		emphasis: AbstractFont normalCode.
	labelMorph color: Color white.
	self addMorph: labelMorph.
	side := self tailSide.
	vertical := (side == #bottom or: [side == #top]).
	padX := 14 * s.
	padY := 8 * s.
	tailH := (vertical ifTrue: [self tuneAt: #pProtrudeV default: 8] ifFalse: [self tuneAt: #pProtrudeS default: 6]) * s.
	labelW := labelMorph morphExtent x.
	labelH := labelMorph morphExtent y.
	bodyW := labelW + (padX * 2).
	bodyH := labelH + (padY * 2).
	self morphExtent: (vertical
		ifTrue: [bodyW @ (bodyH + tailH)]
		ifFalse: [(bodyW + tailH) @ bodyH]).
	labelMorph morphPosition: (side == #left
		ifTrue: [(tailH + padX) @ padY]
		ifFalse: [side == #top
			ifTrue: [padX @ (tailH + padY)]
			ifFalse: [padX @ padY]])! !

!Popover methodsFor: 'accessing' stamp: ''!
defaultLayerNumber
	"Lower number = drawn on top. Above everything dock-related and above HoverHelpMorph (10)."
	^ 5! !

!Popover methodsFor: 'accessing' stamp: ''!
tailSide
	"Which edge the tail protrudes from: #bottom (default), #top, #left, #right."
	^ (self valueOfProperty: #tailSide) ifNil: [#bottom]! !

!Popover methodsFor: 'accessing' stamp: ''!
tailSide: aSymbol
	"Set the tail edge before text: (it affects sizing)."
	self setProperty: #tailSide toValue: aSymbol! !

!Popover methodsFor: 'events' stamp: ''!
collapse
	"Blueprint chrome: a popover is a transient overlay, never a dock candidate. Opts out of
	Morph>>collapse by overriding it, the same way the dock chrome and taskbar do."! !

!Popover methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ false! !

!Popover methodsFor: 'events' stamp: ''!
handlesMouseOver: anEvent
	^ false! !

!Popover methodsFor: 'initialization' stamp: ''!
initialize
	super initialize.
	self beSticky! !

!Popover methodsFor: 'testing' stamp: ''!
isIncludedInTaskbar
	^ false! !

!Popover methodsFor: 'testing' stamp: ''!
requiresVectorCanvas
	"Vector canvas needed for the rounded path with arrow tail."
	^ true! !

!MorphHalo methodsFor: 'handles' stamp: ''!
grips
	"The eight resize grips: four corners and four edge midpoints."
	^ #(#topLeft #top #topRight #right #bottomRight #bottom #bottomLeft #left)! !

!MorphHalo methodsFor: 'handles' stamp: ''!
handleHitSize
	"Side length of a grip's (invisible) hit box, in physical px. Larger than the
	drawn square (~12px) so the grips are easy to grab."
	^ 12 * DisplayScreen hostOSScaleFactor! !

!MorphHalo methodsFor: 'handles' stamp: ''!
layout
	"Re-fit the halo to the target's current world bounds, reposition the grips,
	and update the dimension / scale pills. Bounds via targetBounds so it works on
	morphs that don't implement extentInWorld."
	| b |
	target ifNil: [^ self].
	b := self targetBounds.
	self position: b origin extent: b extent.
	haloBox := self handlesBox.
	self repositionHandles.
	self layoutLabels.
	self redrawNeeded
! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
defaultColor
	"Pulled up from HaloMorph."
	^ Color r: 0.6 g: 0.8 b: 1.0! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
defaultLayerNumber
	"Pulled up from HaloMorph: float above everything."
	^ 20! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Blueprint halo frame: a thin accent rectangle over the target. When the target is
	rotated, the frame is a straight quad through the rotated corners so it hugs the morph;
	otherwise an upright rectangle. Grips are drawn by the handle submorphs; labels stay
	axis-aligned."
	| s bounds accent corners rot |
	target ifNil: [^ self].
	s := DisplayScreen hostOSScaleFactor.
	accent := Theme current accentColor.
	corners := self corners.
	rot := (target respondsTo: #rotation) ifTrue: [target rotation] ifFalse: [0].
	(corners notNil and: [rot abs > 0.001])
		ifTrue: [
			| origin |
			origin := self targetBounds origin.
			self strokeFrameOn: aCanvas corners: (corners collect: [:wc | wc - origin])]
		ifFalse: [
			bounds := self localBounds.
			aCanvas strokeWidth: 1 * s color: accent do: [
				aCanvas moveTo: (bounds left + (0.5 * s)) @ (bounds top + (0.5 * s)).
				aCanvas lineTo: (bounds right - (0.5 * s)) @ (bounds top + (0.5 * s)).
				aCanvas lineTo: (bounds right - (0.5 * s)) @ (bounds bottom - (0.5 * s)).
				aCanvas lineTo: (bounds left + (0.5 * s)) @ (bounds bottom - (0.5 * s)).
				aCanvas closePath]]! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
knowsOwnLocalBounds
	"Pulled up from HaloMorph: bounds include protruding handles, so let the framework compute them."
	^ false! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	"We draw squircles and strokes (vector protocol), so we must be drawn on a
	VectorCanvas -- unlike the classic HaloMorph, which uses BitBlt ops."
	^ true
! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
strokeFrameOn: aCanvas corners: pts
	"Stroke a plain (square-cornered) quadrilateral through the four halo-local corner
	points pts (TL TR BR BL) -- the rotated frame."
	| s accent |
	s := DisplayScreen hostOSScaleFactor.
	accent := Theme current accentColor.
	aCanvas strokeWidth: 1 * s color: accent do: [
		aCanvas moveTo: (pts at: 1).
		2 to: pts size do: [:i | aCanvas lineTo: (pts at: i)].
		aCanvas closePath]! !

!MorphHalo methodsFor: 'drawing' stamp: ''!
submorphsMightProtrude
	"Pulled up from HaloMorph: grips and pills are drawn outside our bounds."
	^ true! !

!MorphHalo methodsFor: 'resize' stamp: ''!
doResize: evt with: handle
	"Resize from the captured start geometry to the cursor. Symmetric (about the start
	centre) while Shift is held, asymmetric otherwise. Shift is read from the move event;
	unlike Option/Cmd it is NOT remapped to another mouse button by EventSensor
	mapButtons:modifiers:, so the button-1 drag identity (and thus the grip mouse focus)
	survives a mid-drag Shift toggle. layout repositions every grip each move, so all
	control points track the resizing frame."
	self resizeTargetTo: evt eventPosition grip: (handle valueOfProperty: #grip) symmetric: evt shiftPressed! !

!MorphHalo methodsFor: 'resize' stamp: ''!
endResize
	"End an active resize: clear the active flag and forget the start geometry (re-captured
	at the next drag). Mouse focus is released for us by processMouseUp:."
	self setProperty: #resizeActive toValue: false.
	self removeProperty: #resizeStartExtent.
	self removeProperty: #resizeStartCenter.
	self removeProperty: #resizeStartRotation.
	self removeProperty: #resizeStartScale! !

!MorphHalo methodsFor: 'resize' stamp: ''!
resizeTargetTo: aWorldPoint grip: grip
	"Asymmetric resize (the default); see the symmetric: variant."
	^ self resizeTargetTo: aWorldPoint grip: grip symmetric: false! !

!MorphHalo methodsFor: 'resize' stamp: ''!
resizeTargetTo: aWorldPoint grip: grip symmetric: sym
	"Resize from the captured start state (centre c0, extent w0@h0, rotation r, scale s).
	Project the cursor offset onto the rotated local axes ux/uy and divide by s to get
	LOCAL coordinates (morphExtent units); move the dragged edge(s) to the cursor; the
	opposite edge(s) stay at their start position (asymmetric) or mirror across c0
	(symmetric / Option). Rebuild extent (local) + origin (world, offsets scaled by s) so
	it is correct under both rotation and scale. Enforces a minimum local size."
	| r s c0 ext w0 h0 ux uy d cx cy minS leftE rightE topE bottomE cL cR cT cB newW newH ccx ccy centre origin |
	(target respondsTo: #internalizeFromWorld:) ifFalse: [^ self].
	r := (self valueOfProperty: #resizeStartRotation) ifNil: [0].
	s := (self valueOfProperty: #resizeStartScale) ifNil: [target location scale].
	c0 := (self valueOfProperty: #resizeStartCenter) ifNil: [target externalizeToWorld: (target morphExtent / 2)].
	ext := (self valueOfProperty: #resizeStartExtent) ifNil: [target morphExtent].
	w0 := ext x. h0 := ext y.
	ux := (r cos) @ (r sin).
	uy := (r sin) negated @ (r cos).
	d := aWorldPoint - c0.
	cx := ((d x * ux x) + (d y * ux y)) / s.
	cy := ((d x * uy x) + (d y * uy y)) / s.
	minS := 16 * self hostScale.
	cL := #(topLeft left bottomLeft) includes: grip.
	cR := #(topRight right bottomRight) includes: grip.
	cT := #(topLeft top topRight) includes: grip.
	cB := #(bottomLeft bottom bottomRight) includes: grip.
	leftE := w0 / -2. rightE := w0 / 2. topE := h0 / -2. bottomE := h0 / 2.
	cL ifTrue: [leftE := cx].
	cR ifTrue: [rightE := cx].
	cT ifTrue: [topE := cy].
	cB ifTrue: [bottomE := cy].
	sym ifTrue: [
		cL ifTrue: [rightE := leftE negated].
		cR ifTrue: [leftE := rightE negated].
		cT ifTrue: [bottomE := topE negated].
		cB ifTrue: [topE := bottomE negated]].
	(rightE - leftE) < minS ifTrue: [
		sym
			ifTrue: [leftE := minS / -2. rightE := minS / 2]
			ifFalse: [cR ifTrue: [rightE := leftE + minS]. cL ifTrue: [leftE := rightE - minS]]].
	(bottomE - topE) < minS ifTrue: [
		sym
			ifTrue: [topE := minS / -2. bottomE := minS / 2]
			ifFalse: [cB ifTrue: [bottomE := topE + minS]. cT ifTrue: [topE := bottomE - minS]]].
	newW := rightE - leftE.
	newH := bottomE - topE.
	ccx := (leftE + rightE) / 2.
	ccy := (topE + bottomE) / 2.
	centre := c0 + (ux * (ccx * s)) + (uy * (ccy * s)).
	origin := centre - (ux * (newW / 2 * s)) - (uy * (newH / 2 * s)).
	target morphExtent: newW @ newH.
	target positionInWorld: origin.
	self layout! !

!MorphHalo methodsFor: 'resize' stamp: ''!
startResize: evt with: handle
	"Resize start: capture the start geometry ONCE (extent, world centre, rotation, scale)
	with a re-entry guard so a repeated mouse-down can not reset the symmetric pivot. The
	dragged grip is the hand mouse focus (set by processMouseDown:), so every move routes
	to doResize:with: regardless of cursor position; all grips stay visible for the whole
	drag because the focused grip owns the event stream and the others are inert."
	(self valueOfProperty: #resizeActive) == true ifTrue: [^ self].
	self setProperty: #resizeActive toValue: true.
	self setProperty: #resizeStartExtent toValue: target morphExtent.
	self setProperty: #resizeStartCenter toValue: (target externalizeToWorld: (target morphExtent / 2)).
	self setProperty: #resizeStartRotation toValue: ((target respondsTo: #rotation) ifTrue: [target rotation] ifFalse: [0]).
	self setProperty: #resizeStartScale toValue: target location scale! !

!MorphHalo methodsFor: 'labels' stamp: ''!
addLabels
	"Add the title pill (window chrome: window-coloured squircle, perimeter stroke, controls, name,
	above the frame -- a MorphHaloTitle) and the dimensions / scale / rotation scrubber pills
	(accent capsules, white text, in a row below the frame -- MorphHaloScrubbers)."
	| nm dims sc rot |
	nm := MorphHaloTitle new.
	nm setProperty: #labelKind toValue: #name.
	nm setProperty: #fill toValue: Theme current defaultWindowColor.
	nm setProperty: #ink toValue: (Color black alpha: 0.8).
	nm halo: self.
	self addMorph: nm.
	dims := MorphHaloScrubber new.
	dims setProperty: #labelKind toValue: #dims.
	self addMorph: dims.
	sc := MorphHaloScrubber new.
	sc setProperty: #labelKind toValue: #scale.
	self addMorph: sc.
	rot := MorphHaloScrubber new.
	rot setProperty: #labelKind toValue: #rotation.
	self addMorph: rot.
	self layoutLabels! !

!MorphHalo methodsFor: 'labels' stamp: ''!
dimensionsString
	"Target size in logical (DPI-independent) px, W x H. Uses the target's own
	extent (rotation-independent) when it has one, so a rotated morph still reports
	its true size rather than its bounding box; falls back to targetBounds for
	morphs without morphExtent."
	| s ext thin sep |
	s := DisplayScreen hostOSScaleFactor.
	ext := ((target respondsTo: #morphExtent) and: [target morphExtent notNil])
		ifTrue: [target morphExtent]
		ifFalse: [self targetBounds extent].
	thin := (Character value: 16r2009) asString.
	sep := thin , (Character value: 215) asString , thin.
	^ (self string1Decimal: ext x / s) , sep , (self string1Decimal: ext y / s)! !

!MorphHalo methodsFor: 'labels' stamp: ''!
labelOfKind: kind
	"Find the pill submorph carrying this #labelKind. Matched on the property, NOT the class, because
	the metric pills are BlueprintHaloScrubbers while the name pill is a BlueprintHaloTitle (sibling
	classes, no longer related by inheritance)."
	^ self submorphs
		detect: [:m | (m valueOfProperty: #labelKind) == kind]
		ifNone: [nil]! !

!MorphHalo methodsFor: 'labels' stamp: ''!
layoutLabels
	"Update each label text and place it: the morph-name label centred above the top
	grips; the dimensions / scale / rotation pills in a single centred row just under the
	bottom grips."
	| s gap w nm topY row rowW x |
	s := DisplayScreen hostOSScaleFactor.
	gap := 6 * s.
	w := self morphExtent x.
	nm := self labelOfKind: #name.
	nm ifNotNil: [
		nm text: self nameString.
		nm morphPosition: ((w - nm morphExtent x) / 2)
			@ (0 - (self handleHitSize / 2) - gap - nm morphExtent y)].
	topY := self morphExtent y + (self handleHitSize / 2) + gap.
	row := OrderedCollection new.
	(self labelOfKind: #dims) ifNotNil: [:m | m text: self dimensionsString. row add: m].
	(self labelOfKind: #scale) ifNotNil: [:m | m text: self scaleString. row add: m].
	(self labelOfKind: #rotation) ifNotNil: [:m | m text: self rotationString. row add: m].
	row isEmpty ifTrue: [^ self].
	rowW := (row inject: 0 into: [:acc :m | acc + m morphExtent x]) + (gap * (row size - 1)).
	x := (w - rowW) / 2.
	row do: [:m |
		m morphPosition: x @ topY.
		x := x + m morphExtent x + gap]! !

!MorphHalo methodsFor: 'labels' stamp: ''!
nameString
	"Target morph's class name and identity, e.g. 'ColoredBoxMorph (3006119)' -
	the title shown above the frame in the design draft."
	^ target class name asString , ' (' , target identityHash printString , ')'! !

!MorphHalo methodsFor: 'labels' stamp: ''!
rotationString
	"Target rotation in whole degrees, signed and folded to (-180, 180] so 0 is upright and
	the sign is the tilt direction (+ clockwise on screen, since y points down). The seam
	sits at 180 (upside-down) -- the point farthest from rest. 0 for non-rotatable morphs."
	| signed |
	signed := (target respondsTo: #rotation)
		ifTrue: [(((target rotationDegrees + 180) \\ 360) - 180) rounded]
		ifFalse: [0].
	signed = -180 ifTrue: [signed := 180].
	^ signed printString , (Character value: 176) asString! !

!MorphHalo methodsFor: 'labels' stamp: ''!
scaleString
	"Target scale as a percentage."
	^ (target scale * 100) rounded printString , '%'! !

!MorphHalo methodsFor: 'labels' stamp: ''!
string1Decimal: aNumber
	"Format a number with exactly one decimal place (avoids ugly Float
	printStrings from #roundTo:)."
	| n |
	n := (aNumber * 10) rounded.
	^ (n // 10) printString , '.' , (n \\ 10) printString! !

!MorphHalo methodsFor: 'events' stamp: ''!
endInteraction
	"Mouse-up on a grip: end any active resize, then the (formerly inherited) cleanup -
	if the target is still in-world, bring the halo to front and re-add the handles."
	self endResize.
	(target isInWorld not or: [owner isNil]) ifTrue: [^ self].
	self isInWorld ifTrue: [
		self comeToFront.
		self addHandles]! !

!MorphHalo methodsFor: 'events' stamp: ''!
handlesMouseDown: aMouseButtonEvent
	"Handle clicks in the halo body (not on a grip): button 1 drags the target
	(the halo follows), button 2 opens the context menu. Grips are submorphs and
	get their own clicks first, so they keep working."
	^ true
! !

!MorphHalo methodsFor: 'events' stamp: ''!
keyStroke: aKeyboardEvent
	"Backspace or Delete, while the halo is up, deletes the target morph and
	dismisses the halo. Other keys fall through. Honors the keyboard #wasHandled
	contract so a consumed key does not bubble up the owners."
	| t |
	(self isInWorld and: [target notNil
		and: [aKeyboardEvent isBackspace or: [aKeyboardEvent isDelete]]]) ifTrue: [
			t := target.
			self delete.
			t delete.
			aKeyboardEvent wasHandled: true.
			^ self].
	super keyStroke: aKeyboardEvent! !

!MorphHalo methodsFor: 'events' stamp: ''!
mouseButton1Down: evt localPosition: localEventPosition
	"Begin moving the target by dragging the halo body."
	evt hand obtainHalo: self.
	target ifNotNil: [positionOffset := evt eventPosition - target positionInWorld]! !

!MorphHalo methodsFor: 'events' stamp: ''!
mouseButton1Up: evt localPosition: localEventPosition
	"Finish a body drag; keep the halo up."
	evt hand obtainHalo: self! !

!MorphHalo methodsFor: 'events' stamp: ''!
mouseButton3Down: aMouseButtonEvent localPosition: localEventPosition
	"Pulled up from HaloMorph: right-click transfers the halo to the next likely recipient."
	target ifNil: [ self delete. ^ self ].
	aMouseButtonEvent hand obtainHalo: self.
	positionOffset := aMouseButtonEvent eventPosition - target positionInWorld.
	aMouseButtonEvent hand
		waitForClicksOrDrag: self
		event: aMouseButtonEvent
		clkSel: #transferHalo:localPosition:
		dblClkSel: nil! !

!MorphHalo methodsFor: 'events' stamp: ''!
mouseMove: evt localPosition: localEventPosition
	"Drag the target with the cursor and keep the halo fitted over it."
	target ifNil: [^ self].
	evt hand obtainHalo: self.
	target positionInWorld: evt eventPosition - positionOffset.
	self layout! !

!MorphHalo methodsFor: 'events' stamp: ''!
rejectsEvent: aMorphicEvent
	"Accept keyboard (so Backspace/Delete reach keyStroke: while the halo holds focus) and
	mouse-down; reject the rest so other events fall through to target/owner. Move/up during a
	drag arrive via mouse focus, bypassing this. (Inlined former super -> HaloMorph.)"
	aMorphicEvent isKeyboard ifTrue: [^ false].
	(aMorphicEvent isMouse and: [aMorphicEvent isMouseDown]) ifTrue: [^ false].
	^ true! !

!MorphHalo methodsFor: 'events' stamp: ''!
staysUpWhenMouseIsDownIn: aMorph
	"Keep the halo up when the press lands on the halo body itself (aMorph == self -
	a body drag-to-move or a body right-click), as well as on the target or on one of
	my grips (hasOwner: self). The superclass omits the body case, so without this a
	body press would dismiss the halo before the drag/menu handler ever runs."
	^ (aMorph == self) or: [(aMorph == target) or: [aMorph hasOwner: self]]
! !

!MorphHalo methodsFor: 'events' stamp: ''!
transferHalo: event localPosition: localEventPosition
	"Pulled up from HaloMorph."
	target ifNil: [ self delete. ^ self ].
	target transferHalo: event from: target! !

!MorphHalo methodsFor: 'menu' stamp: ''!
duplicateTarget
	"Drop a copy of the target into its owner, offset so it is visible."
	| dup s |
	dup := target duplicate.
	target owner addMorph: dup.
	s := DisplayScreen hostOSScaleFactor.
	dup morphPosition: target morphPosition + ((16 * s) @ (16 * s))
! !

!MorphHalo methodsFor: 'menu' stamp: ''!
getMenu
	"Context menu for the target morph, in logical sections: inspect/explore,
	z-order, duplicate/collapse, then delete. Items target the morph directly with
	real zero-arg selectors, so they work even though the framework dismisses the
	halo when a menu item is chosen (the press lands on the menu, not the halo, so
	the halo's owner is nil by action time - sending halo-relative ops like
	#comeToFront to a detached halo is what raised DNU). Duplicate is the one op that
	needs extra logic (add the copy to the owner), so it goes to a halo helper that
	reads only the still-valid target."
	| menu |
	target ifNil: [^ nil].
	menu := MenuMorph new.
	menu add: 'Inspect' target: target action: #inspect.
	menu add: 'Explore' target: target action: #explore.
	menu addLine.
	menu add: 'Bring to front' target: target action: #comeToFront.
	menu add: 'Send to back' target: target action: #goBehind.
	menu addLine.
	menu add: 'Duplicate' target: self action: #duplicateTarget.
	menu add: 'Collapse' target: target action: #collapse.
	menu addLine.
	menu add: 'Delete' target: target action: #delete.
	^ menu
! !

!MorphHalo methodsFor: 'geometry' stamp: ''!
corners
	"The target's four corners in WORLD coordinates (topLeft, topRight,
	bottomRight, bottomLeft), rotated if the target is. Nil if the target has no
	morphExtent (non-resizable PlacedMorphs)."
	(target respondsTo: #morphExtent) ifFalse: [^ nil].
	target morphExtent ifNil: [^ nil].
	^ #(#topLeft #topRight #bottomRight #bottomLeft) collect: [:g |
		target externalizeToWorld: (self gripLocalPoint: g)]! !

!MorphHalo methodsFor: 'geometry' stamp: ''!
gripLocalPoint: grip
	"Point in the TARGET's own (un-rotated) local coordinates for a grip. Mapped
	to world via target externalizeToWorld: (which applies the target rotation),
	so the grips track a rotated morph."
	| w h |
	w := target morphExtent x. h := target morphExtent y.
	grip == #topLeft ifTrue: [^ 0 @ 0].
	grip == #top ifTrue: [^ (w / 2) @ 0].
	grip == #topRight ifTrue: [^ w @ 0].
	grip == #right ifTrue: [^ w @ (h / 2)].
	grip == #bottomRight ifTrue: [^ w @ h].
	grip == #bottom ifTrue: [^ (w / 2) @ h].
	grip == #bottomLeft ifTrue: [^ 0 @ h].
	grip == #left ifTrue: [^ 0 @ (h / 2)].
	^ 0 @ 0! !

!MorphHalo methodsFor: 'geometry' stamp: ''!
gripPoint: grip
	"Halo-local point for a grip = its world position (rotated) minus the halo's
	world origin (the AABB origin). At rotation 0 this is the plain corner/edge
	point, matching the un-rotated layout."
	^ (target externalizeToWorld: (self gripLocalPoint: grip)) - self targetBounds origin! !

!MorphHalo methodsFor: 'geometry' stamp: ''!
rotateHandlePoint: corner
	"Halo-local centre for a rotate zone: the corner pushed outward from the
	target centre by one hit-size, so it sits just beyond the corner resize grip."
	| cp center dir len off |
	cp := self gripPoint: corner.
	center := (target externalizeToWorld: (target morphExtent / 2)) - self targetBounds origin.
	dir := cp - center.
	len := dir r.
	off := self handleHitSize.
	^ len = 0 ifTrue: [cp] ifFalse: [cp + (dir * (off / len))]! !

!MorphHalo methodsFor: 'geometry' stamp: ''!
targetBounds
	"World bounds for fitting the halo. For a (possibly rotated) morph with a
	morphExtent, the axis-aligned bounding box of its rotated corners -- so the
	halo box and the labels stay upright while the frame/grips hug the rotation.
	Falls back to displayBoundsForHalo for morphs without morphExtent."
	| corners |
	corners := self corners.
	^ corners isNil
		ifTrue: [target displayBoundsForHalo]
		ifFalse: [Rectangle encompassing: corners]! !

!MorphHalo methodsFor: 'initialization' stamp: ''!
addHandles: aDisplayRectangle
	"Blueprint halo: size to the target AABB, add rotate zones (behind) then the
	resize grips (in front, so the corner stays resize and rotation lives just
	outside), the dimension / scale pills, and the morph-name pill."
	self position: aDisplayRectangle topLeft extent: aDisplayRectangle extent.
	haloBox := self handlesBox.
	self addRotateHandles.
	self addResizeHandles.
	self addLabels.
	self redrawNeeded! !

!MorphHalo methodsFor: 'initialization' stamp: ''!
addResizeHandles
	"Add a resize grip at each of the 8 grip points, rotated to match the frame
	and wired to the resize handlers. Skip if the target cannot be resized."
	target okayToResizeEasily ifFalse: [^ self].
	self grips do: [:grip | | handle |
		handle := MorphHaloHandle new.
		self addMorph: handle.
		handle setProperty: #grip toValue: grip.
		handle mouseDownSelector: #startResize:with:.
		handle mouseMoveSelector: #doResize:with:.
		handle mouseUpSelector: #endInteraction.
		self placeHandle: handle at: (self gripPoint: grip)]! !

!MorphHalo methodsFor: 'initialization' stamp: ''!
addRotateHandles
	"Add an invisible rotate hit-zone just outside each corner, rotated to match
	the frame and wired to the rotate handlers. Only for rotatable morphs."
	((target respondsTo: #rotation:) and: [(target respondsTo: #morphExtent) and: [target morphExtent notNil]]) ifFalse: [^ self].
	#(#topLeft #topRight #bottomRight #bottomLeft) do: [:corner | | handle |
		handle := MorphHaloHandle new.
		self addMorph: handle.
		handle setProperty: #grip toValue: corner.
		handle setProperty: #role toValue: #rotate.
		handle mouseDownSelector: #startRotate:with:.
		handle mouseMoveSelector: #doRotate:with:.
		handle mouseUpSelector: #endInteraction.
		self placeHandle: handle at: (self rotateHandlePoint: corner)]! !

!MorphHalo methodsFor: 'initialization' stamp: ''!
placeHandle: handle at: p
	"Place a grip / rotate zone centred at halo-local point p, rotated to match the target so the grip
	squares align with the rotated frame. Rotation pivots about the morph origin, so offset the origin by
	the rotated half-extent (Point>>rotatedBy:) so the centre lands on p."
	| e rot hx |
	e := self handleHitSize.
	rot := (target respondsTo: #rotation) ifTrue: [target rotation] ifFalse: [0].
	hx := e / 2.
	handle morphExtent: e @ e.
	handle rotation: rot.
	handle morphPosition: p - ((hx @ hx) rotatedBy: rot)! !

!MorphHalo methodsFor: 'initialization' stamp: ''!
repositionHandles
	"Move + re-rotate each grip / rotate zone to its recomputed point after the
	target was resized or rotated."
	self submorphsDo: [:m | | grip p |
		grip := m valueOfProperty: #grip.
		grip ifNotNil: [
			p := (m valueOfProperty: #role) == #rotate
				ifTrue: [self rotateHandlePoint: grip]
				ifFalse: [self gripPoint: grip].
			self placeHandle: m at: p]]! !

!MorphHalo methodsFor: 'stepping' stamp: ''!
step
	"Pulled up from HaloMorph: self-dismiss when the target goes away."
	(target isNil or: [target isInWorld not]) ifTrue: [self delete]! !

!MorphHalo methodsFor: 'stepping' stamp: ''!
stepTime
	^ 100! !

!MorphHalo methodsFor: 'stepping' stamp: ''!
wantsSteps
	^ true! !

!MorphHalo methodsFor: 'rotate' stamp: ''!
doRotate: evt with: handle
	"Mouse-move while dragging a rotate zone: advance the raw rotation by the incremental
	pointer-angle change, then set the target to the raw angle -- or, while Shift is held,
	to the raw angle snapped to the nearest 15 degrees. Shift is read from the move event
	(EventSensor mapButtons:modifiers: does not remap it, so the drag survives a Shift
	toggle). The centre is kept put."
	| center twoPi cur last frameDelta raw newCenter |
	evt hand obtainHalo: self.
	center := self valueOfProperty: #rotCenter.
	center ifNil: [^ self].
	twoPi := Float pi * 2.
	cur := (evt eventPosition - center) theta.
	last := self valueOfProperty: #rotLastAngle.
	frameDelta := cur - last.
	frameDelta := frameDelta - (((frameDelta / twoPi) rounded) * twoPi).
	raw := ((self valueOfProperty: #rotRaw) ifNil: [target rotation]) + frameDelta.
	self setProperty: #rotRaw toValue: raw.
	target rotation: (evt shiftPressed ifTrue: [raw roundTo: Float pi / 12] ifFalse: [raw]).
	newCenter := target externalizeToWorld: (target morphExtent / 2).
	target morphPosition: target morphPosition + (center - newCenter).
	self setProperty: #rotLastAngle toValue: cur.
	self layout! !

!MorphHalo methodsFor: 'rotate' stamp: ''!
startRotate: evt with: handle
	"Begin a rotate drag from a corner zone. Remember the world centre we rotate about, the
	pointer angle from it, and the starting raw (un-snapped) rotation. Rotation is applied
	incrementally in doRotate:with: so it tracks continuously past 180 degrees; the raw
	angle is kept separately so Shift-snapping is non-destructive (releasing Shift resumes
	from the continuous angle with no jump)."
	| center |
	evt hand obtainHalo: self.
	center := target externalizeToWorld: (target morphExtent / 2).
	self setProperty: #rotCenter toValue: center.
	self setProperty: #rotLastAngle toValue: (evt eventPosition - center) theta.
	self setProperty: #rotRaw toValue: target rotation! !

!MorphHalo methodsFor: 'controls' stamp: ''!
closeTarget
	"Red control: close the target (windows keep their save-prompt via closeBoxHit; other
	morphs just delete), then dismiss the halo."
	| t |
	t := target.
	self delete.
	t ifNotNil: [(t respondsTo: #closeBoxHit) ifTrue: [t closeBoxHit] ifFalse: [t delete]]! !

!MorphHalo methodsFor: 'controls' stamp: ''!
collapseTarget
	"Yellow control: minimize the target into the Dock (Morph collapse flies any dockable
	morph into the taskbar), then dismiss the halo."
	| t |
	t := target.
	self delete.
	t ifNotNil: [t collapse]! !

!MorphHalo methodsFor: 'controls' stamp: ''!
expandTarget
	"Green control: expand. For a window target, toggle full screen (SystemWindow>>fullScreen,
	animated); for other morphs there is no meaningful expand, so do nothing. Dismiss the halo
	first either way -- the target is about to change size drastically."
	| t |
	t := target.
	self delete.
	t ifNotNil: [(t respondsTo: #fullScreen) ifTrue: [t fullScreen]]! !

!MorphHalo methodsFor: 'controls' stamp: ''!
menu
	"Blue control: pop up the target context menu (the same menu as getMenu)."
	| menu |
	menu := self getMenu.
	menu ifNotNil: [menu popUpInWorld: self world]! !

!MorphHalo methodsFor: 'layout' stamp: ''!
addHandles
	"Pulled up from HaloMorph. Bridge from target: to our addHandles:; defers until the
	target has drawn bounds."
	self removeAllMorphs.
	target isInWorld ifTrue: [
		target displayBoundsForHalo
			ifNotNil: [ :r | self addHandles: r]
			ifNil: [
				self whenUIinSafeState: [
					target displayBoundsForHalo ifNotNil: [ :r | self addHandles: r]]]]! !

!MorphHalo methodsFor: 'layout' stamp: ''!
handlesBox
	"Padded bounds the grips occupy (local coords). Self-contained: halo padding is a
	Blueprint logical constant (16pt) instead of the stock #haloHandleSize preference.
	Overrides HaloMorph>>handlesBox."
	| minSide hs c e box |
	hs := 16 * DisplayScreen hostOSScaleFactor.
	minSide := 4 * hs.
	e := extent + (hs*2) max: minSide@minSide.
	c := extent // 2 + self morphPosition.
	box := Rectangle center: c extent: e.
	self world ifNotNil: [ :w | box := box intersect: (w viewBox insetBy: (hs@hs corner: hs@(hs*3))) ].
	^box translatedBy: self morphPosition negated! !

!MorphHalo methodsFor: 'lifecycle' stamp: ''!
delete
	"Pulled up from HaloMorph; also restore the cursor - a grip may have set a resize/rotate
	cursor and then been deleted before its mouseLeave: could fire."
	super delete.
	target ifNotNil: [ target redrawNeeded ].
	Cursor currentCursor: Cursor normalCursor! !

!MorphHalo methodsFor: 'lifecycle' stamp: ''!
deleteBalloon
	"Pulled up from HaloMorph."
	target deleteBalloon! !

!MorphHalo methodsFor: 'lifecycle' stamp: ''!
popUpFor: aMorph handPosition: handPosition hand: hand
	"Pulled up from HaloMorph (hierarchy collapse). Wire into hand + world, set target
	(triggers addHandles), record the grab offset."
	hand halo: self.
	hand world addMorphFront: self.
	self target: aMorph.
	positionOffset := handPosition - aMorph positionInWorld! !

!MorphHalo methodsFor: 'accessing' stamp: ''!
target
	^ target! !

!MorphHalo methodsFor: 'accessing' stamp: ''!
target: aMorph
	"Pulled up from HaloMorph."
	target := aMorph.
	target ifNotNil: [self addHandles]! !

!MorphHalo methodsFor: 'actions' stamp: ''!
collapse
	"A halo is a transient overlay on another morph, never a dock candidate; collapse is a no-op."! !

!MorphHalo methodsFor: 'testing' stamp: ''!
is: aSymbol
	"Behavioral tag so event dispatch recognizes a halo."
	^ aSymbol == #MorphHalo or: [super is: aSymbol]! !

!MorphHalo methodsFor: 'testing' stamp: ''!
isIncludedInTaskbar
	"Pulled up from HaloMorph: a halo is never a taskbar entry."
	^ false! !

!MorphHalo methodsFor: 'testing' stamp: ''!
wantsHalo
	"A halo never gets its own halo."
	^ false! !

!MorphHalo class methodsFor: 'cursors' stamp: ''!
rotateCursor
	"A 16x16 clockwise circular-arrow hardware cursor for the rotate zones,
	hotspot at the centre."
	^ (Cursor
		small1BitExtent: 16@16
		pixelBits: #(
			2r0000000000000000
			2r0000001111000000
			2r0000110000110000
			2r0001000000011000
			2r0010000000111100
			2r0010000000011000
			2r0100000000000100
			2r0100000000000100
			2r0100000000000100
			2r0010000000001000
			2r0010000000001000
			2r0001000000010000
			2r0000110000110000
			2r0000001111000000
			2r0000000000000000
			2r0000000000000000)
		offset: -8 @ -8) withMask! !

!MorphHaloScrubber methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Cap-centred text on a filled squircle capsule. Fill (#fill, default accent) and
	text colour (#ink, default white) are per-label: the dimensions / scale pills are
	white-on-accent; the morph-name pill is black on the window colour."
	| f txt bounds tx ty capH ink fill |
	f := self font.
	txt := self valueOfProperty: #txt ifAbsent: [''].
	bounds := self localBounds.
	fill := self valueOfProperty: #fill ifAbsent: [Theme current accentColor].
	ink := self valueOfProperty: #ink ifAbsent: [Color white].
	aCanvas fillColor: fill do: [
		aCanvas
			squircleMinX: bounds left maxX: bounds right
			minY: bounds top maxY: bounds bottom
			radius: bounds height / 2].
	capH := f pointSize.
	tx := bounds left + ((bounds width - (f widthOfString: txt)) / 2).
	ty := bounds top + ((bounds height + capH) / 2) - f ascent.
	aCanvas drawString: txt at: tx @ ty font: f color: ink! !

!MorphHaloScrubber methodsFor: 'drawing' stamp: ''!
font
	"Pill text: two steps below body on the type scale -- small, since scrubbers are
	dense meta-chrome, not content. Follows the zoom knob and family choice."
	^ Theme current fontAt: -2! !

!MorphHaloScrubber methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!MorphHaloScrubber methodsFor: 'accessing' stamp: ''!
text: aString
	"Set the displayed string and resize to fit it (text + padding)."
	self setProperty: #txt toValue: aString.
	self fitText.
	self redrawNeeded! !

!MorphHaloScrubber methodsFor: 'geometry' stamp: ''!
fitText
	"Size the pill to its text plus padding (padH 6 / padV 4 logical px)."
	| f txt s padH padV |
	txt := self valueOfProperty: #txt ifAbsent: [''].
	f := self font.
	s := DisplayScreen hostOSScaleFactor.
	padH := 6 * s.
	padV := 4 * s.
	self morphExtent: ((f widthOfString: txt) + (2 * padH)) @ (f lineSpacing + (2 * padV))! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
kindIsInteractive
	"Whether this pill's scrub is allowed for the current target: dims needs okayToResizeEasily, scale
	needs okayToScaleEasily, rotation needs okayToRotateEasily. When false the pill stays VISIBLE but goes inert."
	| halo t |
	halo := self owner.
	(halo isNil or: [(halo respondsTo: #target) not]) ifTrue: [^ false].
	t := halo target.
	t ifNil: [^ false].
	(self valueOfProperty: #labelKind) == #dims ifTrue: [^ t okayToResizeEasily].
	(self valueOfProperty: #labelKind) == #scale ifTrue: [^ t okayToScaleEasily].
	(self valueOfProperty: #labelKind) == #rotation ifTrue: [^ t okayToRotateEasily].
	^ false! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
mouseButton1Up: evt localPosition: localPos
	"End the scrub and do a final clean re-fit."
	self setProperty: #scrubbing toValue: false.
	self owner ifNotNil: [:h | (h respondsTo: #layout) ifTrue: [h layout]]! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
mouseLeave: evt
	"Restore the normal cursor when the pointer leaves a scrubbable pill."
	Cursor currentCursor: Cursor normalCursor! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
mouseMove: evt localPosition: localPos
	"Drive the scrub by the pointer world-x delta; Shift snaps to nice values. Then re-fit."
	| halo t dx kind snap |
	(self valueOfProperty: #scrubbing) == true ifFalse: [^ self].
	halo := self owner. halo ifNil: [^ self].
	t := halo target. t ifNil: [^ self].
	dx := evt eventPosition x - (self valueOfProperty: #scrubStartX).
	snap := evt shiftPressed.
	kind := self valueOfProperty: #labelKind.
	kind == #scale ifTrue: [self scrubScale: t by: dx snap: snap].
	kind == #rotation ifTrue: [self scrubRotation: t by: dx snap: snap].
	kind == #dims ifTrue: [self scrubDims: t by: dx snap: snap].
	halo layout! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
scrubDims: t by: dx snap: snap
	"Exponential aspect-locked resize (300 px doubles), about the centre; short side floored at 8 px."
	| ext w0 h0 factor newW newH s c0 c1 |
	(t respondsTo: #morphExtent:) ifFalse: [^ self].
	ext := self valueOfProperty: #scrubStartExtent.
	ext ifNil: [^ self].
	w0 := ext x. h0 := ext y.
	(w0 <= 0 or: [h0 <= 0]) ifTrue: [^ self].
	s := DisplayScreen hostOSScaleFactor.
	factor := 2 raisedTo: dx / (300 * self hostScale).
	((w0 min: h0) * factor) < (8 * self hostScale) ifTrue: [factor := 8.0 / (w0 min: h0)].
	newW := w0 * factor.
	newH := h0 * factor.
	snap ifTrue: [
		newW := (((newW / s) roundTo: 10) max: 10) * s.
		newH := newW * h0 / w0].
	c0 := t externalizeToWorld: (t morphExtent / 2).
	t morphExtent: newW @ newH.
	c1 := t externalizeToWorld: (t morphExtent / 2).
	t morphPosition: t morphPosition + (c0 - c1)! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
scrubRotation: t by: dx snap: snap
	"Linear rotation scrub (0.5 deg per px), about the centre. Shift snaps to 15 deg steps."
	| startRot newRot c0 c1 lc |
	(t respondsTo: #rotation:) ifFalse: [^ self].
	startRot := self valueOfProperty: #scrubStartRot.
	newRot := startRot + (dx * Float pi / (360 * self hostScale)).
	snap ifTrue: [newRot := newRot roundTo: Float pi / 12].
	lc := self valueOfProperty: #scrubCenterLocal.
	c0 := t externalizeToWorld: lc.
	t rotation: newRot.
	c1 := t externalizeToWorld: lc.
	t morphPosition: t morphPosition + (c0 - c1)! !

!MorphHaloScrubber methodsFor: 'scrub' stamp: ''!
scrubScale: t by: dx snap: snap
	"Exponential scale scrub (300 px doubles), about the centre. Shift snaps to 25% steps."
	| startScale newScale c0 c1 lc |
	(t respondsTo: #scale:) ifFalse: [^ self].
	startScale := self valueOfProperty: #scrubStartScale.
	newScale := ((startScale * (2 raisedTo: dx / (300 * self hostScale))) max: 0.05) min: 50.
	snap ifTrue: [newScale := (newScale roundTo: 0.25) max: 0.25].
	lc := self valueOfProperty: #scrubCenterLocal.
	c0 := t externalizeToWorld: lc.
	t scale: newScale.
	c1 := t externalizeToWorld: lc.
	t morphPosition: t morphPosition + (c0 - c1)! !

!MorphHaloScrubber methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	"The scale/rotation/dims pills are live scrubbers -- but only while the target actually supports that
	operation (see kindIsInteractive); otherwise the pill stays visible to read the value but is inert.
	The name pill is passive (it is a BlueprintHaloTitle, not a BlueprintHaloLabel)."
	^ self kindIsInteractive! !

!MorphHaloScrubber methodsFor: 'events' stamp: ''!
handlesMouseOver: anEvent
	"Only an interactive pill receives mouseEnter:/mouseLeave: for the scrub cursor."
	^ self kindIsInteractive! !

!MorphHaloScrubber methodsFor: 'events' stamp: ''!
mouseButton1Down: evt localPosition: localPos
	"Begin a scrub: remember the pointer world-x, the relevant start value (scale, rotation, or extent),
	and a robust LOCAL centre for the about-centre compensation -- morphExtent/2 when the morph has an
	extent, else the inverse-transform of its measured bounds centre. (Vector PlacedMorphs answer nil morphExtent.)"
	| halo t kind |
	halo := self owner.
	(halo isNil or: [(halo respondsTo: #target) not]) ifTrue: [^ self].
	t := halo target. t ifNil: [^ self].
	evt hand obtainHalo: halo.
	kind := self valueOfProperty: #labelKind.
	self setProperty: #scrubStartX toValue: evt eventPosition x.
	kind == #scale ifTrue: [self setProperty: #scrubStartScale toValue: t scale].
	kind == #rotation ifTrue: [self setProperty: #scrubStartRot toValue: ((t respondsTo: #rotation) ifTrue: [t rotation] ifFalse: [0])].
	kind == #dims ifTrue: [self setProperty: #scrubStartExtent toValue: t morphExtent].
	self setProperty: #scrubCenterLocal toValue: (t morphExtent
		ifNotNil: [:me | me / 2]
		ifNil: [t location inverseTransform: (t findFullBoundsInOwner center)]).
	self setProperty: #scrubbing toValue: true! !

!MorphHaloScrubber methodsFor: 'events' stamp: ''!
mouseEnter: evt
	"Interactive pills are horizontal-drag scrubs, so show the horizontal resize cursor. An inert pill
	(e.g. dims on a non-resizable morph) keeps the normal cursor."
	self kindIsInteractive
		ifTrue: [Cursor currentCursor: (Cursor resizeForEdge: #left)]! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
buttonGap
	"Gap between adjacent control buttons."
	^ self buttonSize * 0.45! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
buttonHPad
	"Extra horizontal inset for the button row beyond the vertical inset, so the first button
	looks concentric with the squircle left cap. Logical px (tuned by eye)."
	^ 2 * DisplayScreen hostOSScaleFactor! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
buttonInset
	"Inset of the button row from the pill edge. Equal to the vertical inset, so the first
	button is concentric with the pill rounded left cap (a capsule of radius height/2): its
	centre lands at (height/2, height/2), the cap centre."
	^ (self pillHeight - self buttonSize) / 2! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
buttonSize
	"Side of a control button: 12 logical px, fixed (not tied to the title font) so
	bumping the font does not balloon the buttons; slightly smaller than a window
	title-bar button (titleBarButtonsExtent, 16 logical)."
	^ 12 * DisplayScreen hostOSScaleFactor! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
buttonsWidth
	"Total width of the control-button row (n buttons + gaps), 0 if none."
	| n |
	n := (self valueOfProperty: #buttons ifAbsent: [#()]) size.
	n = 0 ifTrue: [^ 0].
	^ (n * self buttonSize) + ((n - 1) * self buttonGap)! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
edgeInset
	"Horizontal inset from the pill edge to the first button / from the text to the right edge:
	the vertical inset plus the squircle nudge."
	^ self buttonInset + self buttonHPad! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
font
	"Pill title text: one step below body -- prominent but subordinate to window titles
	(step 1). Follows the zoom knob and family choice."
	^ Theme current fontAt: -1! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
pillHeight
	"Pill height: the taller of the title line and a button, plus vertical padding."
	^ (self font lineSpacing max: self buttonSize) + (2 * 4 * DisplayScreen hostOSScaleFactor)! !

!MorphHaloTitle methodsFor: 'metrics' stamp: ''!
textLeft
	"Local x where the name text starts: horizontal edge inset + the button row + a gap."
	^ self edgeInset + self buttonsWidth + (6 * DisplayScreen hostOSScaleFactor)! !

!MorphHaloTitle methodsFor: 'building' stamp: ''!
button: iconSel action: actSel balloon: aString model: aHalo
	"Build one window-control button: a noButtonShape PluggableButtonMorph whose vector icon
	(drawCloseIcon, etc.) draws the colored circle + glyph, wired to send actSel to the halo."
	| b |
	b := PluggableButtonMorph model: aHalo action: actSel.
	b iconDrawSelector: iconSel; noButtonShape; setBalloonText: aString.
	self addMorph: b.
	^ b! !

!MorphHaloTitle methodsFor: 'building' stamp: ''!
halo: aHalo
	"Build the four window-control buttons (close, collapse, expand, menu) wired to the halo,
	reusing the system title-bar PluggableButtonMorph + vector-icon recipe at a smaller size.
	Called once right after creation, before the first layout."
	| btns |
	self setProperty: #halo toValue: aHalo.
	btns := OrderedCollection new.
	btns add: (self button: #drawCloseIcon action: #closeTarget balloon: 'close' model: aHalo).
	btns add: (self button: #drawCollapseIcon action: #collapseTarget balloon: 'collapse' model: aHalo).
	btns add: (self button: #drawExpandIcon action: #expandTarget balloon: 'expand' model: aHalo).
	btns add: (self button: #drawMenuIcon action: #menu balloon: 'window menu' model: aHalo).
	self setProperty: #buttons toValue: btns! !

!MorphHaloTitle methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Title pill recreating the window chrome: a squircle body fill (full-round: radius =
	half the height), then the same windowHighlight + windowHairline edge a window draws
	in postDrawOn:, then the name text after the button row. Controls draw as submorphs."
	| f txt bounds tx ty capH ink fill s r |
	f := self font.
	txt := self valueOfProperty: #txt ifAbsent: [''].
	bounds := self localBounds.
	s := self hostScale.
	r := bounds height / 2.
	fill := self valueOfProperty: #fill ifAbsent: [Theme current accentColor].
	ink := self valueOfProperty: #ink ifAbsent: [Color white].
	aCanvas fillColor: fill do: [aCanvas squircle: bounds radius: r].
	aCanvas chromeStrokes: bounds radius: r scale: s
		inner: Theme current windowHighlight outer: Theme current windowHairline.
	capH := f pointSize.
	tx := self textLeft.
	ty := bounds top + ((bounds height + capH) / 2) - f ascent.
	aCanvas drawString: txt at: tx @ ty font: f color: ink! !

!MorphHaloTitle methodsFor: 'drawing' stamp: ''!
fitText
	"Size the title pill to [buttons][gap][name text] plus the horizontal edge insets, and lay
	the buttons out left-packed. Buttons are vertically centred (buttonInset) and the row
	starts at edgeInset, so the first button is concentric with the pill rounded left cap."
	| f txt btn h x |
	f := self font.
	txt := self valueOfProperty: #txt ifAbsent: [''].
	btn := self buttonSize.
	h := self pillHeight.
	self morphExtent: (self textLeft + (f widthOfString: txt) + self edgeInset) @ h.
	x := self edgeInset.
	(self valueOfProperty: #buttons ifAbsent: [#()]) do: [:b |
		b morphExtent: btn @ btn.
		b morphPosition: x @ self buttonInset.
		x := x + btn + self buttonGap]! !

!MorphHaloTitle methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!MorphHaloTitle methodsFor: 'accessing' stamp: ''!
text: aString
	"Set the displayed name string and resize the pill to fit it (text + padding)."
	self setProperty: #txt toValue: aString.
	self fitText.
	self redrawNeeded! !

!SystemWindowResizeHalo methodsFor: 'config' stamp: ''!
cornerRadiusLogical
	"Outer corner radius in logical pixels; matches SystemWindow chrome."
	^ Theme current roundedWindowRadius! !

!SystemWindowResizeHalo methodsFor: 'config' stamp: ''!
cornerZoneLogical
	"Side-length of each corner-sector square (in logical px)."
	^ self cornerRadiusLogical! !

!SystemWindowResizeHalo methodsFor: 'config' stamp: ''!
ringThicknessLogical
	"Logical-pixel thickness of the hit-test ring."
	^ 6! !

!SystemWindowResizeHalo methodsFor: 'shape' stamp: ''!
inRoundedRect: p bounds: rect radius: r
	"Standard rounded-rect inside test. Approximates the squircle adequately for hit-testing."
	| x y cx cy |
	x := p x.
	y := p y.
	(rect containsPoint: p) ifFalse: [^ false].
	(x - rect left >= r and: [rect right - x >= r]) ifTrue: [^ true].
	(y - rect top >= r and: [rect bottom - y >= r]) ifTrue: [^ true].
	cx := (x - rect left < r) ifTrue: [rect left + r] ifFalse: [rect right - r].
	cy := (y - rect top < r) ifTrue: [rect top + r] ifFalse: [rect bottom - r].
	^ ((cx @ cy) dist: p) <= r! !

!SystemWindowResizeHalo methodsFor: 'hit-test' stamp: ''!
coversLocalPoint: aLocalPoint
	"Hollow-squircle hit-test: inside outer, outside inner."
	| s outer inner outerR innerR ring |
	self visible ifFalse: [^ false].
	s := DisplayScreen hostOSScaleFactor.
	outer := self localBounds.
	ring := self ringThicknessLogical * s.
	outerR := self cornerRadiusLogical * s.
	innerR := (outerR - ring) max: 0.
	inner := outer insetBy: ring.
	^ (self inRoundedRect: aLocalPoint bounds: outer radius: outerR)
		and: [(self inRoundedRect: aLocalPoint bounds: inner radius: innerR) not]! !

!SystemWindowResizeHalo methodsFor: 'hit-test' stamp: ''!
sectorAt: aLocalPoint
	"Return one of #(top bottom left right topLeft topRight bottomLeft bottomRight)."
	| s x y w h zone dT dB dL dR minD |
	s := DisplayScreen hostOSScaleFactor.
	zone := self cornerZoneLogical * s.
	w := self morphExtent x.
	h := self morphExtent y.
	x := aLocalPoint x.
	y := aLocalPoint y.
	(x < zone and: [y < zone]) ifTrue: [^ #topLeft].
	(x >= (w - zone) and: [y < zone]) ifTrue: [^ #topRight].
	(x < zone and: [y >= (h - zone)]) ifTrue: [^ #bottomLeft].
	(x >= (w - zone) and: [y >= (h - zone)]) ifTrue: [^ #bottomRight].
	dT := y. dB := h - y. dL := x. dR := w - x.
	minD := dT min: (dB min: (dL min: dR)).
	minD = dT ifTrue: [^ #top].
	minD = dB ifTrue: [^ #bottom].
	minD = dL ifTrue: [^ #left].
	^ #right! !

!SystemWindowResizeHalo methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Invisible: hit area is in coversLocalPoint:, not drawn."
	"(Tip: re-instate a translucent stroke here while debugging.)"! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
cursorForDragSelector
	"Map the drag's window-resize selector back to the right cursor."
	dragSelector ifNil: [^ Cursor defaultCursor].
	^ dragSelector caseOf: {
		[#windowTop:]            -> [Cursor resizeTopCursor].
		[#windowBottom:]         -> [Cursor resizeBottomCursor].
		[#windowLeft:]           -> [Cursor resizeLeftCursor].
		[#windowRight:]          -> [Cursor resizeRightCursor].
		[#windowTopLeft:]        -> [Cursor resizeTopLeftCursor].
		[#windowTopRight:]       -> [Cursor resizeTopRightCursor].
		[#windowBottomLeft:]     -> [Cursor resizeBottomLeftCursor].
		[#windowBottomRight:]    -> [Cursor resizeBottomRightCursor].
	}
	otherwise: [Cursor defaultCursor]! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
cursorForLocalPoint: aLocalPoint
	"Return the resize cursor matching the sector under the cursor."
	^ Cursor resizeForEdge: (self sectorAt: aLocalPoint)! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
edgePointInWorldFor: aSector
	"Return the owner window's relevant edge/corner point in world coords for the sector.
	For edge sectors only the relevant axis is used by the SystemWindow resize selector;
	the other coord is centred for sanity."
	| pos ext left top right bottom midX midY |
	owner ifNil: [^ nil].
	pos := owner morphPosition.
	ext := owner morphExtent.
	left := pos x.
	top := pos y.
	right := left + ext x.
	bottom := top + ext y.
	midX := (left + right) / 2.
	midY := (top + bottom) / 2.
	^ aSector caseOf: {
		[#top]          -> [midX @ top].
		[#bottom]       -> [midX @ bottom].
		[#left]         -> [left @ midY].
		[#right]        -> [right @ midY].
		[#topLeft]      -> [left @ top].
		[#topRight]     -> [right @ top].
		[#bottomLeft]   -> [left @ bottom].
		[#bottomRight]  -> [right @ bottom].
	}! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
endDrag
	"Release drag state and stop the per-frame poll."
	dragHand := nil.
	dragSelector := nil.
	dragOffset := nil.
	self stopStepping! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ true! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
handlesMouseOver: anEvent
	"We want mouseEnter / mouseLeave / mouseMove to fire so we can dispatch the
	right resize cursor by sector under the cursor."
	^ true! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: localPoint
	"Begin a drag-resize. Capture: hand, resize selector, AND the cursor-to-corner
	offset so the corner stays at the same relative position to the cursor during drag
	(instead of snapping the corner to where the cursor is, which causes the window
	to instantly jump on grab)."
	| sector cornerWorld cursorWorld |
	sector := self sectorAt: localPoint.
	dragSelector := self resizeSelectorFor: sector.
	dragHand := anEvent hand.
	cursorWorld := anEvent eventPosition.
	cornerWorld := self edgePointInWorldFor: sector.
	dragOffset := cornerWorld - cursorWorld.
	self startStepping.
	anEvent wasHandled: true! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
mouseEnter: anEvent
	"Set the initial cursor based on the position the mouse entered at."
	super mouseEnter: anEvent.
	anEvent mouseButton1Pressed ifFalse: [
		(self cursorForLocalPoint: (self internalizeFromWorld: anEvent eventPosition))
			activateCursor]! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
mouseLeave: anEvent
	"Restore default cursor when leaving the halo -- UNLESS we're in a drag,
	in which case the drag's resize cursor should stick."
	super mouseLeave: anEvent.
	dragHand ifNil: [
		Cursor defaultCursor activateCursor]! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
mouseMove: anEvent localPosition: localPoint
	"Update the cursor as the mouse moves within the halo (each sector has its own resize cursor)."
	anEvent mouseButton1Pressed ifFalse: [
		(self cursorForLocalPoint: localPoint) activateCursor]! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
resizeSelectorFor: aSector
	"Map an 8-sector hit to the SystemWindow window<Edge>: selector that does the resize."
	^ aSector caseOf: {
		[#top]            -> [#windowTop:].
		[#bottom]         -> [#windowBottom:].
		[#left]           -> [#windowLeft:].
		[#right]          -> [#windowRight:].
		[#topLeft]        -> [#windowTopLeft:].
		[#topRight]       -> [#windowTopRight:].
		[#bottomLeft]     -> [#windowBottomLeft:].
		[#bottomRight]    -> [#windowBottomRight:].
	}! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
step
	"Drag-resize tick: while button-1 is held, send the resize selector with
	(cursor + dragOffset) so the corner tracks the cursor without snapping.
	Also re-activate the drag cursor so it stays correct when the mouse leaves
	the halo bounds during a fast drag."
	| evt targetGlobal pointInParent |
	dragHand ifNil: [^ self].
	owner ifNil: [^ self endDrag].
	dragSelector ifNil: [^ self endDrag].
	evt := dragHand lastMouseEvent.
	evt anyButtonPressed ifFalse: [^ self endDrag].
	self cursorForDragSelector activateCursor.
	targetGlobal := evt eventPosition + dragOffset.
	pointInParent := owner owner
		ifNotNil: [:p | p internalizeFromWorld: targetGlobal]
		ifNil: [targetGlobal].
	owner perform: dragSelector with: pointInParent! !

!SystemWindowResizeHalo methodsFor: 'events' stamp: ''!
stepTime
	"Poll cadence during a drag-resize (ms)."
	^ 16! !

!AnalogClock methodsFor: 'initialization' stamp: ''!
initialize
	| s |
	super initialize.
	self color: Color transparent.
	s := DisplayScreen hostOSScaleFactor.
	self morphExtent: (100 * s) @ (100 * s).
	self addMorph: (ClockHands new morphExtent: self morphExtent; yourself)! !

!AnalogClock methodsFor: 'testing' stamp: ''!
requiresVectorCanvas ^ true! !

!AnalogClock methodsFor: 'stepping' stamp: ''!
wantsSteps "the face is static -- only the hands submorph animates" ^ false! !

!AnalogClock methodsFor: 'drawing' stamp: ''!
centerString: str at: pt font: f color: c on: aCanvas
	"Draw str centred (both axes) at pt. at: is the text top-left; ascent*0.65 vertically centres digits."
	| w |
	w := f widthOfString: str.
	aCanvas drawString: str at: (pt x - (w / 2.0)) @ (pt y - (f ascent * 0.65)) font: f color: c! !

!AnalogClock methodsFor: 'drawing' stamp: 'ML 3/Jul/2026 15:40:04'!
drawOn: aCanvas
	"Apple-style clock FACE: squircle body, minute/hour ticks, and the twelve numerals.
	The moving hands live in the ClockHands submorph."
	| b cx cy hw hh r cr inset hourLen face white gray dim orange numFont ps numInset cornerPull |
	b := self localBounds.
	cx := b center x.
	cy := b center y.
	hw := b width / 2.0.
	hh := b height / 2.0.
	r := hw min: hh.
	cr := r * 0.45.
	inset := r * 0.06.
	hourLen := r * 0.07.
	face := Color r: 0.03 g: 0.03 b: 0.04.
	white := Color r: 0.96 g: 0.96 b: 0.97.
	gray := Color r: 0.62 g: 0.62 b: 0.64.
	dim := Color r: 0.36 g: 0.36 b: 0.38.
	orange := Color r: 1.0 g: 0.58 b: 0.0.
	aCanvas fillColor: face do: [
		aCanvas squircleMinX: b left maxX: b right minY: b top maxY: b bottom radius: cr].
	aCanvas strokeWidth: (r * 0.012) color: white do: [
		aCanvas squircleMinX: b left + (r * 0.006) maxX: b right - (r * 0.006) minY: b top + (r * 0.006) maxY: b bottom - (r * 0.006) radius: ((cr - (r * 0.006)) max: 0)].
	0 to: 59 do: [:i | | ang dx dy dist isHr len tw oR iR |
		ang := i * 6 * Float pi / 180.0.
		dx := ang sin.
		dy := ang cos negated.
		dist := self edgeDistanceDx: dx dy: dy hw: hw hh: hh cr: cr.
		isHr := (i \\ 5) = 0.
		len := isHr ifTrue: [hourLen] ifFalse: [r * 0.035].
		tw := isHr ifTrue: [r * 0.016] ifFalse: [r * 0.009].
		oR := dist - inset.
		iR := oR - len.
		aCanvas strokeWidth: tw color: (isHr ifTrue: [gray] ifFalse: [dim]) do: [
			aCanvas moveTo: (cx + (oR * dx)) @ (cy + (oR * dy)); lineTo: (cx + (iR * dx)) @ (cy + (iR * dy))]].
	ps := r * 0.15.
	numFont := FontFamily familyName: 'DejaVu Sans' pointSize: ps.
	numInset := self tuneAt: #numInset default: 0.272.
	cornerPull := self tuneAt: #cornerPull default: 0.042.
	1 to: 12 do: [:h | | ang dx dy ed ni nr |
		ang := h * 30 * Float pi / 180.0.
		dx := ang sin.
		dy := ang cos negated.
		ed := self edgeDistanceDx: dx dy: dy hw: hw hh: hh cr: cr.
		ni := (h \\ 3) = 0 ifTrue: [numInset] ifFalse: [numInset + cornerPull].
		nr := ed - (r * ni).
		self centerString: h printString at: (cx + (nr * dx)) @ (cy + (nr * dy)) font: numFont color: white on: aCanvas].
	
	! !

!AnalogClock methodsFor: 'drawing' stamp: ''!
edgeDistanceDx: dx dy: dy hw: hw hh: hh cr: cr
	"Distance from centre to the rounded-rect outline (half-extents hw,hh, corner radius cr) along the
	UNIT direction (dx,dy). A flat-edge hit if it lands on the straight part, otherwise the corner arc."
	| tx ty ccx ccy bdot cdot disc |
	tx := dx = 0 ifTrue: [1.0e9] ifFalse: [hw / dx abs].
	ty := dy = 0 ifTrue: [1.0e9] ifFalse: [hh / dy abs].
	tx <= ty
		ifTrue: [(tx * dy) abs <= (hh - cr) ifTrue: [^ tx]]
		ifFalse: [(ty * dx) abs <= (hw - cr) ifTrue: [^ ty]].
	ccx := dx sign * (hw - cr).
	ccy := dy sign * (hh - cr).
	bdot := (dx * ccx) + (dy * ccy).
	cdot := (ccx * ccx) + (ccy * ccy) - (cr * cr).
	disc := (bdot * bdot) - cdot.
	disc < 0 ifTrue: [^ tx min: ty].
	^ bdot + disc sqrt! !

!AnalogClock methodsFor: 'geometry' stamp: ''!
morphExtent: anExtent
	"Locked square -- a clock is a circular face in a squircle; force both axes equal (larger drag wins)."
	| side |
	side := anExtent x max: anExtent y.
	super morphExtent: side @ side! !

!AnalogClock methodsFor: 'halo' stamp: ''!
okayToResizeEasily
	"Disable halo resize. The clock is drawn at one fixed base size; visual size comes from SCALING only.
	Because okayToScaleEasily is true for a vector morph, the halo's resize handle (HaloMorph>>
	addResizeHandle:) falls through to a SCALE handle. Scaling keeps the resolution-independent vector
	rendering pixel-identical at any size, which a per-size resize could not."
	^ false! !

!CellPreview methodsFor: 'initialization' stamp: ''!
initialize
	"No size yet; consumer calls previewSize: to make this visible. No click
	action by default. Transparent color so the squircle stroke is the only mark."
	super initialize.
	color := Color transparent.
	previewSize := nil.
	clickAction := nil.
	self morphExtent: (16 @ 16) * self hostScale! !

!CellPreview methodsFor: 'accessing' stamp: ''!
clickAction: aBlock
	"Zero-arg block fired when the preview is clicked (e.g. animate the slider
	to this preview's represented size)."
	clickAction := aBlock! !

!CellPreview methodsFor: 'accessing' stamp: ''!
previewSize: aLogicalPx
	"Side length in logical px. Morph extent is set to the same value
	(physical px = logical * hostOSScaleFactor, applied in drawOn:)."
	| s physical |
	previewSize := aLogicalPx.
	s := DisplayScreen hostOSScaleFactor.
	physical := aLogicalPx * s.
	self morphExtent: physical @ physical.
	self redrawNeeded! !

!CellPreview methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Stroke-only squircle filling the morph's bounds. Stroke color and corner
	radius match the catalog cell (Theme text alpha 0.25, 5/16 of side)."
	| s cornerR strokeC bounds |
	previewSize ifNil: [^ self].
	s := DisplayScreen hostOSScaleFactor.
	bounds := self localBounds.
	cornerR := bounds width * 5 / 16.
	strokeC := Theme current text alpha: 0.25.
	aCanvas strokeWidth: (1 * s) color: strokeC do: [
		aCanvas
			squircleMinX: bounds left
			maxX: bounds right
			minY: bounds top
			maxY: bounds bottom
			radius: cornerR]! !

!CellPreview methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!CellPreview methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ clickAction notNil! !

!CellPreview methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: localPos
	clickAction ifNotNil: [clickAction value]! !

!ClockHands methodsFor: 'drawing' stamp: ''!
drawHandOn: aCanvas angle: degClockwise length: len tail: tailLen width: w color: c center: ctr
	"A clock hand: thin black outline UNDER a coloured capsule so overlapping hands stay discernible.
	Each shape (line + the two rounded-cap circles) is its own path so they never merge. Every size is a
	pure fraction of w (no resolution-dependent floor) -> renders identically at any clock size."
	| ang dx dy tip tl rad ow extW erad |
	ang := degClockwise * Float pi / 180.0.
	dx := ang sin.
	dy := ang cos negated.
	tip := (ctr x + (len * dx)) @ (ctr y + (len * dy)).
	tl := (ctr x - (tailLen * dx)) @ (ctr y - (tailLen * dy)).
	rad := w / 2.0.
	ow := w * 0.18.
	extW := w + (ow * 2.0).
	erad := extW / 2.0.
	aCanvas strokeWidth: extW color: Color black do: [aCanvas moveTo: tl; lineTo: tip].
	aCanvas fillColor: Color black do: [aCanvas circleCenter: tip radius: erad].
	aCanvas fillColor: Color black do: [aCanvas circleCenter: tl radius: erad].
	aCanvas strokeWidth: w color: c do: [aCanvas moveTo: tl; lineTo: tip].
	aCanvas fillColor: c do: [aCanvas circleCenter: tip radius: rad].
	aCanvas fillColor: c do: [aCanvas circleCenter: tl radius: rad]! !

!ClockHands methodsFor: 'drawing' stamp: 'ML 3/Jul/2026 15:40:04'!
drawOn: aCanvas
	"The moving clock hands + centre cap (reads the live time). A submorph of AnalogClock (the static face);
	 a separate morph so the unchanging face and the moving hands are a clean, independent composition."
	| b cx cy hw hh r white orange now secf capR |
	b := self localBounds. cx := b center x. cy := b center y. hw := b width / 2.0. hh := b height / 2.0. r := hw min: hh.
	white := Color r: 0.96 g: 0.96 b: 0.97. orange := Color r: 1.0 g: 0.58 b: 0.0.
	now := DateAndTime now.
	secf := now second + (now nanoSecond / 1000000000.0).
	self drawHandOn: aCanvas angle: (((now hour \\ 12) + (now minute / 60.0)) * 30) length: r * 0.48 tail: r * 0.12 width: (r * 0.06) color: white center: cx@cy.
	self drawHandOn: aCanvas angle: ((now minute + (secf / 60.0)) * 6) length: r * 0.7 tail: r * 0.14 width: (r * 0.045) color: white center: cx@cy.
	self drawHandOn: aCanvas angle: (secf * 6) length: r * 0.78 tail: r * 0.2 width: (r * 0.014) color: orange center: cx@cy.
	capR := r * 0.045.
	aCanvas fillColor: Color black do: [aCanvas circleCenter: cx@cy radius: capR + (r * 0.007)].
	aCanvas fillColor: white do: [aCanvas circleCenter: cx@cy radius: capR].
	aCanvas fillColor: orange do: [aCanvas circleCenter: cx@cy radius: capR * 0.5]! !

!ClockHands methodsFor: 'stepping' stamp: ''!
step "redraw each frame; reads the live time" self redrawNeeded! !

!ClockHands methodsFor: 'stepping' stamp: ''!
stepTime ^ 33! !

!ClockHands methodsFor: 'stepping' stamp: ''!
wantsSteps ^ true! !

!ClockHands methodsFor: 'testing' stamp: ''!
requiresVectorCanvas ^ true! !

!ClockHands methodsFor: 'initialization' stamp: ''!
initialize super initialize. self color: Color transparent! !

!MenuTitleMorph methodsFor: 'geometry' stamp: ''!
minItemWidth
	^ self morphWidth! !

!MenuTitleMorph methodsFor: 'geometry' stamp: ''!
minimumExtent
	"The extent addTitle: computed from the label lines -- the menu layout must
	reserve all of it."
	^ self morphExtent! !

!MenuTitleMorph methodsFor: 'layout' stamp: ''!
extentChanged: oldExtent
	super extentChanged: oldExtent.
	self rightAlignButtons! !

!MenuTitleMorph methodsFor: 'layout' stamp: ''!
rightAlignButtons
	"Tuck any #rightAligned submorphs (the pin / close glyphs) against my right edge,
	rightmost first, vertically centered. Re-run whenever my extent changes -- the menu
	layout stretches me to the menu width after addTitle: sized me naturally."
	| s x |
	s := DisplayScreen hostOSScaleFactor.
	x := self morphWidth - (6 * s).
	(submorphs select: [:m | m hasProperty: #rightAligned]) do: [:b |
		x := x - b morphWidth.
		b morphPosition: x @ ((self morphHeight - b morphHeight) / 2).
		x := x - (6 * s)]! !

!SearchBar methodsFor: 'initialization' stamp: ''!
initialize
	"Translucent-white body so the bar reads as a subtle recessed field rather
	than a solid card; bevel chrome (perimeter stroke + focus accent) is drawn
	by drawOn:. Metric ivars are PHYSICAL px (logical * hostScale, computed once
	here). The symbols are sized a few points larger than the field text;
	layoutSubmorphs vertically centres the search glyph, the text and the clear
	disc in the frame (icons by their box, text by its cap band)."
	| iconPt s |
	super initialize.
	s := self hostScale.
	padding := 14 * s.
	gap := 6 * s.
	cornerRadius := 8 * s.
	color := Color transparent.
	bgColor := Color white alpha: 0.25.
	strokeColor := Theme current text alpha: 0.28.
	searchField := SearchField new
		initWithContents: '' font: FontFamily defaultFamilyAndPointSize emphasis: 0;
		yourself.
	searchField backgroundColor: Color transparent.
	searchField borderWidth: 0.
	iconPt := searchField fontToUse pointSize + 4.
	searchIcon := SymbolMorph new
		symbolName: #search;
		color: (Theme current text alpha: 0.85);
		pointSize: iconPt;
		yourself.
	clearButton := SymbolButton new
		symbolName: #x;
		color: Color white;
		pointSize: iconPt;
		yourself.
	clearButton
		setProperty: #discColor toValue: (Theme current text alpha: 0.4);
		setProperty: #glyphScale toValue: 0.5.
	clearButton clickAction: [self clear].
	clearButton visible: false.
	self addMorph: searchIcon.
	self addMorph: searchField.
	self addMorph: clearButton.
	searchField changedAction: [:s2 |
		clearButton visible: s2 notEmpty.
		clearButton redrawNeeded].
	self morphExtent: (300 @ 32) * s! !

!SearchBar methodsFor: 'geometry' stamp: ''!
extentChanged: oldExtent
	super extentChanged: oldExtent.
	self layoutSubmorphs
! !

!SearchBar methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Subtle translucent-white body + perimeter stroke. Stroke flips to theme
	accent and thickens when the search field has keyboard focus. The stroke is
	inset by half its width so it sits fully INSIDE the bar bounds -- otherwise
	the thicker focus stroke overflows the bounds and gets clipped to the bar's
	own damage rect during interactive (focus/typing) redraws, leaving the top
	and bottom runs visibly cut. cornerRadius is physical (see initialize)."
	| bounds s focused strokeC strokeW |
	s := self hostScale.
	bounds := self localBounds.
	focused := searchField notNil and: [searchField hasKeyboardFocus].
	strokeC := focused ifTrue: [Theme current accentColor] ifFalse: [strokeColor].
	strokeW := focused ifTrue: [1.5 * s] ifFalse: [0.5 * s].
	aCanvas fillColor: bgColor do: [
		aCanvas squircle: bounds radius: cornerRadius].
	aCanvas strokeWidth: strokeW color: strokeC do: [
		aCanvas squircle: bounds radius: cornerRadius inset: strokeW / 2]! !

!SearchBar methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true
! !

!SearchBar methodsFor: 'events' stamp: ''!
changedAction: aBlock
	"Forward external change-callback wiring to the inner SearchField, while
	preserving our own internal handler that toggles the clear button."
	searchField changedAction: [:s |
		clearButton visible: s notEmpty.
		clearButton redrawNeeded.
		self layoutSubmorphs.
		aBlock ifNotNil: [aBlock valueWithPossibleArgument: s]]
! !

!SearchBar methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	"Any click inside the bar's bounds focuses the search field — clicks
	on the searchField/clearButton are dispatched to them first; this only
	fires for clicks in the padding or on the (non-interactive) searchIcon."
	^ true! !

!SearchBar methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: localPos
	"Forward focus to the search field so clicks on the bar chrome (padding,
	search icon) feel as if the user clicked the input directly."
	searchField ifNotNil: [
		self world activeHand newKeyboardFocus: searchField]! !

!SearchBar methodsFor: 'accessing' stamp: ''!
clear
	"Empty the field, hide the clear button, fire the change action."
	| action |
	searchField contents: ''.
	clearButton visible: false.
	self layoutSubmorphs.
	searchField redrawNeeded.
	action := searchField instVarNamed: #changedAction.
	action ifNotNil: [action valueWithPossibleArgument: '']
! !

!SearchBar methodsFor: 'accessing' stamp: ''!
placeholder: aString
	searchField placeholder: aString
! !

!SearchBar methodsFor: 'layout' stamp: ''!
iconCenteredYFor: aHeight
	"Bounding-box centring: the y at which a morph of height aHeight sits
	vertically centred in self. Used for both icons (their glyph ink is
	box-centred); the field text is centred by its cap band in layoutSubmorphs.
	Rounded (not truncated) so the box centre lands on the frame centre."
	^ ((self morphExtent y - aHeight) / 2) rounded! !

!SearchBar methodsFor: 'layout' stamp: ''!
layoutSubmorphs
	"Vertically centre all three elements in the frame. The icons are centred by
	their box (their glyph ink is box-centred), and the field text by its
	cap-height band so the caps sit on the frame's vertical centre."
	| frameCenterY fieldLeft fieldRight f capCenterY |
	frameCenterY := self morphExtent y / 2.
	searchIcon morphPosition: padding @ (self iconCenteredYFor: searchIcon morphExtent y).
	clearButton morphPosition:
		(self morphExtent x - padding - clearButton morphExtent x)
			@ (self iconCenteredYFor: clearButton morphExtent y).
	fieldLeft := padding + searchIcon morphExtent x + gap.
	fieldRight := clearButton visible
		ifTrue: [self morphExtent x - padding - clearButton morphExtent x - gap]
		ifFalse: [self morphExtent x - padding].
	f := searchField fontToUse.
	capCenterY := searchField textOffset y + f ascent - (f pointSize / 2).
	searchField morphExtent: (fieldRight - fieldLeft) @ (f lineSpacing ceiling).
	searchField morphPosition: fieldLeft @ (frameCenterY - capCenterY)! !

!Slider methodsFor: 'initialization' stamp: ''!
initialize
	"Defaults: 0..1 range, midpoint, idle, no running animation. Default extent
	is 160@40 logical, scaled to the display."
	super initialize.
	color := Color transparent.
	minVal := 0.0.
	maxVal := 1.0.
	value := 0.5.
	dragging := false.
	animating := false.
	self morphExtent: (160 @ 40) * self hostScale! !

!Slider methodsFor: 'accessing' stamp: ''!
changedAction: aBlock
	"Block fired whenever value: produces a change. Receives self (the slider)
	as the argument when it is a one-arg block; zero-arg blocks also work."
	changedAction := aBlock! !

!Slider methodsFor: 'accessing' stamp: ''!
committedAction: aBlock
	"Block fired ONCE on mouseUp at the end of a drag. Complements
	changedAction (fires on every value change). Pattern: cheap visual
	update in changedAction, expensive layout/commit in committedAction —
	keeps the drag responsive without stalling the UI."
	committedAction := aBlock! !

!Slider methodsFor: 'accessing' stamp: ''!
min: aMin max: aMax
	"Set the slider's user-facing range. Reclamps the current value to fit."
	minVal := aMin asFloat.
	maxVal := aMax asFloat.
	value := (value max: minVal) min: maxVal.
	self redrawNeeded! !

!Slider methodsFor: 'accessing' stamp: ''!
value
	^ value! !

!Slider methodsFor: 'accessing' stamp: ''!
value: aNumber
	"Clamp to the user range. Fire changedAction only on a real change so
	identity-mapped updates from outside the slider do not feedback-loop."
	| newValue |
	newValue := (aNumber asFloat max: minVal) min: maxVal.
	value = newValue ifTrue: [^ self].
	value := newValue.
	self redrawNeeded.
	changedAction ifNotNil: [changedAction valueWithPossibleArgument: self]! !

!Slider methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ true! !

!Slider methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: localPos
	"Click anywhere on the slider jumps the value to that x and starts a drag.
	Cancels any running value animation so the drag wins immediately."
	animating := false.
	dragging := true.
	self setValueFromX: localPos x.
	self redrawNeeded! !

!Slider methodsFor: 'events' stamp: ''!
mouseButton1Up: anEvent localPosition: localPos
	"End the drag. Two side effects:
	 1. Redraw so the thumb reverts from accent to idle color.
	 2. Fire committedAction (if set) so the consumer can do expensive
	    one-shot work (e.g. relayout / scroll-pane reconfig) on the FINAL
	    value of the drag — while changedAction stays cheap during the drag."
	dragging := false.
	self redrawNeeded.
	committedAction ifNotNil: [
		committedAction valueWithPossibleArgument: self]! !

!Slider methodsFor: 'events' stamp: ''!
mouseMove: anEvent localPosition: localPos
	"Track the drag only while dragging is true (mouseMove also fires for
	hover transitions in some hosts — we explicitly gate on the down state)."
	dragging ifFalse: [^ self].
	self setValueFromX: localPos x! !

!Slider methodsFor: 'private' stamp: ''!
normalizedValue
	"value mapped into [0,1] across the min..max range (0 when the range is empty)."
	^ maxVal = minVal ifTrue: [0.0] ifFalse: [(value - minVal) / (maxVal - minVal)]! !

!Slider methodsFor: 'private' stamp: ''!
setValueFromX: x
	"Map a local x to a user value. Mirror drawOn:'s trackLeft/trackRight
	(thumbHalfW + 8-logical inset on each side) so the cursor never overshoots
	the visible track."
	| s thumbHalfW trackInset trackLeft trackRight usableW t newValue |
	s := DisplayScreen hostOSScaleFactor.
	thumbHalfW := 10 * s.
	trackInset := 8 * s.
	trackLeft := thumbHalfW + trackInset.
	trackRight := self morphExtent x - thumbHalfW - trackInset.
	usableW := (trackRight - trackLeft) max: 1.
	t := ((x - trackLeft) asFloat) / usableW.
	t := (t max: 0.0) min: 1.0.
	newValue := minVal + (t * (maxVal - minVal)).
	self value: newValue! !

!Slider methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Track + thumb. The track insets 8 dp from the slider edges so the thumb has
	visual headroom -- it never reaches the morph boundary. Thumb: 20x16 dp white
	squircle with a soft drop shadow and a hairline bevel stroke; the filled track
	segment left of it carries the accent."
	| s halfW halfH r half trackL trackR trackY cx thumb shadow text |
	s := self hostScale.
	halfW := 10 * s.
	halfH := 8 * s.
	r := 8 * s.
	half := 2 * s.
	trackL := halfW + (8 * s).
	trackR := self morphExtent x - halfW - (8 * s).
	trackY := (self morphExtent y / 2) asFloat.
	cx := trackL + (self normalizedValue * (trackR - trackL)).
	text := Theme current text.
	thumb := (cx - halfW) @ (trackY - halfH) corner: (cx + halfW) @ (trackY + halfH).
	shadow := (cx - halfW) @ (trackY - halfH + s) corner: (cx + halfW) @ (trackY + halfH + s).
	aCanvas fillColor: (text alpha: 0.12) do: [
		aCanvas squircle: (cx @ (trackY - half) corner: trackR @ (trackY + half)) radius: half].
	aCanvas fillColor: Theme current accentColor do: [
		aCanvas squircle: (trackL @ (trackY - half) corner: cx @ (trackY + half)) radius: half].
	aCanvas fillColor: (Color black alpha: 0.22) do: [aCanvas squircle: shadow radius: r].
	aCanvas fillColor: Color white do: [aCanvas squircle: thumb radius: r].
	aCanvas strokeWidth: 0.5 * s color: (text alpha: 0.28) do: [aCanvas squircle: thumb radius: r]! !

!Slider methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!Slider methodsFor: 'animation' stamp: ''!
animateValueTo: aNumber
	"Tween value to aNumber (clamped to the range) on the shared Animator: 300ms
	cubic-in-out. Each frame goes through value: (fires changedAction); when the
	tween lands, snap exactly to the target and fire committedAction once. A user
	grab mid-flight cancels it (mouseButton1Down: clears `animating`, and the
	guards here make the remaining frames no-ops)."
	| from to |
	from := value.
	to := (aNumber asFloat max: minVal) min: maxVal.
	animating := true.
	Animator default
		animate: self
		using: [:t | animating ifTrue: [self value: from + ((to - from) * t)]]
		duration: 300
		easing: #cubicInOut
		onDone: [
			animating ifTrue: [
				animating := false.
				self value: to.
				committedAction ifNotNil: [committedAction valueWithPossibleArgument: self]]]! !

!SymbolCatalog methodsFor: 'initialization' stamp: ''!
initialize
	"All pixel literals are logical (DPI-independent); multiplied by hostOSScaleFactor
	so the catalog renders at the same visual size on 1x / 2x / 3x displays."
	| s |
	super initialize.
	s := DisplayScreen hostOSScaleFactor.
	cellSize := 64 * s.
	symbolInset := 16 * s.
	labelGap := 8 * s.
	gap := 16 * s.
	padding := 8 * s.
	color := Color transparent.
	symbolColor := Theme current text.
	labelColor := Theme current text.
	borderColor := Theme current text alpha: 0.25.
	labelFont := FontFamily defaultFamilyAndPointSize.
	labelHeight := (labelFont lineSpacing * 2) ceiling + (4 * s).
	allNames := SymbolFont names asArray asSortedCollection asArray.
	names := allNames.
	filter := ''.
	self morphExtent: (1200 @ 400) * s! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
cellIndexAt: aPoint
	"Return 1-based cell index whose squircle rect contains the local point, or
	nil if the point is in the padding/gap/label gutter."
	| rowH r ncols rowStart rowEnd |
	aPoint y < padding ifTrue: [^ nil].
	rowH := cellSize + labelGap + labelHeight + gap.
	r := (aPoint y - padding) // rowH.
	ncols := self cols.
	rowStart := (r * ncols) + 1.
	rowStart > names size ifTrue: [^ nil].
	rowEnd := (rowStart + ncols - 1) min: names size.
	rowStart to: rowEnd do: [:i |
		((self cellRectAt: i) containsPoint: aPoint) ifTrue: [^ i]].
	^ nil! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
cellRectAt: i
	"Squircle rect for the i-th cell (1-based), in local coordinates. Layout is
	justified: leftmost cell flush at 'padding', rightmost ends at
	'morphExtent x - padding', with column spacing distributed evenly between.
	When only one column fits, that column is centered."
	| c r x y rowH ncols usable |
	ncols := self cols.
	usable := self morphExtent x - (2 * padding).
	rowH := cellSize + labelGap + labelHeight.
	r := (i - 1) // ncols.
	y := padding + (r * (rowH + gap)).
	ncols = 1
		ifTrue: [ x := (self morphExtent x - cellSize) // 2 ]
		ifFalse: [
			c := (i - 1) \\ ncols.
			x := padding + ((c * (usable - cellSize)) // (ncols - 1)) ].
	^ x @ y corner: (x + cellSize) @ (y + cellSize)! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
cellWithLabelRectAt: i
	"cellRectAt: i extended downward to include the two-line label below the
	squircle, so scrolling a selection into view also reveals what it is called."
	| r |
	r := self cellRectAt: i.
	^ r left @ r top corner: r right @ (r bottom + labelGap + labelHeight)! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
cols
	"Columns that fit in the current width."
	| usable |
	usable := self morphExtent x - (2 * padding).
	^ ((usable + gap) / (cellSize + gap)) truncated max: 1
! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
contentHeightForWidth: w
	"Height needed to lay out the current 'names' list at the given pixel width.
	Used by morphExtent: to derive our height, and by filter: to refresh after
	the visible set shrinks/grows."
	| usable numCols numRows rowH |
	usable := w - (2 * padding).
	numCols := ((usable + gap) / (cellSize + gap)) truncated max: 1.
	numRows := (names size + numCols - 1) // numCols.
	rowH := cellSize + labelGap + labelHeight.
	^ (2 * padding) + (numRows * rowH) + (((numRows - 1) max: 0) * gap)! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
glyphPointSize
	"Point size of the symbol glyph for the current cellSize: half the cell, so
	the glyph fills the middle (1/4 inset each side). Single source of truth used
	by both drawOn: (grid) and mouseMove: (drag-out), so a dragged-out symbol
	matches the size shown in the grid."
	^ (cellSize / 2) asInteger! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
morphExtent: aPoint
	"Honour the requested width (clamped to a minimum that fits one cell);
	height is always derived from the current names list via contentHeightForWidth:.
	The argument's y is intentionally ignored — the catalog is content-sized."
	| w |
	w := aPoint x asInteger max: ((2 * padding) + cellSize).
	super morphExtent: w @ (self contentHeightForWidth: w)! !

!SymbolCatalog methodsFor: 'geometry' stamp: ''!
rows
	^ (names size + self cols - 1) // self cols
! !

!SymbolCatalog methodsFor: 'private' stamp: ''!
revealCellAt: i
	"Scroll the enclosing PluggableScrollPane so cell i (and its label) is
	visible. Computes the offset against the CURRENT viewport range — the
	library PluggableScrollPane>>scrollToShow: compares against (0..viewableExtent)
	regardless of current scroll, which only works when the scroll happens to be
	at the top. We use scrollBy: (not scrollerOffset:) so the scrollbar thumb
	stays in sync."
	| sp rect viewportH currentOffsetY viewportTop viewportBottom |
	sp := self scrollPane.
	sp ifNil: [^ self].
	rect := self cellWithLabelRectAt: i.
	viewportH := sp viewableExtent y.
	currentOffsetY := sp scrollerOffset y.
	viewportTop := currentOffsetY.
	viewportBottom := currentOffsetY + viewportH.
	rect top < viewportTop ifTrue: [
		^ sp scrollBy: 0 @ (currentOffsetY - rect top)].
	rect bottom > viewportBottom ifTrue: [
		^ sp scrollBy: 0 @ (viewportBottom - rect bottom)]! !

!SymbolCatalog methodsFor: 'private' stamp: ''!
scrollPane
	"Enclosing PluggableScrollPane, or nil if the catalog is not inside one.
	Used to reset scroll on filter changes and to keep keyboard-navigated
	selection inside the viewport."
	| o |
	o := self owner.
	[o notNil and: [(o isKindOf: PluggableScrollPane) not]] whileTrue: [o := o owner].
	^ o! !

!SymbolCatalog methodsFor: 'private' stamp: ''!
truncate: aString toWidth: maxWidth font: aFont
	"Return aString, or aString trimmed with a 3-dot ellipsis if it doesn't fit."
	| ellipsis n s |
	(aFont widthOfString: aString) <= maxWidth ifTrue: [^ aString].
	ellipsis := '...'.
	n := aString size.
	[n > 0 and: [(aFont widthOfString: (s := (aString copyFrom: 1 to: n), ellipsis)) > maxWidth]]
		whileTrue: [n := n - 1].
	^ n = 0 ifTrue: [ellipsis] ifFalse: [s]
! !

!SymbolCatalog methodsFor: 'private' stamp: ''!
visibleIndexRangeOn: aCanvas
	"Return the Interval of cell indices whose row overlaps the canvas clipRect
	(plus a small overscan above/below). The clipRect is in display (targetForm)
	coordinates; map it back into our LOCAL content coordinates through the
	INVERSE of the current transformation so the row math inverts SCALE as well as
	translation. (A scaled AND scrolled
	view -- e.g. a Window Overview thumbnail -- needs both.) When the clip is
	nil (offscreen render / BoundsFinderCanvas) draw all indices."
	| clip rowH localClip firstRow lastRow overscan ncols nrows xform |
	clip := aCanvas clipRect.
	clip isNil ifTrue: [^ 1 to: names size].
	rowH := cellSize + labelGap + labelHeight + gap.
	xform := aCanvas currentTransformation.
	localClip := Rectangle encompassing: {
		xform internalizePosition: clip topLeft.
		xform internalizePosition: clip bottomRight }.
	ncols := self cols.
	nrows := self rows.
	overscan := 2.
	firstRow := ((((localClip top - padding) / rowH) floor) - overscan) max: 0.
	lastRow := ((((localClip bottom - padding) / rowH) ceiling) + overscan) min: (nrows - 1).
	firstRow > lastRow ifTrue: [^ 1 to: 0].
	^ ((firstRow * ncols) + 1) to: (((lastRow + 1) * ncols) min: names size)! !

!SymbolCatalog methodsFor: 'private' stamp: ''!
wrap: aString toWidth: maxWidth font: aFont maxLines: maxLines
	"Greedy word-wrap aString into at most maxLines lines fitting in maxWidth px.
	Break points are spaces, dots, hyphens, and underscores. SPACES at a line
	break are dropped; other break chars (- _ .) stay at the END of the line
	above so identifier-style names show their hyphens (typographic-style
	hyphenation). The final line is truncated with an ellipsis if remaining
	text doesn't fit."
	| lines remaining breaks start |
	(aFont widthOfString: aString) <= maxWidth ifTrue: [^ Array with: aString].
	breaks := '.-_ '.
	lines := OrderedCollection new.
	remaining := aString.
	[lines size < maxLines and: [remaining notEmpty]] whileTrue: [
		(lines size = (maxLines - 1))
			ifTrue: [
				lines add: (self truncate: remaining toWidth: maxWidth font: aFont).
				remaining := '']
			ifFalse: [
				| cut bestCut tryStr nextChar takesBreak lineText |
				cut := remaining size.
				bestCut := 0.
				1 to: cut do: [:i |
					tryStr := remaining copyFrom: 1 to: i.
					(aFont widthOfString: tryStr) <= maxWidth ifTrue: [
						(i = cut or: [breaks includes: (remaining at: i + 1)])
							ifTrue: [bestCut := i]]].
				bestCut = 0 ifTrue: [
					bestCut := 1.
					[bestCut <= cut and: [
						(aFont widthOfString: (remaining copyFrom: 1 to: bestCut)) <= maxWidth]]
						whileTrue: [bestCut := bestCut + 1].
					bestCut := (bestCut - 1) max: 1].
				nextChar := bestCut < cut ifTrue: [remaining at: bestCut + 1] ifFalse: [nil].
				takesBreak := nextChar notNil
					and: ['.-_' includes: nextChar]
					and: [(aFont widthOfString: (remaining copyFrom: 1 to: bestCut + 1)) <= maxWidth].
				lineText := takesBreak
					ifTrue: [remaining copyFrom: 1 to: bestCut + 1]
					ifFalse: [remaining copyFrom: 1 to: bestCut].
				lines add: lineText.
				remaining := remaining copyFrom: lineText size + 1 to: remaining size.
				start := 1.
				[start <= remaining size and: [(remaining at: start) = $ ]]
					whileTrue: [start := start + 1].
				remaining := remaining copyFrom: start to: remaining size]].
	^ lines asArray! !

!SymbolCatalog methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Virtualized: only draw cells whose row intersects the canvas clipRect.
	Per-cell: squircle frame (accent color, thicker stroke when selected;
	muted otherwise), centered symbol, two-line label.
	cornerRadius and symbol inset are PROPORTIONAL to cellSize so the cell
	keeps its visual shape across slider-driven size changes — 1/4 inset on
	each side (glyph fills half the cell, via #glyphPointSize), 5/16 corner
	radius. Both ratios preserve the original 64-px defaults (16 inset, 20
	radius) at cellSize=64. Stroke widths stay in logical px × hostOSScaleFactor."
	| symFont side glyphSize range s cornerR |
	super drawOn: aCanvas.
	s := DisplayScreen hostOSScaleFactor.
	glyphSize := self glyphPointSize.
	symFont := SymbolFont fontDescriptionPointSize: glyphSize.
	side := (symFont ascent + symFont descent) ceiling.
	cornerR := cellSize * 5 / 16.
	range := self visibleIndexRangeOn: aCanvas.
	range do: [:i | | rect ch t cx cy lines lineH frameColor frameWidth selected |
		rect := self cellRectAt: i.
		selected := selectedIndex notNil and: [selectedIndex = i].
		frameColor := selected ifTrue: [Theme current accentColor] ifFalse: [borderColor].
		frameWidth := selected ifTrue: [2 * s] ifFalse: [1 * s].
		aCanvas
			strokeWidth: frameWidth
			color: frameColor
			do: [
				aCanvas
					squircleMinX: rect left + s
					maxX: rect right - s
					minY: rect top + s
					maxY: rect bottom - s
					radius: cornerR].
		ch := SymbolFont at: (names at: i).
		t := UnicodeString empty copyWith: ch.
		cx := rect left + ((cellSize - side) / 2).
		cy := rect top + ((cellSize - side) / 2).
		aCanvas drawString: t at: cx @ cy font: symFont color: symbolColor.
		lines := self wrap: (names at: i) asString toWidth: cellSize font: labelFont maxLines: 2.
		lineH := labelFont lineSpacing.
		lines keysAndValuesDo: [:idx :ln | | lw lx ly |
			lw := labelFont widthOfString: ln.
			lx := rect left + ((cellSize - lw) / 2).
			ly := rect bottom + labelGap + ((idx - 1) * lineH).
			aCanvas drawString: ln at: lx @ ly font: labelFont color: labelColor]]! !

!SymbolCatalog methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true
! !

!SymbolCatalog methodsFor: 'accessing' stamp: ''!
cellSize: logicalPx
	"Set cell side length to logicalPx (logical/DPI-independent). Grows the
	scroller's clip bounds CHEAPLY so live drag is not clipped to the old
	content height:
	  privateExtent: sets the extent ivar directly; redrawNeeded invalidates the
	  cached bounds (#fullBoundsInOwner) and schedules a repaint.
	It deliberately SKIPS the owner cascade (someSubmorphPositionOrExtentChanged)
	that morphExtent: would fire — that full FillWidthScrollPane relayout, at
	mouseMove frequency, is what froze the UI. The scrollbar range stays stale
	during the drag and is settled once by #relayout on mouseUp."
	| s newCellSize w |
	s := DisplayScreen hostOSScaleFactor.
	newCellSize := ((logicalPx max: 32) * s) asInteger.
	cellSize = newCellSize ifTrue: [^ self].
	cellSize := newCellSize.
	w := self morphExtent x.
	self privateExtent: w @ (self contentHeightForWidth: w).
	self redrawNeeded! !

!SymbolCatalog methodsFor: 'accessing' stamp: ''!
filter
	^ filter
! !

!SymbolCatalog methodsFor: 'accessing' stamp: ''!
filter: aString
	"Narrow visible symbols to names containing aString (case-insensitive).
	Empty / nil filter restores the full list. Selection is cleared whenever
	the filter changes because the indexed cell almost certainly belongs to a
	different name afterward. Height is refreshed via morphExtent: — our
	override re-derives height from the new names list."
	| needle |
	filter := aString ifNil: [''].
	needle := filter asLowercase.
	names := needle isEmpty
		ifTrue: [allNames]
		ifFalse: [
			allNames select: [:n | n asString asLowercase includesSubString: needle]].
	selectedIndex := nil.
	self morphExtent: self morphExtent.
	self redrawNeeded.
	filterChangedAction ifNotNil: [
		filterChangedAction valueWithPossibleArgument: self]! !

!SymbolCatalog methodsFor: 'accessing' stamp: ''!
filterChangedAction: aBlock
	"Block fired after filter: changes the visible set. Argument is the
	catalog itself, so observers can query names/allNames sizes."
	filterChangedAction := aBlock
! !

!SymbolCatalog methodsFor: 'accessing' stamp: ''!
filteredCount
	"Number of symbols currently visible (after filtering)."
	^ names size
! !

!SymbolCatalog methodsFor: 'accessing' stamp: ''!
relayout
	"Recompute the catalog's morphExtent (height changes when cellSize
	changed via #cellSize:) and repaint. Triggers the scroll-pane cascade
	exactly once. Called by the toolbar slider's committedAction on mouseUp
	so the expensive layout fires at most once per drag gesture."
	self morphExtent: self morphExtent.
	self redrawNeeded! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
dragThreshold
	"Logical-pixel distance past which a mouseMove during a click escalates
	the click into a drag-out. 4 logical px is the conventional click-vs-drag
	boundary; multiplied by hostOSScaleFactor for DPI independence.
	(Cuis has no system-wide constant for this — mouseStillDownThreshold is a
	time threshold, not a distance.)"
	^ 4 * DisplayScreen hostOSScaleFactor! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
handlesKeyboardFocus
	"Yes — arrow keys navigate the selected cell."
	^ true! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	"Yes — used to start a drag-out of a fresh SymbolMorph for the clicked cell."
	^ true! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
keyStroke: anEvent
	"Arrow keys move the selected cell (clamped at edges; from no selection any
	arrow picks the first cell) and reveal it (with label) inside the enclosing
	PluggableScrollPane viewport via #revealCellAt:.
	BUBBLING: Morphic dispatches a keystroke from the focused morph UP the owner
	chain, stopping as soon as wasHandled is set. So:
	 - arrow keys: we act, then set wasHandled: true — this both prevents the
	   PluggableScrollPane ancestor from ALSO scrolling on the arrow (double
	   scroll) and stops re-delivery.
	 - any other key: we return without touching wasHandled, so it keeps
	   bubbling to ancestors that may want it."
	| delta newIdx |
	delta := 0.
	anEvent isArrowLeft  ifTrue: [delta := -1].
	anEvent isArrowRight ifTrue: [delta := 1].
	anEvent isArrowUp    ifTrue: [delta := self cols negated].
	anEvent isArrowDown  ifTrue: [delta := self cols].
	delta = 0 ifTrue: [^ self].
	selectedIndex isNil
		ifTrue: [selectedIndex := 1]
		ifFalse: [
			newIdx := ((selectedIndex + delta) max: 1) min: names size.
			newIdx = selectedIndex ifFalse: [selectedIndex := newIdx]].
	self revealCellAt: selectedIndex.
	self redrawNeeded.
	anEvent wasHandled: true! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: localPos
	"Select the cell under the cursor and remember the start position so a
	subsequent mouseMove past the drag threshold can spawn a SymbolMorph.
	Grab keyboard focus so arrow keys navigate. No morph is created on click
	alone."
	dragStart := localPos.
	dragCell := self cellIndexAt: localPos.
	selectedIndex := dragCell.
	self world activeHand newKeyboardFocus: self.
	self redrawNeeded! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
mouseButton1Up: anEvent localPosition: localPos
	"Clear the drag-tracking ivars; selection persists."
	dragStart := nil.
	dragCell := nil! !

!SymbolCatalog methodsFor: 'events' stamp: ''!
mouseMove: anEvent localPosition: localPos
	"If movement since mouseDown exceeds the drag threshold, create a fresh
	SymbolMorph for the originally-clicked cell and grab it under the hand.
	Its glyph point size is #glyphPointSize — the same size the grid draws — so
	the dragged-out symbol matches the cell. Once grabbed we clear the drag
	state so it does not refire."
	| dx dy threshold morph |
	(dragStart isNil or: [dragCell isNil]) ifTrue: [^ self].
	dx := localPos x - dragStart x.
	dy := localPos y - dragStart y.
	threshold := self dragThreshold.
	((dx * dx) + (dy * dy)) < (threshold * threshold) ifTrue: [^ self].
	morph := SymbolMorph new
		name: (names at: dragCell);
		color: symbolColor;
		pointSize: self glyphPointSize;
		yourself.
	dragStart := nil.
	dragCell := nil.
	self world activeHand grabMorph: morph moveUnderHand: true! !

!SymbolCatalog class methodsFor: 'instance creation' stamp: ''!
open
	"Layout:
	  - Outer column: no padding. Toolbar on top; the scroll fills the rest,
	    full-bleed to the window edges. The SystemWindow clips its content to the
	    rounded squircle, so the scroll's bottom corners round automatically and
	    no inset margin (old scrollWrap) is needed.
	  - Toolbar row: 16@16 padding (unified h/v); three equal-width cells, each
	    off-axis centered: LEFT size slider, MIDDLE count label, RIGHT search.
	Slider drives the catalog: changedAction during drag (cheap cellSize:
	update) + committedAction on mouseUp (one #relayout call)."
	| catalog scroll window column searchBar toolbarRow countLabel updateCount
	  countCell countSpacerL countSpacerR labelSpec sizeSlider sliderCell
	  smallPreview largePreview |
	catalog := self new.
	scroll := FillWidthScrollPane initializedInstance.
	scroll scroller: catalog.
	scroll color: Color transparent.
	scroll borderWidth: 0.
	scroll padding: 0 @ 0.
	searchBar := SearchBar new
		placeholder: 'Search';
		changedAction: [:s | catalog filter: s];
		yourself.
	countLabel := LabelMorph new
		contents: '0 symbols';
		color: (Theme current text alpha: 0.6);
		yourself.
	updateCount := [:c |
		countLabel contents: c filteredCount printString
			, (c filteredCount = 1 ifTrue: [' symbol'] ifFalse: [' symbols'])].
	catalog filterChangedAction: updateCount.
	updateCount value: catalog.
	countSpacerL := ColoredBoxMorph new color: Color transparent.
	countSpacerR := ColoredBoxMorph new color: Color transparent.
	labelSpec := LayoutSpec keepMorphExtent.
	labelSpec offAxisEdgeWeight: 0.5.
	countCell := LayoutMorph newRow
		color: Color transparent;
		addMorph: countSpacerL proportionalWidth: 1;
		addMorph: countLabel layoutSpec: labelSpec;
		addMorph: countSpacerR proportionalWidth: 1;
		yourself.
	smallPreview := CellPreview new previewSize: 16; yourself.
	largePreview := CellPreview new previewSize: 32; yourself.
	sizeSlider := Slider new
		min: 40 max: 128;
		value: 64;
		changedAction: [:s | catalog cellSize: s value];
		committedAction: [:s | catalog relayout];
		yourself.
	smallPreview clickAction: [sizeSlider animateValueTo: 40].
	largePreview clickAction: [sizeSlider animateValueTo: 128].
	sliderCell := LayoutMorph newRow
		color: Color transparent;
		separation: 4 * DisplayScreen hostOSScaleFactor;
		addMorph: smallPreview layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0.5);
		addMorph: sizeSlider layoutSpec: ((LayoutSpec proportionalWidth: 1) offAxisEdgeWeight: 0.5);
		addMorph: largePreview layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0.5);
		yourself.
	toolbarRow := LayoutMorph newRow
		color: Color transparent;
		padding: (16 @ 16) * DisplayScreen hostOSScaleFactor;
		addMorph: sliderCell layoutSpec: ((LayoutSpec proportionalWidth: 1) offAxisEdgeWeight: 0.5);
		addMorph: countCell layoutSpec: ((LayoutSpec proportionalWidth: 1) offAxisEdgeWeight: 0.5);
		addMorph: searchBar layoutSpec: ((LayoutSpec proportionalWidth: 1) offAxisEdgeWeight: 0.5);
		yourself.
	column := LayoutMorph newColumn
		color: Color transparent;
		padding: 0 @ 0;
		separation: 0;
		addMorph: toolbarRow fixedHeight: (56 + 16) * DisplayScreen hostOSScaleFactor "toolbar row (56) + vertical padding (16), logical";
		addMorph: scroll proportionalHeight: 1;
		yourself.
	window := SystemWindow new.
	window setLabel: 'Symbol Catalog'.
	window layoutMorph addMorph: column.
	window openInWorld.
	^ window! !

!SymbolCatalog class methodsFor: 'world menu' stamp: ''!
worldMenuOptions
	"Place 'Symbol Catalog' in the Open section of the World menu (collected by
	DynamicMenuBuilder via #worldMenuOptions). Opens via SymbolCatalog open."
	^ `{{
			#submenuOf 	-> 		TheWorldMenu openLabel.
			#itemGroup 	-> 		10.
			#itemOrder 	-> 		60.
			#label 			-> 		'Symbol Catalog'.
			#object 		-> 		SymbolCatalog.
			#selector 		-> 		#open.
			#icon 			-> 		#graphicsIcon.
			#balloonText 	-> 		'Browse the Tabler icon font as a searchable grid'.
		} asDictionary}`! !

!Dock methodsFor: 'initialization' stamp: ''!
initialize
	super initialize.
	orientation := #horizontal.
	duration := 500.
	edge := #bottom.
	resizeState := self resizeChart.
	edgeGlow := 0.
	self color: Color transparent "body is painted by drawOn: from Theme chromeBody"! !

!Dock methodsFor: 'constants' stamp: ''!
edgeMargin
	"Gap from the dock to its screen edge -- DERIVED as half the (visual) main-axis padding, so it stays
	proportional to the internal end-padding and scales with the dock."
	^ self mainPadding * self scale * 0.5! !

!Dock methodsFor: 'constants' stamp: ''!
phi
	^ 1.618! !

!Dock methodsFor: 'orientation' stamp: ''!
isLowEdge
	"Is the dock anchored at the low-coordinate side of its cross axis (#top or #left)?
	With isVertical this parametrizes every per-edge switch: an edge is an axis plus a sign."
	^ self edge == #top or: [self edge == #left]! !

!Dock methodsFor: 'orientation' stamp: ''!
isVertical
	^ self orientation == #vertical! !

!Dock methodsFor: 'orientation' stamp: ''!
orientation
	^ orientation ifNil: [#horizontal]! !

!Dock methodsFor: 'accessing' stamp: ''!
animDuration
	"The minimize/restore (and card add/remove) fly length in ms. Configurable. Each animation-owning class keeps its own knob -- cf. StageOverview>>animDuration
	and Dock>>switchDuration -- so there is no single global duration source."
	^ duration ifNil: [500]! !

!Dock methodsFor: 'accessing' stamp: ''!
animDuration: ms
	duration := ms! !

!Dock methodsFor: 'accessing' stamp: ''!
edge
	"Screen edge the dock is docked to: #top, #bottom, #left or #right (default #bottom)."
	^ edge ifNil: [#bottom]! !

!Dock methodsFor: 'geometry' stamp: ''!
center
	^ self morphPosition + (self morphExtent / 2)! !

!Dock methodsFor: 'geometry' stamp: ''!
lerpByScaleFrom: atMinScale to: atMaxScale
	"Clamped linear interpolation of a metric by the dock's current scale: atMinScale at minScale,
	atMaxScale at maxScale, clamped-lerped between. Lets padding/edgeMargin stay relatively roomy when
	the dock is small and sleek when it is large -- a single constant cannot, since the whole dock is
	then multiplied by self scale."
	| t |
	t := (self scale - self minScale) / (self maxScale - self minScale).
	t := (t max: 0) min: 1.
	^ atMinScale + ((atMaxScale - atMinScale) * t)! !

!Dock methodsFor: 'layout' stamp: ''!
cardFullExtent
	"The full (un-collapsing) extent of a card: the sizing rule fed the screen aspect, uncapped --
	a card is a miniature of the whole screen. Used as the layout fullMain so a card animating its
	width gets a proportional gap."
	^ self extentForAspect: Display extent x / Display extent y! !

!Dock methodsFor: 'layout' stamp: ''!
cardWidth
	"The width to request of a SpaceCard (the card enforces the screen aspect from the requested
	width, see SpaceCard>>morphExtent:). Always the x of the full card extent, in both orientations."
	^ self cardFullExtent x! !

!Dock methodsFor: 'layout' stamp: ''!
crossOf: aPoint
	"The component of aPoint ACROSS the dock (thickness axis)."
	^ self isVertical ifTrue: [aPoint x] ifFalse: [aPoint y]! !

!Dock methodsFor: 'layout' stamp: ''!
dockLayoutSequence
	"Layout order along the main axis: space cards first, then minimized tiles, each subsequence in
	submorph order. Cards append in space order (spaces only ever append, and syncCards walks them in
	order), so the row tracks the Stage -- and a card whose space was just culled stays in the row
	while removeCardAnimated: shrinks it, letting the neighbours close up smoothly instead of snapping."
	| cards tiles |
	cards := self submorphs select: [:m | m isKindOf: SpaceCard].
	tiles := self submorphs select: [:m | m isKindOf: DockTile].
	^ cards , tiles! !

!Dock methodsFor: 'layout' stamp: ''!
extentForAspect: aspect
	"THE dock sizing rule: an extent whose cross axis is fixed at crossDim and whose main axis
	tracks the given aspect ratio (width/height). Tiles and cards are both instances of this rule;
	tileExtentFor: adds the phi cap, cardFullExtent feeds in the screen aspect."
	| cross |
	cross := self crossDim.
	^ self main: (self isVertical ifTrue: [cross / aspect] ifFalse: [cross * aspect]) cross: cross! !

!Dock methodsFor: 'layout' stamp: ''!
main: m cross: c
	"Compose a Point from a main-axis and a cross-axis component, for the current orientation.
	Inverse of mainOf:/crossOf: -- the three fold every (vertical ifTrue: [a@b] ifFalse: [b@a])
	pair in the layout code into axis-free algebra."
	^ self isVertical ifTrue: [c @ m] ifFalse: [m @ c]! !

!Dock methodsFor: 'layout' stamp: ''!
mainOf: aPoint
	"The component of aPoint along the dock's MAIN (stacking) axis."
	^ self isVertical ifTrue: [aPoint y] ifFalse: [aPoint x]! !

!Dock methodsFor: 'layout' stamp: ''!
refit
	"Re-fit every dock item to its full extent for the current axis (each item knows how, see
	refitIn: on DockTile and SpaceCard), then re-anchor the dock. Used on orientation flip /
	geometry change."
	self submorphs do: [:m | m refitIn: self].
	self reflow! !

!Dock methodsFor: 'layout' stamp: ''!
reflow
	"Lay out the tiles, apply the effective scale, then anchor the dock flush against its current
	screen edge, centred along that edge. Effective scale = min(preferredScale, fitScale): an
	overfull dock shrinks to fit its edge and grows back toward the user's intent as items leave.
	Since the lerped metrics read the applied scale, one extra relayout pass follows a scale change
	-- a single fixed-point step; the metric drift is a few px, not worth iterating. Anchors by the
	VISUAL extent (morphExtent * scale) so a scaled-down dock still sits flush and centred."
	| world eff we de m mainPos crossPos |
	self relayout.
	world := self world.
	world ifNil: [^ self].
	eff := self preferredScale min: self fitScale.
	eff = self scale ifFalse: [
		self scale: eff.
		self relayout].
	we := world morphExtent.
	de := self morphExtent * self scale.
	m := self edgeMargin.
	mainPos := ((self mainOf: we) - (self mainOf: de)) / 2.
	crossPos := self isLowEdge ifTrue: [m] ifFalse: [(self crossOf: we) - (self crossOf: de) - m].
	self morphPosition: (self main: (mainPos max: 0) truncated cross: (crossPos max: 0) truncated)! !

!Dock methodsFor: 'layout' stamp: ''!
relayout
	"Lay out the items along the main axis, each centred on the cross axis (crossDim). Each item carries
	a half-gap (gap/2 * fill) on both sides; starting/ending the offset at mainPadding - gap/2 cancels the
	outer half-gaps so the main-axis ends settle at mainPadding and the cross edges at crossPadding. Sets
	the dock extent only; the caller re-anchors it (see reflow)."
	| mainPad crossExt offset |
	mainPad := self mainPadding.
	crossExt := self crossExtent.
	offset := mainPad - (self gap / 2).
	self dockLayoutSequence do: [:m | | ext fullMain mainSize fill half |
		ext := m morphExtent.
		fullMain := self mainOf: (m fullExtentIn: self).
		mainSize := self mainOf: ext.
		fill := fullMain = 0 ifTrue: [0] ifFalse: [mainSize / fullMain].
		half := self gap / 2 * fill.
		offset := offset + half.
		m morphPosition: (self main: offset cross: (crossExt - (self crossOf: ext)) / 2).
		offset := offset + mainSize + half].
	offset := offset + mainPad - (self gap / 2).
	self morphExtent: (self main: offset cross: crossExt)! !

!Dock methodsFor: 'layout' stamp: ''!
removedMorph: aMorph
	"Any dock item leaving -- a tile or card removed by a halo close, a deletion, whatever --
	must close the gap, so reflow unconditionally (the dock only ever holds DockTiles and
	SpaceCards; reflow no-ops without a world during teardown). Note the division of labour:
	DockTile>>removedMorph: handles a window deleted out of ITS tile and animates the tile's
	own collapse; this handles a whole item leaving the dock."
	super removedMorph: aMorph.
	self reflow! !

!Dock methodsFor: 'layout' stamp: ''!
tileExtentFor: aspect
	"extentForAspect: with the main axis clamped into [cross/phi, cross*phi]: a tile is never more
	elongated than the golden ratio in EITHER direction along the stacking axis. Windows outside
	that band are contained (letterboxed); the lower clamp keeps extreme portrait/landscape windows
	from collapsing into unclickable slivers."
	| e |
	e := self extentForAspect: aspect.
	^ self main: (((self mainOf: e) min: self crossDim * self phi) max: self crossDim / self phi) cross: self crossDim! !

!Dock methodsFor: 'action' stamp: ''!
minimize: aWindow
	"Fly aWindow into a new tile in this dock; the tile owns the whole flight (see
	DockTile>>minimize:into:). No-op if already docked."
	(self tileFor: aWindow) ifNotNil: [^ self].
	DockTile new minimize: aWindow into: self! !

!Dock methodsFor: 'events' stamp: ''!
collapse
	"Chrome: the dock itself does not collapse into a dock."
	^ self! !

!Dock methodsFor: 'events' stamp: ''!
handlesMouseDown: evt
	"Right-click (menu) always; left-click only when the resize affordance is showing, to begin a
	resize drag from the outer edge."
	^ evt mouseButton2Changed or: [evt mouseButton1Changed and: [resizeState is: #ready]]! !

!Dock methodsFor: 'events' stamp: ''!
handlesMouseHover
	^ true! !

!Dock methodsFor: 'events' stamp: ''!
handlesMouseOver: evt
	^ true! !

!Dock methodsFor: 'events' stamp: ''!
mouseButton1Down: evt localPosition: p
	"Begin a resize drag: capture the hand and start stepping. step polls the hand, so the drag does
	not depend on mouseMove: delivery (the hand drives drag-resize via stepping, as in
	LayoutAdjustingMorph). #grab only exists on #ready, so a click without the affordance is inert."
	(resizeState fire: #grab) ifFalse: [^ self].
	dragHand := evt hand.
	self startStepping! !

!Dock methodsFor: 'events' stamp: ''!
mouseButton1Up: evt localPosition: p
	"Backup end-of-drag (step also detects release by polling the hand button). endResize is inert
	unless resizing -- #release only exists on #resizing."
	self endResize! !

!Dock methodsFor: 'events' stamp: ''!
mouseHover: evt localPosition: p
	"Track the pointer over the dock (button up). Entering the outer-edge band arms the 100ms timer;
	drifting off the band disarms. Both hover events live only on the chart's hover states, so this
	is inert while resizing (no #enterEdge/#leaveEdge from #resizing -- the missing edges ARE the
	guards) and #leaveEdge from #idle is a no-op."
	(self isOnOuterEdge: p)
		ifTrue: [(resizeState fire: #enterEdge) ifTrue: [
			self world addAlarm: #armResize withArguments: #() for: self at: Time localMillisecondClock + 100]]
		ifFalse: [resizeState fire: #leaveEdge]! !

!Dock methodsFor: 'events' stamp: ''!
mouseLeave: evt
	"Clear the affordance on a genuine button-up leave; never during a resize drag (#leaveEdge has
	no edge from #resizing)."
	evt anyButtonPressed ifFalse: [resizeState fire: #leaveEdge]! !

!Dock methodsFor: 'events' stamp: ''!
wasDeleted: aMorph
	"Taskbar protocol: the World announces every submorph removal here -- both genuine deletes and mere
	reparents (hand grabs, stows into cards, minimize flights into tiles). The Morph contract tells them
	apart: removeMorph: (the delete path) nils the owner BEFORE announcing removedMorph:, while the
	reparent path (privateAddMorph:atIndex:position:) announces to the old owner while the morph still
	points at it. Ownerless = genuinely closed; owned = just moving. A docked window is not a world
	submorph (it lives in its tile); its deletion is caught tile-side by DockTile>>removedMorph:. The
	dock's stage listener routes #forgotten to the overview when it is open."
	(aMorph isManagedDesktopMorph and: [aMorph owner isNil])
		ifTrue: [Stage default forget: aMorph]! !

!Dock methodsFor: 'events' stamp: ''!
wasOpened: aMorph
	"Taskbar protocol: the World sends this when a morph is added. Route into the Stage: manage: is
	idempotent (a restore re-add or a hand drop-back is a no-op there) and reconciles spaces; the
	dock's stage listener routes #managed to the overview when it is open."
	aMorph isManagedDesktopMorph ifTrue: [Stage default manage: aMorph]! !

!Dock methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Squircle glass body: Theme chromeBody at a lighter alpha (0.72) than menus -- the
	dock floats over the wallpaper and should read as glass, not card. The corner radius
	is geometry and scales with the dock. Edge strokes live in postDrawOn: so tiles and
	cards can never occlude them."
	| r bounds |
	r := (2 * self crossPadding) min: (self crossExtent / 2).
	bounds := self localBounds.
	aCanvas fillColor: (Theme current chromeBody alpha: 0.72) do: [
		aCanvas squircle: bounds radius: r]! !

!Dock methodsFor: 'drawing' stamp: ''!
postDrawOn: aCanvas
	"Chrome edge on top of the tiles: inner highlight + outer hairline, the same stroke
	widths the windows use. The inner highlight brightens with edgeGlow (0..1, animated
	on resize hover): alpha runs from the resting chromeHighlight (0.16) up to 0.60 when
	fully glowing. Stroke widths and insets are scale-invariant (divided by self scale)
	so the frame keeps a constant on-screen width at any dock scale. Answer true."
	| sv r glow inner |
	sv := self hostScale / self scale.
	r := (2 * self crossPadding) min: (self crossExtent / 2).
	glow := edgeGlow ifNil: [0].
	inner := Theme current chromeHighlight.
	inner := inner alpha: inner alpha + (glow * 0.44).
	aCanvas chromeStrokes: self localBounds radius: r scale: sv
		inner: inner outer: Theme current chromeHairline.
	^ true! !

!Dock methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!Dock methodsFor: 'menu' stamp: ''!
checkIcon
	"A vector check SymbolMorph marking the dock's current edge in the Position
	menu (no bitmap). Sized to match the submenu chevron (13 logical px)."
	| s m |
	s := DisplayScreen hostOSScaleFactor.
	m := SymbolMorph new.
	m symbolName: #check.
	m pointSize: (Theme current fontAt: 0) pointSize.
	m morphExtent: (13 * s) @ (13 * s).
	^ m! !

!Dock methodsFor: 'menu' stamp: ''!
getMenu
	"Right-click contextual menu: snap the dock to a screen edge, table-driven. A check marks
	the dock's current edge; the icon slot is reserved on every item so labels stay aligned."
	| menu sub |
	menu := MenuMorph new.
	sub := MenuMorph new.
	{'Top' -> #top. 'Bottom' -> #bottom. 'Left' -> #left. 'Right' -> #right} do: [:a |
		sub add: a key target: self action: #positionAtEdge: argument: a value
			icon: (self edge == a value ifTrue: [self checkIcon])].
	menu add: 'Position' subMenu: sub.
	^ menu! !

!Dock methodsFor: 'taskbar' stamp: ''!
refreshTaskbarFor: aMorph
	"Taskbar protocol hook -- the world's taskbar is this Dock, so MenuMorph>>stayUp:
	sends this when a menu is made to stay up (e.g. when you halo a menu item).
	The old TaskbarMorph kept a button per stay-up morph; the Dock only represents
	minimized windows as tiles, so stay-up menus / halos are not tracked here.
	Ignore them so the halo and stay-up box work without a dock representation."
	^ self! !

!Dock methodsFor: 'taskbar' stamp: ''!
screenSizeChanged
	"Taskbar protocol: the World sends this on display/extent change (including a host-OS scale
	change, e.g. moving the image between a 2x and a 1x display). REFIT -- not just reflow -- so the
	tiles/cards are resized to the new scale (reflow only repositions; it reads each item's current
	extent and never resizes it, so a dock saved on a 2x display rendered with stale oversized tiles
	when resumed on a 1x display). refit resizes every item and re-anchors."
	self refit! !

!Dock methodsFor: 'metrics' stamp: ''!
crossDim
	"Logical 50px (the nice base size at scale 1), scaled to physical px for the current display."
	^ 50 * DisplayScreen hostOSScaleFactor! !

!Dock methodsFor: 'metrics' stamp: ''!
crossExtent
	"Unscaled cross-axis (thickness) extent of the dock: crossDim plus crossPadding both sides."
	^ self crossDim + (2 * self crossPadding)! !

!Dock methodsFor: 'metrics' stamp: ''!
crossPadding
	"Inset on the CROSS (thickness) axis -- space on each side of the tiles across the dock."
	^ self lerpTune: #crossPaddingSmall default: 16 to: #crossPaddingLarge default: 10! !

!Dock methodsFor: 'metrics' stamp: ''!
fitScale
	"The largest applied scale at which the dock (at its CURRENT unscaled extent, so call after
	relayout) fits along its screen edge, keeping edgeMargin of breathing room at both ends."
	| world avail |
	world := self world.
	world ifNil: [^ self maxScale].
	avail := (self mainOf: world morphExtent) - (2 * self edgeMargin).
	^ avail / (self mainOf: self morphExtent)! !

!Dock methodsFor: 'metrics' stamp: ''!
gap
	"Space between adjacent tiles."
	^ self lerpTune: #gapSmall default: 12 to: #gapLarge default: 8! !

!Dock methodsFor: 'metrics' stamp: ''!
lerpTune: smallKey default: a to: largeKey default: b
	"A scale-lerped, tunable metric (roomy when the dock is small, sleek when large), logical px ->
	physical. The shared shape of gap / crossPadding / mainPadding."
	^ (self lerpByScaleFrom: (self tuneAt: smallKey default: a) to: (self tuneAt: largeKey default: b))
		* DisplayScreen hostOSScaleFactor! !

!Dock methodsFor: 'metrics' stamp: ''!
mainPadding
	"Inset at the START and END of the MAIN (layout) axis -- space before the first tile and after the last."
	^ self lerpTune: #mainPaddingSmall default: 24 to: #mainPaddingLarge default: 16! !

!Dock methodsFor: 'metrics' stamp: ''!
preferredScale
	"The scale the user asked for via edge-drag -- the INTENT. The applied (location) scale is
	min(preferredScale, fitScale), so an overfull dock shrinks below intent and grows back as tiles
	leave (see reflow)."
	^ preferredScale ifNil: [self scale]! !

!Dock methodsFor: 'metrics' stamp: ''!
preferredScale: aNumber
	preferredScale := aNumber! !

!Dock methodsFor: 'resize' stamp: ''!
armResize
	"Alarm callback ~100ms after the pointer settled on the outer edge: show the resize affordance --
	the matching resize cursor and a brightened inner stroke. Inert unless still #armed (a hover-off
	already fired #leaveEdge and this alarm lost its race)."
	(resizeState fire: #arm) ifFalse: [^ self].
	Cursor currentCursor: (Cursor resizeForEdge: self outerEdge).
	self glowTo: 1.0! !

!Dock methodsFor: 'resize' stamp: ''!
clearAffordance
	"Entry action for the chart's #idle (see resizeChart): cancel any pending arm alarm, restore the
	cursor, fade the glow. Runs on every transition INTO #idle -- #leaveEdge and #release alike -- so
	the teardown lives in one place."
	self world ifNotNil: [:w | w removeAlarm: #armResize for: self].
	Cursor currentCursor: Cursor normalCursor.
	self glowTo: 0.0! !

!Dock methodsFor: 'resize' stamp: ''!
endResize
	"Stop the resize drag: #release returns the chart to #idle (whose entry action clears the
	affordance); tear down the stepping and the hand capture. Inert unless resizing."
	(resizeState fire: #release) ifFalse: [^ self].
	self stopStepping.
	dragHand := nil! !

!Dock methodsFor: 'resize' stamp: ''!
glowTo: target
	"Smoothly tween the inner-stroke brightness (edgeGlow 0..1) to target via the Animator. No-op if
	already there."
	| from |
	from := edgeGlow ifNil: [0].
	from = target ifTrue: [^ self].
	Animator default animate: self using: [:t |
		edgeGlow := from + ((target - from) * t).
		self redrawNeeded] duration: 150 easing: #cubicOut onDone: [
		edgeGlow := target.
		self redrawNeeded]! !

!Dock methodsFor: 'resize' stamp: ''!
isOnOuterEdge: p
	"Is local point p within the grab band (one crossPadding deep) along the current outer edge?
	The outer edge is the side away from the anchored screen edge: high local cross-coordinate for
	a low-anchored dock, and vice versa."
	| band c |
	band := self crossPadding.
	c := self crossOf: p.
	^ self isLowEdge
		ifTrue: [c >= ((self crossOf: self morphExtent) - band)]
		ifFalse: [c <= band]! !

!Dock methodsFor: 'resize' stamp: ''!
maxScale
	^ 2.0! !

!Dock methodsFor: 'resize' stamp: ''!
minScale
	^ 0.4! !

!Dock methodsFor: 'resize' stamp: ''!
outerEdge
	"The screen edge opposite the docked edge -- the grabbable outer edge for resizing."
	^ self isVertical
		ifTrue: [self isLowEdge ifTrue: [#right] ifFalse: [#left]]
		ifFalse: [self isLowEdge ifTrue: [#bottom] ifFalse: [#top]]! !

!Dock methodsFor: 'resize' stamp: ''!
resizeChart
	"The outer-edge resize affordance as a flat chart: hovering onto the band arms a 100ms timer, the
	timer shows the affordance (#ready: resize cursor + glow), a grab drags, release returns to #idle.
	Missing edges ARE the guards -- hover events are inert while #resizing, the arm alarm is inert after
	a #leaveEdge won its race. Entering #idle tears the affordance down (clearAffordance), no matter
	which event brought the chart there."
	| chart |
	chart := StateMachine initial: #idle states: {
		#idle -> { #enterEdge -> #armed }.
		#armed -> { #arm -> #ready. #leaveEdge -> #idle }.
		#ready -> { #grab -> #resizing. #leaveEdge -> #idle }.
		#resizing -> { #release -> #idle } }.
	chart onTransition: [:c | (c is: #idle) ifTrue: [self clearAffordance]].
	^ chart! !

!Dock methodsFor: 'resize' stamp: ''!
scaleForOuterEdgeAt: aWorldPoint
	"Scale that puts the outer edge under aWorldPoint: visual thickness from the anchored edge to the
	cursor, over the unscaled cross extent. Caller clamps to [minScale, maxScale]."
	| m c thickness |
	m := self edgeMargin.
	c := self crossOf: aWorldPoint.
	thickness := self isLowEdge
		ifTrue: [c - m]
		ifFalse: [(self crossOf: self world morphExtent) - m - c].
	^ thickness / self crossExtent! !

!Dock methodsFor: 'resize' stamp: ''!
step
	"While resizing, pin the outer edge under the cursor (read from the hand last mouse event): its
	position sets the preferred scale (clamped); reflow applies the effective scale, so dragging
	larger than fits records the intent without overflowing. A button-up there ends the drag."
	| evt |
	(resizeState is: #resizing) ifFalse: [^ self].
	dragHand isNil ifTrue: [^ self endResize].
	evt := dragHand lastMouseEvent.
	evt isNil ifTrue: [^ self endResize].
	evt anyButtonPressed
		ifTrue: [
			self preferredScale: (((self scaleForOuterEdgeAt: evt eventPosition) max: self minScale) min: self maxScale).
			self reflow.
			self redrawNeeded]
		ifFalse: [self endResize]! !

!Dock methodsFor: 'resize' stamp: ''!
stepTime
	^ 16! !

!Dock methodsFor: 'stage choreography' stamp: ''!
addCard: aCard
	"Add a window-group card as a dock item and animate it growing from nothing."
	aCard morphExtent: 0 @ 0.
	self addMorphBack: aCard.
	self reflow.
	self animateCardWidth: aCard from: 0 to: self cardWidth onDone: []! !

!Dock methodsFor: 'stage choreography' stamp: ''!
animateCardWidth: aCard from: a to: b onDone: aBlock
	"Tween aCard requested width from a to b, reflowing each frame so the neighbours slide smoothly,
	then run aBlock and re-anchor. The grow and shrink choreographies are both this tween."
	Animator default
		animateMorph: aCard
		using: [:t | aCard morphExtent: (a + ((b - a) * t)) @ 0. self reflow]
		duration: self animDuration
		onDone: [aCard morphExtent: b @ 0. aBlock value. self reflow]! !

!Dock methodsFor: 'stage choreography' stamp: ''!
cardAtWorldPoint: aWorldPoint
	"The SpaceCard whose on-screen area covers aWorldPoint -- the drop target while a window is dragged
	between cards. Cards are unlocked chrome, so displayFullBounds (world pixel bounds) is reliable. nil
	if the point is off every card."
	^ self submorphs
		detect: [:m | (m isKindOf: SpaceCard) and: [(m displayFullBounds notNil) and: [m displayFullBounds containsPoint: aWorldPoint]]]
		ifNone: [nil]! !

!Dock methodsFor: 'stage choreography' stamp: ''!
cardFor: aSpace
	"The card rendering aSpace, or nil."
	^ self submorphs detect: [:m | (m isKindOf: SpaceCard) and: [m space == aSpace]] ifNone: [nil]! !

!Dock methodsFor: 'stage choreography' stamp: 'ML 3/Jul/2026 14:41:44'!
connectStage
	"Register this dock as the Stage's view: switches fly through performSwitch:, space
	changes reshape the cards, #settled repaints every card so the accent frame lands on
	the newly-shown space only. Subscribed under the #dock key, so a recreated dock
	REPLACES its predecessor's subscription (no property guard needed -- keyed
	subscription is idempotent by construction). Also reserves the dock's screen-edge
	strip and wires up the overview alongside."
	Stage default reserve: self.
	StageOverview default connectStage.
	Stage default onChange: [:evt :arg |
		evt == #switch ifTrue: [self performSwitch: arg].
		evt == #spaces ifTrue: [self syncCards].
		evt == #settled ifTrue: [
			self submorphs do: [:m | (m isKindOf: SpaceCard) ifTrue: [m redrawNeeded]]]]
		for: #dock! !

!Dock methodsFor: 'stage choreography' stamp: ''!
performSwitch: aSpace
	"Make the desktop catch up with the Stage (#switch arrived: `active` is already aSpace, `shown` still
	the old space): first repaint every card so the accent frame jumps to the new space AT ONCE (it tracks
	Stage active via SpaceCard>>showsActiveFrame), decoupled from the window fly. Then stow the shown
	space's windows into its card and release aSpace's windows from its card, the release starting
	switchOverlapFraction before the stow finishes so the halves overlap. The release reports switchSettled
	to the Stage when its fly lands (instantly when there is nothing to release). If nothing stows, release
	at once."
	| stage oldCard newCard delay |
	stage := Stage default.
	self submorphs do: [:m | (m isKindOf: SpaceCard) ifTrue: [m redrawNeeded]].
	oldCard := self cardFor: stage shown.
	newCard := self cardFor: aSpace.
	newCard ifNil: [stage switchSettled. ^ self].
	(oldCard notNil and: [oldCard stowWindows])
		ifFalse: [newCard releaseWindows]
		ifTrue: [
			delay := (self switchDuration * (1 - self switchOverlapFraction)) max: 1.
			Animator default after: delay do: [newCard releaseWindows]]! !

!Dock methodsFor: 'stage choreography' stamp: ''!
positionAtEdge: aSymbol
	"Snap the dock to a screen edge. Top/bottom => horizontal orientation, left/right => vertical.
	Re-fits the tiles for the new axis and re-anchors instantly (no animation), then asks the Stage
	to settle windows back into the arena the move reshaped."
	edge := aSymbol.
	orientation := (aSymbol == #left or: [aSymbol == #right]) ifTrue: [#vertical] ifFalse: [#horizontal].
	self refit.
	Stage default settleWindowsIntoArena! !

!Dock methodsFor: 'stage choreography' stamp: ''!
removeCardAnimated: aCard onDone: aBlock
	"Shrink aCard to nothing, then run aBlock and delete it."
	self animateCardWidth: aCard from: aCard morphExtent x to: 0 onDone: [aBlock value. aCard delete]! !

!Dock methodsFor: 'stage choreography' stamp: ''!
screenStrut
	"The screen-edge strip this dock reserves: its edge and the thickness from the screen edge to
	the dock's outer visual bound (edgeMargin + scaled cross extent). Consumed by Stage>>arena."
	self world ifNil: [^ self edge -> 0].
	^ self edge -> (self edgeMargin + (self crossOf: self morphExtent * self scale))! !

!Dock methodsFor: 'stage choreography' stamp: ''!
switchDuration
	"The stow/release cluster-fly length in ms; SpaceCard>>flyCluster: reads this so the switch
	overlap and the actual fly stay in lockstep."
	^ 500! !

!Dock methodsFor: 'stage choreography' stamp: ''!
switchOverlapFraction
	"How much the incoming release overlaps the outgoing stow, as a fraction of switchDuration."
	^ 0.5! !

!Dock methodsFor: 'stage choreography' stamp: ''!
syncCards
	"Make the cards match the Stage's spaces: one card per space (newcomers animate in), no card without
	a space (leavers animate out). Card order follows space order for newcomers; existing cards keep
	their position."
	| stage |
	stage := Stage default.
	stage spaces do: [:sp | | c |
		(self cardFor: sp) ifNil: [
			c := SpaceCard new.
			c space: sp.
			self addCard: c]].
	self submorphs copy do: [:m |
		((m isKindOf: SpaceCard) and: [(stage spaces includes: m space) not])
			ifTrue: [self removeCardAnimated: m onDone: []]]! !

!Dock methodsFor: 'testing' stamp: ''!
isIncludedInTaskbar
	"The dock is chrome, not a window -- exclude it from the taskbar/StageOverview thumbnail set
	(Morph defaults this to true, so chrome must opt out)."
	^ false! !

!Dock methodsFor: 'testing' stamp: ''!
isSticky
	"The dock is chrome anchored to its screen edge -- never grabbable by the hand
	(PlacedMorph>>aboutToBeGrabbedBy: rejects the drag). Same override as the stock TaskbarMorph."
	^ true! !

!Dock methodsFor: 'testing' stamp: ''!
tileFor: aWindow
	"The tile currently holding aWindow, or nil if it is not docked."
	^ self submorphs detect: [:t | t window == aWindow] ifNone: [nil]! !

!Dock class methodsFor: 'accessing' stamp: ''!
current
	"The live Blueprint dock (the world taskbar), or nil. Space cards and dock tiles are its submorphs."
	^ self allInstances detect: [:m | m isInWorld] ifNone: [nil]! !

!DockTile methodsFor: 'initialization' stamp: ''!
initialize
	super initialize.
	aspect := 1.0.
	animating := false.
	self color: Color transparent! !

!DockTile methodsFor: 'accessing' stamp: ''!
animating
	^ animating == true! !

!DockTile methodsFor: 'accessing' stamp: ''!
animating: aBoolean
	animating := aBoolean! !

!DockTile methodsFor: 'accessing' stamp: ''!
aspect
	^ aspect ifNil: [1.0]! !

!DockTile methodsFor: 'accessing' stamp: ''!
homeCenter
	^ homeCenter! !

!DockTile methodsFor: 'accessing' stamp: ''!
window
	^ window! !

!DockTile methodsFor: 'capture' stamp: ''!
captureFrom: aWindow
	"Record everything needed to fly aWindow into this card and later restore it: its home location,
	full-size visual centre, the centre offset, the FLAT (un-rotated, UNSCALED) aspect/extent, and the
	original rotation. The visual centre is the EXACT affine image of the morph's local centre
	(morphExtent/2) -- not findFullBoundsInOwner center, whose integer pixel rounding, divided by a small
	scale, skews the centre offset (a 10%-scaled morph docked off-centre while a 200%-scaled twin sat
	centred). For nil-morphExtent vector morphs, fall back to the measured bounds centre. The offset is
	stored unscaled (rotated frame) and re-rotated at placement time."
	| fromScale flatExt me |
	window := aWindow.
	savedLoc := aWindow location copy.
	fromScale := aWindow location scale.
	me := aWindow morphExtent.
	homeCenter := me
		ifNotNil: [aWindow location transform: (me / 2)]
		ifNil: [aWindow findFullBoundsInOwner center].
	centerOffset := (homeCenter - aWindow morphPosition) / fromScale.
	flatExt := self flatFullExtentOf: aWindow.
	aspect := flatExt x / flatExt y.
	self setProperty: #flatExtent toValue: flatExt.
	self setProperty: #savedRotation toValue: ((aWindow respondsTo: #rotation) ifTrue: [aWindow rotation] ifFalse: [0])! !

!DockTile methodsFor: 'capture' stamp: ''!
flatFullExtentOf: aWindow
	"The window's intrinsic UNSCALED, un-rotated (flat) extent -- independent of the scale and rotation it
	currently has in the world. The docked card shows the morph flat and is sized to fit this intrinsic
	shape, so the result must NOT depend on the morph's current scale: a 10%-scaled and a 200%-scaled copy
	of the same morph must dock to the same size. morphExtent is the exact unscaled extent when the morph
	has one (and is rotation-independent), so prefer it. Vector PlacedMorphs answer nil for morphExtent, so
	fall back to measuring findFullBoundsInOwner with scale AND rotation momentarily zeroed -- at FULL size,
	because shrinking first then rounding distorts the integer pixel bounds (a tiny square reads as a
	non-square 21x22, throwing off both aspect and fit). Synchronous, so no redraw between swap and restore."
	| me saved flat ext |
	me := aWindow morphExtent.
	me ifNotNil: [^ me].
	(aWindow respondsTo: #location) ifFalse: [^ aWindow findFullBoundsInOwner extent].
	saved := aWindow location.
	flat := AffineTransformation new.
	flat withRotation: 0 scale: 1.0.
	flat withTranslation: aWindow morphPosition.
	aWindow location: flat.
	ext := aWindow findFullBoundsInOwner extent.
	aWindow location: saved.
	^ ext! !

!DockTile methodsFor: 'animation' stamp: ''!
flyWindowFrom: fromC corner: cornerP to: toC scaleFrom: s0 to: s1 rotationFrom: r0 to: r1 at: t
	"One frame of the window fly: quadratic Bezier of the visual centre (control cornerP for a
	perpendicular dock entry/exit), a linear scale lerp s0 -> s1, and a linear rotation lerp
	r0 -> r1 so the morph gradually un-rotates into the dock (or re-rotates on the way out)."
	| rr |
	rr := (r0 ifNil: [0]) + (((r1 ifNil: [0]) - (r0 ifNil: [0])) * t).
	self placeWindowCenteredAt: (Animator bezierFrom: fromC to: toC corner: cornerP at: t)
		scale: s0 + ((s1 - s0) * t)
		rotation: rr! !

!DockTile methodsFor: 'animation' stamp: ''!
placeWindowCenteredAt: aPoint scale: s
	"Upright placement (rotation 0): the final docked state and the restore start are unrotated --
	a minimized card shows the morph flat regardless of its rotation in the world."
	^ self placeWindowCenteredAt: aPoint scale: s rotation: 0! !

!DockTile methodsFor: 'animation' stamp: ''!
placeWindowCenteredAt: aPoint scale: s rotation: r
	"Place the window so its visual centre sits at aPoint, scaled by s and rotated to r. Delegates to the
	shared Animator absolute-placement primitive, passing the captured unscaled centre offset and the
	captured rotation as the base (so the offset is re-rotated by r - savedRotation during the fly)."
	Animator placeMorph: window centeredAt: aPoint scale: s rotation: r
		offset: centerOffset
		baseRotation: ((self valueOfProperty: #savedRotation) ifNil: [0])! !

!DockTile methodsFor: 'events' stamp: ''!
closeBoxHit
	"Halo close on a docked tile: close the WINDOW it holds (keeping the window's own save-prompt) rather
	than deleting the tile raw. The window leaving its tile triggers DockTile>>removedMorph: -> the dock
	animates the tile's collapse. Deleting the tile directly would skip both the animation and the prompt."
	window ifNil: [^ self delete].
	(window respondsTo: #closeBoxHit) ifTrue: [window closeBoxHit] ifFalse: [window delete]! !

!DockTile methodsFor: 'events' stamp: ''!
collapse
	"Chrome: a card is already a minimized representation; it does not collapse."
	^ self! !

!DockTile methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ true! !

!DockTile methodsFor: 'events' stamp: ''!
handlesMouseOver: anEvent
	"Enable mouseEnter:/mouseLeave: for the hover tooltip."
	^ true! !

!DockTile methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: aPoint
	"Click a docked card to restore its window (the window inside is locked, so the click falls
	through to the card). Hide the tooltip first. restore guards animating/undocked itself."
	self hideTip.
	self restore! !

!DockTile methodsFor: 'events' stamp: ''!
mouseEnter: evt
	"Show the title tooltip immediately on hover."
	self showTip! !

!DockTile methodsFor: 'events' stamp: ''!
mouseLeave: evt
	"Cancel any pending tooltip and hide it."
	self hideTip! !

!DockTile methodsFor: 'events' stamp: ''!
removedMorph: aMorph
	"Our window left this tile. A restore reparents it out with animating = true, so that case is
	excluded; otherwise the window was deleted out from under us and this tile is now empty: tell the
	Stage to forget it and collapse ourselves (the dock closes the gap smoothly; animating blocks a
	stray click from re-entering restore on a tile that is on its way out)."
	super removedMorph: aMorph.
	(aMorph == window and: [self animating not]) ifTrue: [
		Stage default forget: aMorph.
		(owner isKindOf: Dock) ifTrue: [
			self animating: true.
			self collapseAnimated: owner animDuration]]! !

!DockTile methodsFor: 'menu' stamp: ''!
getMenu
	"Forward to the owning dock so right-clicking a tile raises the dock menu."
	^ (owner isKindOf: Dock) ifTrue: [owner getMenu] ifFalse: [super getMenu]! !

!DockTile methodsFor: 'tooltip' stamp: ''!
hideTip
	"Delete any shown tooltip popover."
	(self valueOfProperty: #tipPopover) ifNotNil: [:p | p delete].
	self removeProperty: #tipPopover! !

!DockTile methodsFor: 'tooltip' stamp: ''!
showTip
	"Show a Popover with the docked window title just outside the dock interior edge, aligned to this
	tile, with the tail pointing back toward the dock (tailSide = the dock edge). Positions per the
	dock edge so it works on all four sides. No-op while animating, with no window, or undocked."
	| title pop dock tileB dockB edge clearance popW popH px py |
	self animating ifTrue: [^ self].
	window isNil ifTrue: [^ self].
	(owner isKindOf: Dock) ifFalse: [^ self].
	dock := owner.
	tileB := self displayBounds.
	dockB := dock displayBounds.
	(tileB isNil or: [dockB isNil]) ifTrue: [^ self].
	(self valueOfProperty: #tipPopover) ifNotNil: [:p | p delete].
	title := (window respondsTo: #label) ifTrue: [window label asString] ifFalse: [window class name asString].
	edge := dock edge.
	pop := Popover new.
	pop tailSide: edge.
	pop text: title.
	popW := pop morphExtent x.
	popH := pop morphExtent y.
	clearance := 8 * DisplayScreen hostOSScaleFactor.
	edge == #bottom ifTrue: [px := tileB center x - (popW / 2). py := dockB top - popH - clearance].
	edge == #top ifTrue: [px := tileB center x - (popW / 2). py := dockB bottom + clearance].
	edge == #left ifTrue: [px := dockB right + clearance. py := tileB center y - (popH / 2)].
	edge == #right ifTrue: [px := dockB left - popW - clearance. py := tileB center y - (popH / 2)].
	self world addMorphFront: pop position: px @ py.
	self setProperty: #tipPopover toValue: pop! !

!DockTile methodsFor: 'minimize-restore' stamp: ''!
collapseAnimated: ms
	"Shrink this tile to nothing along the dock main axis over ms, reflowing the dock every frame so it
	smoothly closes the gap, then delete the (now empty) tile. Shared by restore -- both when the window
	flies home and when it joins the overview -- and by removedMorph: when the window is deleted out of
	the tile, so the dock-collapse half looks identical in every case. The window has already been
	reparented out before this runs; the tile just animates its own demise. The dock is captured up
	front: the delete nils the owner, but the dock must keep reflowing to close the gap."
	| dock fullExt cross |
	dock := owner.
	fullExt := self morphExtent.
	cross := dock crossOf: fullExt.
	Animator default animateMorph: self using: [:t | | m |
		m := ((dock mainOf: fullExt) * ((1 - (t / 0.9)) max: 0)) truncated.
		(m < 1 and: [owner notNil])
			ifTrue: [self delete]
			ifFalse: [owner ifNotNil: [self morphExtent: (dock main: m cross: cross)]].
		dock reflow] duration: ms onDone: [
		owner ifNotNil: [self delete].
		dock reflow]! !

!DockTile methodsFor: 'minimize-restore' stamp: ''!
minimize: aWindow into: aDock
	"Fly aWindow into this (fresh) tile, docking it in aDock. Mirrors into the Stage up front
	(off-stage + flight) so the world-leave at reparent time reads as a move, not a close. Scale is
	tracked in two frames: the apparent scale while the window flies through the WORLD matches the
	on-screen tile size (tile-local extent times dock scale) and is recomputed EVERY frame -- the
	growing tile can push the dock past its fit limit mid-flight, rescaling the whole dock, and the
	fly target must track that just as the position target does; dockedScale is the tile-local scale
	once the window is reparented into the tile, where the dock scale is then applied by the parent
	transform. The two coincide when the dock scale is 1. A rotated window gradually un-rotates to 0
	during the fly so it sits flat in the dock -- so the fit ratio uses the FLAT, UNSCALED extent
	(captured via #flatFullExtentOf:), not the rotated/scaled bounding box. Because that extent is
	the window's intrinsic size, the docked result is independent of the window's current scale (a
	10%- and a 200%-scaled copy of the same morph dock to the same size); dockedScale = fit ratio
	directly, no fromScale factor."
	| tileFull cross flatExt fromScale vertical ratio dockedScale |
	vertical := aDock isVertical.
	fromScale := aWindow location scale.
	self captureFrom: aWindow.
	self animating: true.
	Stage default minimize: aWindow.
	Stage default flightBegan: aWindow.
	aWindow lock.
	flatExt := self valueOfProperty: #flatExtent.
	tileFull := aDock tileExtentFor: self aspect.
	cross := aDock crossOf: tileFull.
	self morphExtent: (aDock main: 0 cross: cross).
	aDock addMorphBack: self.
	aDock reflow.
	ratio := (tileFull x / flatExt x) min: (tileFull y / flatExt y).
	dockedScale := ratio.
	Animator default animateMorph: aWindow using: [:t | | tc corner m |
		m := ((aDock mainOf: tileFull) * t) truncated.
		self morphExtent: (aDock main: m cross: cross).
		aDock reflow.
		tc := (self externalizeBoundsToWorld: (0 @ 0 extent: tileFull)) center.
		corner := Animator dockCornerNear: tc far: homeCenter vertical: vertical.
		self flyWindowFrom: homeCenter corner: corner to: tc scaleFrom: fromScale to: ratio * aDock scale rotationFrom: (self valueOfProperty: #savedRotation) to: 0 at: t] duration: aDock animDuration onDone: [
		self morphExtent: tileFull.
		aDock reflow.
		self addMorph: aWindow.
		self placeWindowCenteredAt: (self morphExtent / 2) scale: dockedScale.
		self animating: false.
		Stage default flightEnded: aWindow]! !

!DockTile methodsFor: 'minimize-restore' stamp: ''!
restore
	"Restore this tile's window from the dock. No-op while animating or undocked. Mirrors into the Stage
	up front (Stage restore: clears the minimized flag and re-spaces the window to the active space) so
	the world re-add a moment later reads as a move (manage: is idempotent), not an open. Common to both
	outcomes: reparent the window to the world at its current docked spot (no visual jump -- on-screen
	scale = tile-local scale times dock scale) and collapse this tile to nothing while the dock closes
	the gap. Where the window goes then depends on the overview: if it is OPEN the window joins the
	overview grid, arcing in from the dock edge and returning to its real home when the overview closes;
	if CLOSED it flies home along the dock arc. The dock-collapse half (collapseAnimated:) runs for the
	same duration as the window motion, so the two halves stay in lockstep."
	| dock win vertical dockScale dockedScale dockedCenter home fromScale toScale toCenter |
	self animating ifTrue: [^ self].
	(owner isKindOf: Dock) ifFalse: [^ self].
	self animating: true.
	dock := owner.
	win := window.
	vertical := dock isVertical.
	dockScale := dock scale.
	dockedScale := win location scale.
	dockedCenter := (self externalizeBoundsToWorld: win findFullBoundsInOwner) center.
	home := savedLoc.
	Stage default restore: win.
	win unlock.
	UISupervisor ui addMorph: win.
	self placeWindowCenteredAt: dockedCenter scale: dockedScale * dockScale.
	StageOverview default isSettled ifTrue: [
		self collapseAnimated: StageOverview default animDuration.
		^ StageOverview default joinFromDock: win home: home vertical: vertical].
	toCenter := homeCenter.
	fromScale := dockedScale * dockScale.
	toScale := home scale.
	Stage default flightBegan: win.
	self collapseAnimated: dock animDuration.
	Animator default animateMorph: win using: [:t | | corner |
		corner := Animator dockCornerNear: dockedCenter far: toCenter vertical: vertical.
		self flyWindowFrom: dockedCenter corner: corner to: toCenter scaleFrom: fromScale to: toScale rotationFrom: 0 to: (self valueOfProperty: #savedRotation) at: t] duration: dock animDuration onDone: [
		win location: home.
		self animating: false.
		Stage default flightEnded: win]! !

!DockTile methodsFor: 'layout' stamp: ''!
fullExtentIn: aDock
	"My full (uncollapsed) extent as a dock item: the tile extent for my window aspect."
	^ aDock tileExtentFor: self aspect! !

!DockTile methodsFor: 'layout' stamp: ''!
refitIn: aDock
	"Resize to my full extent for the dock current axis and re-fit the docked window into it: reset
	the window to scale 1, then fit via findFullBoundsInOwner -- works for any morph (incl.
	nil-morphExtent ones). Resetting first makes the relative scaleBy: in scaleToFitInto:
	deterministic, so repeated fits are idempotent and never accumulate letterboxing."
	| ext identityXf |
	ext := self fullExtentIn: aDock.
	self morphExtent: ext.
	window ifNil: [^ self].
	identityXf := AffineTransformation new.
	identityXf withRotation: 0 scale: 1.
	identityXf withTranslation: 0 @ 0.
	window location: identityXf.
	window scaleToFitInto: (0 @ 0 extent: ext)! !

!SpaceCard methodsFor: 'accessing' stamp: ''!
desktopMorphs
	"Live managed desktop morphs front-to-back for THIS active card: the world's placed windows
	(world desktopWindows) PLUS one grabbed by the hand (Morphic reparents a dragged morph into the
	hand, so it is briefly off the world list -- include it so its mini-map proxy keeps tracking the
	drag), then drop the inert: locked (stowed/Dock-minimized) and those mid-flight between desktop,
	card and dock (the Stage's flights). Excluding both is what keeps a switch from mis-counting the
	outgoing windows as the incoming space's members."
	| world hand handManaged |
	world := self world.
	world ifNil: [^ #()].
	hand := world activeHand.
	handManaged := hand ifNil: [#()] ifNotNil: [:h | h submorphs select: [:m | m isManagedDesktopMorph]].
	^ (handManaged , world desktopWindows) reject: [:m | m isLocked or: [Stage default isInFlight: m]]! !

!SpaceCard methodsFor: 'accessing' stamp: ''!
space
	"The Space this card renders (Stage model). nil until the Stage cutover assigns it."
	^ space! !

!SpaceCard methodsFor: 'accessing' stamp: ''!
space: aSpace
	space := aSpace! !

!SpaceCard methodsFor: 'testing' stamp: ''!
isActive
	"This card renders the space currently shown on the desktop. During a switch (mode #switching)
	no card is active: the outgoing card freezes its mini-map and the incoming one shows its frozen
	proxies until the release lands."
	^ space notNil and: [Stage default shown == space and: [(Stage default mode is: #switching) not]]! !

!SpaceCard methodsFor: 'testing' stamp: ''!
isIncludedInTaskbar
	"Chrome -- excluded from the desktop scan and the Cuis taskbar. (Cuis-inherited name; really
	means isManagedDesktopMorph, the predicate we are migrating to.)"
	^ false! !

!SpaceCard methodsFor: 'testing' stamp: ''!
showsActiveFrame
	"Whether to paint the ACCENT (vs black) screen frame. Follows the Stage's `active` -- the switch
	TARGET, which switchTo: sets immediately -- so the accent moves to the new space the instant a switch
	begins, decoupled from the window-fly animation. (Contrast #isActive, which tracks `shown` and drives
	mini-map / drag behaviour, staying false through the transition.)"
	^ space notNil and: [Stage default active == space]! !

!SpaceCard methodsFor: 'drawing' stamp: ''!
clipsSubmorphs
	"Clip stowed window submorphs to this card so a shrunk window never draws past the card edge
	(which leaves trails when the bar is dragged, since Morphic only repaints the morph bounds).
	No effect while active -- the active card has no window submorphs; its windows live on the
	desktop and are drawn as a mini-map in drawDesktopMiniOn:."
	^ true! !

!SpaceCard methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Opaque desktop-coloured mini-screen backing. The window mini-reps are SUBMORPHS -- live proxies on
	an active card, the real shrunk windows on a stowed card, frozen proxies during a transition --
	drawn by the morphic engine and clipped to the card (clipsSubmorphs). The frame is drawn in
	postDrawOn: after submorphs so they cannot occlude it."
	aCanvas fillColor: Theme current background do: [
		aCanvas squircle: self localBounds radius: Theme current roundedMiniRadius * self hostScale]! !

!SpaceCard methodsFor: 'drawing' stamp: ''!
postDrawOn: aCanvas
	"Screen frame drawn ON TOP of submorphs so it is never occluded: accent when this card's space is the
	switch target (#showsActiveFrame -- moves the instant a switch begins, not after the fly settles),
	black otherwise. Inset by its stroke width so the whole centre-aligned stroke stays inside the morph
	bounds, the radius shrinking to stay concentric with the backing. Answer true since we drew."
	| s frameColor frameW |
	s := self hostScale.
	frameColor := self showsActiveFrame ifTrue: [Theme current accentColor] ifFalse: [Color black].
	frameW := self showsActiveFrame ifTrue: [1 * s] ifFalse: [0.5 * s].
	aCanvas strokeWidth: frameW color: frameColor do: [
		aCanvas squircle: self localBounds radius: Theme current roundedMiniRadius * s inset: frameW].
	^ true! !

!SpaceCard methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!SpaceCard methodsFor: 'initialization' stamp: ''!
initialize
	super initialize.
	self color: Color transparent.
	self morphExtent: (64 * DisplayScreen hostOSScaleFactor) @ 0! !

!SpaceCard methodsFor: 'geometry' stamp: ''!
miniMapScale
	"Screen-to-card scale: how much a world rectangle shrinks to fit this screen-aspect card."
	^ self morphExtent x / self world morphExtent x! !

!SpaceCard methodsFor: 'geometry' stamp: ''!
morphExtent: anExtent
	"Lock to the screen aspect ratio so the desktop mini-map never distorts; only the requested WIDTH
	is honoured, the height follows the screen. No minimum -- the add/remove animation drives the
	width down to 0."
	| sx w |
	sx := Display extent.
	w := anExtent x.
	super morphExtent: w @ (w * sx y / sx x)! !

!SpaceCard methodsFor: 'stepping' stamp: 'ML 3/Jul/2026 15:46:10'!
step
	"World-cycle heartbeat first: the active card steps every cycle, making this the one
	driver guaranteed to run after startup -- it lets the Animator reclaim frame alarms
	lost to the startup era-shift or a replaced world (see Animator>>ensureTicking).
	Then, active card only: reconcile one live proxy mini-morph per desktop window (synced to its centre,
	flat extent, rotation and colour), drop proxies for windows that vanished, and match the minimap
	z-order to the desktop z-order (front-to-back). A window with no bounds yet is skipped by
	syncProxy: and has no proxy, so it is rejected from the z-order list too. Pure render: membership
	and emptiness live in the Stage (event-driven), not in this poll."
	| wins ordered |
	Animator default ensureTicking.
	self isActive ifFalse: [^ self].
	wins := self desktopMorphs.
	self proxies do: [:p | (wins includes: p window) ifFalse: [p delete]].
	wins do: [:w | self syncProxy: (self proxyFor: w) to: w].
	ordered := (wins collect: [:w | self proxyFor: w]) reject: [:p | p isNil].
	self proxies = ordered ifFalse: [ordered do: [:p | self addMorphBack: p]]! !

!SpaceCard methodsFor: 'stepping' stamp: ''!
stepTime
	"Poll fast so the active mini-map tracks moving/flying windows smoothly. Cheap when nothing
	moved: Animator placeMorph:... skips placements equal to the current one, so a static desktop
	costs only the per-window comparison -- no invalidation, no redraw. Stowed cards
	short-circuit immediately."
	^ 16! !

!SpaceCard methodsFor: 'stepping' stamp: ''!
wantsSteps
	^ true! !

!SpaceCard methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ true! !

!SpaceCard methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: aPoint
	"Begin a possible drag: record the window under the cursor (or nil) and the grab point, then #press into #armed.
	A release without crossing the threshold fires #cancel (a click -> toggle/switch); a threshold crossing in
	mouseMove: fires #lift or #carry."
	self setProperty: #dragWindow toValue: (self proxyAt: aPoint).
	self setProperty: #dragStart toValue: anEvent eventPosition.
	self dragChart fire: #press! !

!SpaceCard methodsFor: 'events' stamp: ''!
mouseButton1Up: anEvent localPosition: aPoint
	"End the gesture by chart state. #armed (no drag): #cancel -> idle, then the click action -- an active card
	toggles the overview, a stowed card switches to its space. #lifting (pickup still flying the window in): record
	the drop destination; pickUp:'s landing settles it (no teleport). #carrying (window in hand): settle into the
	card under the cursor (different space) or back home (same), then #drop -> idle."
	| chart win |
	chart := self dragChart.
	win := self valueOfProperty: #dragWindow.
	(chart is: #armed) ifTrue: [
		chart fire: #cancel.
		self isActive
			ifTrue: [StageOverview default toggle]
			ifFalse: [StageOverview default exit. Stage default switchTo: space].
		^ self redrawNeeded].
	(chart is: #lifting) ifTrue: [
		self setProperty: #dragDest toValue: (self dropDestAt: anEvent eventPosition).
		^ self].
	(chart is: #carrying) ifTrue: [ | dest |
		dest := self dropDestAt: anEvent eventPosition.
		self settle: win into: dest.
		chart fire: #drop.
		^ self redrawNeeded]! !

!SpaceCard methodsFor: 'events' stamp: ''!
mouseMove: anEvent localPosition: aPoint
	"Drive the drag by chart state. #armed: past the threshold (with a window under the grab) fire #lift (active ->
	pickup) or #carry (stowed) and do the mechanical lift. #lifting: trail the carry-rect placeholder on the cursor.
	#carrying: place the window centred on the cursor at the carry scale, keeping its captured angle. SpaceCard
	handles no hover, so mouseMove: is reliable here."
	| chart win here |
	chart := self dragChart.
	win := self valueOfProperty: #dragWindow.
	here := anEvent eventPosition.
	(chart is: #armed) ifTrue: [
		(win notNil and: [(here - (self valueOfProperty: #dragStart)) r >= (6 * DisplayScreen hostOSScaleFactor)]) ifTrue: [
			(self isActive ifTrue: [chart fire: #lift] ifFalse: [chart fire: #carry]) ifTrue: [self liftForCarry: win]].
		^ self].
	(chart is: #lifting) ifTrue: [
		(self valueOfProperty: #carryRect) ifNotNil: [:g | g morphPosition: here - (g morphExtent / 2)].
		^ self].
	(chart is: #carrying) ifTrue: [
		Animator placeMorph: win centeredAt: here scale: (self valueOfProperty: #dragCarryScale)
			rotation: ((self valueOfProperty: #dragRotation) ifNil: [0]) offset: (self valueOfProperty: #dragOffset) baseRotation: 0]! !

!SpaceCard methodsFor: 'events' stamp: ''!
removedMorph: aMorph
	"A real stowed window was destroyed while stowed in this card: the Stage forgets it so a later
	release does not fly a dead window (reconcile then keeps exactly one empty space). A release
	reparenting members out marks them in flight, which must NOT be treated as destruction; an active
	card holds only proxies (WindowProxyMorphs, not managed desktop morphs, so the filter drops them)."
	super removedMorph: aMorph.
	(aMorph isManagedDesktopMorph and: [(Stage default isInFlight: aMorph) not])
		ifTrue: [Stage default forget: aMorph]! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
addFrozenProxyFor: aWindow home: aHome
	"Add a proxy at aWindow eventual HOME placement -- centre = aHome key (world centre captured at
	collapse) mapped by miniMapScale, extent = its captured full-size flat extent (#bpHomeFlatExtent)
	mapped likewise. Both match exactly what syncProxy: computes once the window lands home and step
	goes live, so there is no position OR size jump at the end of restore. Falls back to measuring the
	stowed morph if the home extent was not captured (a group stowed before this was added). Used during
	restore while the real window flies out."
	| p ext |
	p := WindowProxyMorph new.
	p window: aWindow.
	p color: ((aWindow respondsTo: #color) ifTrue: [aWindow color ifNil: [Color gray]] ifFalse: [Color gray]).
	ext := (aWindow valueOfProperty: #bpHomeFlatExtent)
		ifNotNil: [:fe | fe * self miniMapScale]
		ifNil: [self flatExtentOf: aWindow].
	self addMorph: p.
	self placeProxy: p
		at: aHome key * self miniMapScale
		extent: ext
		rotation: (self miniRotationOf: aWindow).
	^ p! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
addProxyMorphFor: aWindow
	"Add a fresh proxy linked to aWindow (caller syncs its geometry)."
	| p |
	p := WindowProxyMorph new.
	p window: aWindow.
	self addMorph: p.
	^ p! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
flatExtentOf: aMorph
	"On-screen un-rotated extent for the mini-map: morphExtent * scale when available (rotation-
	independent); otherwise the AABB extent (findFullBoundsInOwner), correct for the un-rotated case --
	vector morphs without a morphExtent are rarely rotated."
	^ aMorph morphExtent
		ifNil: [aMorph findFullBoundsInOwner extent]
		ifNotNil: [:e | e * aMorph scale]! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
miniRotationOf: aMorph
	"Rotation to draw the proxy with -- only when we have a true flat extent (morphExtent) to rotate;
	for AABB-fallback morphs use 0 so the already rotation-inflated AABB is not rotated twice."
	^ (aMorph morphExtent notNil and: [aMorph respondsTo: #rotation])
		ifTrue: [aMorph rotation]
		ifFalse: [0]! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
placeProxy: aProxy at: localCenter extent: ext rotation: theta
	"Place aProxy so its centre sits at localCenter (card-local), sized ext and rotated theta. Delegates to
	the shared Animator placement primitive (scale 1, centre offset = ext/2) rather than re-deriving the
	rotated-half translation -- one placement path for proxies and flying windows alike."
	aProxy morphExtent: ext.
	Animator placeMorph: aProxy centeredAt: localCenter scale: 1 rotation: theta offset: ext / 2 baseRotation: 0! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
proxies
	"The window mini-rep proxy morphs in this card (live on an active card, frozen during a transition)."
	^ self submorphs select: [:m | m isKindOf: WindowProxyMorph]! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
proxyFor: aWindow
	"The proxy mirroring aWindow, or nil."
	^ self submorphs detect: [:m | (m isKindOf: WindowProxyMorph) and: [m window == aWindow]] ifNone: [nil]! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
removeProxyFor: aWindow
	"Drop the proxy mirroring aWindow -- its real shrunk window has just landed as a card submorph."
	(self proxyFor: aWindow) ifNotNil: [:p | p delete]! !

!SpaceCard methodsFor: 'mini-map' stamp: ''!
syncProxy: aProxy to: aWindow
	"Place/refresh a live proxy mirroring aWindow (a desktop window): its world VISUAL CENTRE and FLAT
	(un-rotated) extent mapped by miniMapScale into card-local, plus the window rotation and colour.
	Creates the proxy if aProxy is nil. SKIPS (no crash, no proxy) a window with no displayFullBounds
	yet -- e.g. one still being built/opened (a debugger window) -- so a transient unmeasurable window
	cannot raise in step and get the card dropped from stepping. Deterministic, so a static window
	stays put."
	| p miniScale fb |
	fb := aWindow displayFullBounds.
	fb ifNil: [^ self].
	p := aProxy ifNil: [self addProxyMorphFor: aWindow].
	miniScale := self miniMapScale.
	p color: ((aWindow respondsTo: #color) ifTrue: [aWindow color ifNil: [Color gray]] ifFalse: [Color gray]).
	self placeProxy: p
		at: fb center * miniScale
		extent: (self flatExtentOf: aWindow) * miniScale
		rotation: (self miniRotationOf: aWindow)! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
captureClusterTransformOf: aMorph
	"Stash the unscaled origin->centre offset and rotation placeMember needs to fly aMorph absolutely.
	Intrinsic and scale-invariant, so capturing once -- at stow from the home state, at release from the
	stowed state -- is enough; the per-frame placement never re-measures."
	aMorph setProperty: #bpClusterOffset toValue: (Animator centerOffsetOf: aMorph).
	aMorph setProperty: #bpClusterRotation toValue: ((aMorph respondsTo: #rotation) ifTrue: [aMorph rotation] ifFalse: [0])! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
clusterAnchorsFor: wins
	"Geometry shared by stow and release. cwb is this card's bounds in the world; worldMini scales the
	mini-map against the world. anchorHome is the cluster's HOME centroid (mean of the windows' Placement
	home centres), anchorCard is that centroid mapped into the card, corner is the perpendicular dock-entry
	Bezier control. Answers {worldMini. anchorHome. anchorCard. corner}. wins must all have placement homes."
	| stage cwb worldMini anchorHome anchorCard vertical |
	stage := Stage default.
	cwb := self externalizeBoundsToWorld: (0@0 extent: self morphExtent).
	worldMini := cwb width / self world morphExtent x.
	anchorHome := (wins inject: 0@0 into: [:sum :w | sum + (stage placementOf: w) home key]) / wins size.
	anchorCard := cwb origin + (anchorHome * worldMini).
	vertical := (owner respondsTo: #isVertical) and: [owner isVertical].
	^ { worldMini. anchorHome. anchorCard. Animator dockCornerNear: anchorCard far: anchorHome vertical: vertical }! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
flyCluster: wins collapsing: collapsing onDone: doneBlock
	"Fly wins as ONE RIGID cluster on this card's animation -- the whole of what stow and release share.
	`collapsing` selects direction: stowing shrinks the shared scale 1 -> worldMini and arcs the centroid
	home -> card; releasing grows worldMini -> 1 and arcs card -> home. Each frame interpolates f and the
	Bezier anchor (control corner) and places every member ABSOLUTELY from its Placement home centre,
	measured from the HOME centroid (so relative positions stay fixed -- no overlap churn, no
	pixel-rounding jitter). A member whose placement vanishes mid-fly (closed) is simply no longer
	placed. doneBlock runs on completion."
	| stage anchors worldMini anchorHome anchorCard corner fStart fEnd aFrom aTo |
	stage := Stage default.
	anchors := self clusterAnchorsFor: wins.
	worldMini := anchors at: 1.
	anchorHome := anchors at: 2.
	anchorCard := anchors at: 3.
	corner := anchors at: 4.
	fStart := collapsing ifTrue: [1] ifFalse: [worldMini].
	fEnd := collapsing ifTrue: [worldMini] ifFalse: [1].
	aFrom := collapsing ifTrue: [anchorHome] ifFalse: [anchorCard].
	aTo := collapsing ifTrue: [anchorCard] ifFalse: [anchorHome].
	Animator default
		animateMorph: self
		using: [:t | | f anchor |
			f := fStart + ((fEnd - fStart) * t).
			anchor := Animator bezierFrom: aFrom to: aTo corner: corner at: t.
			wins do: [:w |
				(stage placementOf: w) ifNotNil: [:pl |
					pl home ifNotNil: [:h |
						self placeMember: w
							centeredAt: anchor + ((h key - anchorHome) * f)
							scale: h value * f]]]]
		duration: ((owner respondsTo: #switchDuration) ifTrue: [owner switchDuration] ifFalse: [500])
		onDone: doneBlock! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
placeMember: w centeredAt: aPoint scale: s
	"Place one cluster member absolutely at aPoint/scale using its captured unscaled centre offset and
	rotation (held constant -- the cluster never re-rotates its members). The single placement call shared
	by the fly loop and both onDone hand-offs."
	| rot |
	rot := w valueOfProperty: #bpClusterRotation ifAbsent: [0].
	Animator placeMorph: w centeredAt: aPoint scale: s rotation: rot
		offset: (w valueOfProperty: #bpClusterOffset)
		baseRotation: rot! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
releaseWindows
	"Release this card's stowed windows back to the desktop as ONE RIGID cluster (see flyCluster:) and
	report the settle to the Stage when the fly lands. A stowed window with no Placement home cannot be
	flown back; such an orphan is dropped (logged once as a tripwire -- it should not happen, every stow
	writes a home). An empty card settles at once."
	| stage wins orphans world cardWorldScale |
	stage := Stage default.
	wins := self stowedWindows.
	orphans := wins select: [:w | (stage placementOf: w) isNil or: [(stage placementOf: w) home isNil]].
	orphans notEmpty ifTrue: [
		Transcript show: 'SpaceCard>>releaseWindows dropped ', orphans size printString, ' orphan(s) with no home'; newLine.
		wins := wins reject: [:w | orphans includes: w]].
	wins isEmpty ifTrue: [stage switchSettled. self redrawNeeded. ^ self].
	world := self world.
	cardWorldScale := (self externalizeBoundsToWorld: (0@0 extent: self morphExtent)) width / self morphExtent x.
	wins reverseDo: [:w | | curScale curCenter |
		curScale := w scale * cardWorldScale.
		curCenter := w displayFullBounds center.
		self addFrozenProxyFor: w home: (stage placementOf: w) home.
		stage flightBegan: w.
		w unlock.
		world addMorph: w.
		w scale: curScale.
		w morphPosition: w morphPosition + (curCenter - w findFullBoundsInOwner center).
		self captureClusterTransformOf: w].
	self flyCluster: wins collapsing: false onDone: [
		wins do: [:w |
			(stage placementOf: w) ifNotNil: [:pl |
				pl home ifNotNil: [:h | self placeMember: w centeredAt: h key scale: h value]].
			stage flightEnded: w].
		stage switchSettled.
		self redrawNeeded]! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
stowWindows
	"Stow the desktop windows into this card as ONE RIGID cluster: write each window's home (centre ->
	scale) into its Placement, mark it in flight, then fly them all together via flyCluster:. onDone stows
	each in the card (front-to-back, locked) at the mini-map scale; the flight ends only AFTER the hand-off
	into the card, so the world-leave at addMorphBack: reads as a move (the Stage's in-flight guard), not a
	close. Answers whether anything flew (false = nothing to stow, the switch may proceed at once)."
	| stage wins localMini |
	stage := Stage default.
	wins := self desktopMorphs.
	wins isEmpty ifTrue: [^ false].
	localMini := self miniMapScale.
	wins do: [:w | | off |
		self captureClusterTransformOf: w.
		off := w valueOfProperty: #bpClusterOffset.
		(stage placementOf: w) ifNotNil: [:pl |
			pl home: ((w morphPosition + (off * w location scale)) -> w scale).
			pl space: space].
		w setProperty: #bpHomeFlatExtent toValue: (self flatExtentOf: w).
		stage flightBegan: w].
	self flyCluster: wins collapsing: true onDone: [
		wins do: [:w |
			(stage placementOf: w) ifNotNil: [:pl |
				self addMorphBack: w.
				self placeMember: w centeredAt: pl home key * localMini scale: pl home value * localMini.
				w lock.
				self removeProxyFor: w].
			stage flightEnded: w].
		self redrawNeeded].
	^ true! !

!SpaceCard methodsFor: 'stage choreography' stamp: ''!
stowedWindows
	"The real windows stowed in this card, front-to-back (submorph order IS the stow order; the
	mini-map proxies are WindowProxyMorphs and are not windows)."
	^ self submorphs reject: [:m | m isKindOf: WindowProxyMorph]! !

!SpaceCard methodsFor: 'layout' stamp: ''!
fullExtentIn: aDock
	"My full (uncollapsed) extent as a dock item: the screen-aspect card extent."
	^ aDock cardFullExtent! !

!SpaceCard methodsFor: 'layout' stamp: ''!
refitIn: aDock
	"Re-request my width for the dock current axis (I enforce the screen aspect from it, see
	morphExtent:) and re-lay-out the mini-map content for the new geometry."
	self morphExtent: aDock cardWidth @ 0.
	self relayoutMiniMap! !

!SpaceCard methodsFor: 'layout' stamp: ''!
relayoutMiniMap
	"Re-place this card minimap content for the CURRENT card geometry (after Dock>>refit resizes the
	cards on an edge/orientation change). Active card: re-sync the live proxies to the new miniMapScale.
	Stowed card: re-place its real shrunk windows from their placement homes. Without this, a resized
	card keeps content sized for the old geometry until you switch to it."
	| mini |
	self isActive
		ifTrue: [self desktopMorphs do: [:w | self syncProxy: (self proxyFor: w) to: w]]
		ifFalse: [
			mini := self miniMapScale.
			self stowedWindows do: [:w |
				(Stage default placementOf: w) ifNotNil: [:pl |
					pl home ifNotNil: [:h |
						self placeMember: w centeredAt: h key * mini scale: h value * mini]]]]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
buildDragChart
	"The drag gesture as a flat StateMachine -- the single source of control-state truth (no correlated booleans).
	idle: a press arms. armed: crossing the threshold lifts (active source -> #lifting pickup) or carries (stowed ->
	#carrying), a release without crossing cancels (a click). lifting: the pickup lands either into the hand (#land
	-> carrying) or, if a drop already arrived, into the settle (#drop). carrying: a drop settles. Entering idle
	tears the gesture down (clearDragState), whichever event brought it there. Missing transitions ARE the guards --
	a stray event is a silent no-op (the same idiom as the dock resize chart)."
	| chart |
	chart := StateMachine initial: #idle states: {
		#idle -> { #press -> #armed }.
		#armed -> { #lift -> #lifting. #carry -> #carrying. #cancel -> #idle }.
		#lifting -> { #land -> #carrying. #drop -> #idle }.
		#carrying -> { #drop -> #idle } }.
	chart onTransition: [:c | (c is: #idle) ifTrue: [self clearDragState]].
	^ chart! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
captureHomeFor: aWindow
	"Record aWindow's desktop home (world visual centre -> scale) into its Placement. NORMALLY the live `location`
	IS that home -- but while the StageOverview is tiling the window it has BORROWED `location` for the grid (the
	true one parked in the overview's originMap), so the live scale/position is the shrunk TILE, not the home. Read
	the overview's stashed real location when it has one, so a move started from the overview records the true home,
	not the tile."
	| loc me centre |
	loc := (StageOverview default homeLocationOf: aWindow) ifNil: [aWindow location].
	me := aWindow morphExtent.
	centre := me ifNotNil: [loc transform: (me / 2)] ifNil: [aWindow findFullBoundsInOwner center].
	(Stage default placementOf: aWindow) ifNotNil: [:pl |
		pl home: (centre -> loc scale)]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
carryRectFor: aWindow extent: ext
	"A free-standing carry-rect placeholder (a WindowProxyMorph in the window's colour, the same rect the active
	card shows) of the given on-screen extent, at the world front so it rides above the dock unclipped. Used at the
	two points a carry needs a rect: the pickup drops one for the hand to hold while the window flies in
	(liftForCarry:), and the active-space drop stamps one that then drifts into the mini-map slot as the real window
	flies out to the desktop (flySettle:onto:). The caller owns it -- positions, animates and eventually deletes it
	-- so it is held in a local, never in the drag-state properties, and a stray rect can never outlive its gesture."
	| g c |
	c := (aWindow respondsTo: #color) ifTrue: [aWindow color] ifFalse: [nil].
	g := WindowProxyMorph new.
	g window: aWindow.
	g color: (c ifNil: [Color gray]).
	g morphExtent: ext.
	self world addMorphFront: g.
	^ g! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
clearDragState
	"Teardown on returning to #idle (the chart's entry action): delete the carry-rect placeholder if one is still
	up, and drop every transient drag property, so no gesture leaves state behind."
	(self valueOfProperty: #carryRect) ifNotNil: [:r | r delete].
	#(dragWindow dragStart dragOffset dragCarryScale dragRotation carryRect dragDest) do: [:k | self removeProperty: k]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
dragChart
	"The drag gesture's StateMachine (see buildDragChart), built lazily and held per card; it ends each gesture
	back in #idle, so the one instance is reused across drags."
	^ (self valueOfProperty: #dragChart) ifNil: [
		| c | c := self buildDragChart. self setProperty: #dragChart toValue: c. c]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
dropDestAt: aWorldPoint
	"The drop destination for the carried window: the dock card under aWorldPoint when it is a DIFFERENT space than
	the window's current one, else this card (a return-home)."
	| target curSpace |
	target := (owner isKindOf: Dock) ifTrue: [owner cardAtWorldPoint: aWorldPoint] ifFalse: [nil].
	curSpace := (Stage default placementOf: (self valueOfProperty: #dragWindow)) ifNotNil: [:p | p space].
	^ (target notNil and: [target space ~~ curSpace]) ifTrue: [target] ifFalse: [self]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
flySettle: aWindow onto: aCard
	"Drop onto the active space. OVERVIEW OPEN: hand the window to the overview to arc into its grid slot in sync
	(joinFromMove:; the overview preserves rotation itself). OVERVIEW CLOSED: the carried mini-window SPLITS -- the
	real window flies to its full-size desktop home while its rect drifts into the mini-map slot where the card's
	proxy will land. The window keeps its angle r throughout, and the rect is rotated to r too so it matches the
	(rotated) proxy it hands off to."
	| stage pl off fromCenter fromScale toCenter toScale vertical corner rect ext cwb cardWS mini winFlat slotWorldC slotWorldExt r |
	StageOverview default isSettled ifTrue: [
		Stage default flightEnded: aWindow.
		Stage default move: aWindow to: aCard space.
		StageOverview default joinFromMove: aWindow.
		^ self].
	stage := Stage default.
	pl := stage placementOf: aWindow.
	off := Animator centerOffsetOf: aWindow.
	fromScale := aWindow location scale.
	fromCenter := aWindow morphPosition + (off * fromScale).
	r := aWindow rotation.
	(pl notNil and: [pl home notNil])
		ifTrue: [toCenter := pl home key. toScale := pl home value]
		ifFalse: [toCenter := fromCenter. toScale := 1.0].
	vertical := (owner respondsTo: #isVertical) and: [owner isVertical].
	corner := Animator dockCornerNear: fromCenter far: toCenter vertical: vertical.
	winFlat := aWindow morphExtent ifNil: [aWindow findFullBoundsInOwner extent / fromScale] ifNotNil: [:me | me].
	ext := winFlat * fromScale.
	cwb := aCard externalizeBoundsToWorld: (0@0 extent: aCard morphExtent).
	cardWS := cwb width / aCard morphExtent x.
	mini := aCard miniMapScale.
	slotWorldC := cwb origin + (toCenter * mini * cardWS).
	slotWorldExt := winFlat * toScale * mini * cardWS.
	rect := self carryRectFor: aWindow extent: ext.
	Animator placeMorph: rect centeredAt: fromCenter scale: 1 rotation: r offset: ext / 2 baseRotation: 0.
	aWindow comeToFront.
	Animator default
		animate: aWindow
		using: [:t | | c s rc re |
			c := Animator bezierFrom: fromCenter to: toCenter corner: corner at: t.
			s := fromScale + ((toScale - fromScale) * t).
			Animator placeMorph: aWindow centeredAt: c scale: s rotation: r offset: off baseRotation: 0.
			rc := fromCenter + ((slotWorldC - fromCenter) * t).
			re := ext + ((slotWorldExt - ext) * t).
			rect morphExtent: re.
			Animator placeMorph: rect centeredAt: rc scale: 1 rotation: r offset: re / 2 baseRotation: 0]
		duration: 300
		easing: #cubicInOut
		onDone: [
			Animator placeMorph: aWindow centeredAt: toCenter scale: toScale rotation: r offset: off baseRotation: 0.
			aWindow comeToFront.
			rect delete.
			stage move: aWindow to: aCard space.
			stage flightEnded: aWindow.
			aCard redrawNeeded]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
flySettleStowed: aWindow onto: aCard
	"Drop onto a NON-active (stowed) space. If the overview is up, `leaveWindow:` reflows the survivors in sync with
	this glide. The window glides from the drop point into aCard's mini-map slot, shrinking and KEEPING its angle r,
	then reparents in on top as a rotated shrunk rep -- so a later switch-release (which captures the live rotation)
	brings it back rotated too."
	| stage pl off fromCenter fromScale toCenter toScale cwb cardWS mini slotLocalC slotWorldC targetWorldScale r |
	StageOverview default leaveWindow: aWindow.
	stage := Stage default.
	pl := stage placementOf: aWindow.
	off := Animator centerOffsetOf: aWindow.
	fromScale := aWindow location scale.
	fromCenter := aWindow morphPosition + (off * fromScale).
	r := aWindow rotation.
	mini := aCard miniMapScale.
	cwb := aCard externalizeBoundsToWorld: (0@0 extent: aCard morphExtent).
	cardWS := cwb width / aCard morphExtent x.
	(pl notNil and: [pl home notNil])
		ifTrue: [toCenter := pl home key. toScale := pl home value]
		ifFalse: [toCenter := (aCard morphExtent / 2) / mini. toScale := fromScale / mini].
	slotLocalC := toCenter * mini.
	slotWorldC := cwb origin + (slotLocalC * cardWS).
	targetWorldScale := toScale * mini * cardWS.
	aWindow comeToFront.
	Animator default
		animate: aWindow
		using: [:t | | c s |
			c := fromCenter + ((slotWorldC - fromCenter) * t).
			s := fromScale + ((targetWorldScale - fromScale) * t).
			Animator placeMorph: aWindow centeredAt: c scale: s rotation: r offset: off baseRotation: 0]
		duration: 300
		easing: #cubicInOut
		onDone: [
			aWindow unlock.
			aCard addMorphFront: aWindow.
			Animator placeMorph: aWindow centeredAt: slotLocalC scale: toScale * mini rotation: r offset: off baseRotation: 0.
			aWindow lock.
			stage move: aWindow to: aCard space.
			stage flightEnded: aWindow.
			aCard redrawNeeded]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
liftForCarry: aWindow
	"The mechanical lift, run when the chart enters #lifting or #carrying. Flight-mark aWindow, capture its centre
	offset, a carry scale matched to its rep, AND its real rotation (from the overview's stashed location if the
	overview is tiling it, else live -- so the carry/pickup/settle keep the angle instead of flattening it); unlock
	and raise it. ACTIVE source (#lifting): drop a carry-rect placeholder and start the pickup tween. STOWED source
	(#carrying): already mini at the grab point, so mouseMove: carries it from here."
	| stage rep off cs fromCenter fromScale repExt |
	stage := Stage default.
	stage flightBegan: aWindow.
	self isActive ifTrue: [self captureHomeFor: aWindow].
	rep := self isActive ifTrue: [self proxyFor: aWindow] ifFalse: [aWindow].
	repExt := rep
		ifNil: [(48 @ 32) * DisplayScreen hostOSScaleFactor]
		ifNotNil: [(self externalizeBoundsToWorld: rep findFullBoundsInOwner) extent].
	off := Animator centerOffsetOf: aWindow.
	fromScale := aWindow location scale.
	fromCenter := aWindow morphPosition + (off * fromScale).
	cs := (rep notNil and: [aWindow morphExtent notNil])
		ifTrue: [repExt x / aWindow morphExtent x]
		ifFalse: [self isActive ifTrue: [self miniMapScale] ifFalse: [aWindow scale]].
	self setProperty: #dragOffset toValue: off.
	self setProperty: #dragCarryScale toValue: cs.
	self setProperty: #dragRotation toValue: (((StageOverview default homeLocationOf: aWindow) ifNil: [aWindow location]) radians).
	aWindow unlock.
	self isActive
		ifTrue: [
			aWindow comeToFront.
			self setProperty: #carryRect toValue: (self carryRectFor: aWindow extent: repExt).
			self pickUp: aWindow fromCenter: fromCenter fromScale: fromScale toScale: cs offset: off]
		ifFalse: [UISupervisor ui addMorphFront: aWindow]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
pickUp: aWindow fromCenter: fromCenter fromScale: fromScale toScale: toScale offset: off
	"The active-source grab tween: the full-size desktop window flies, shrinking, onto the LIVE cursor (read from the
	hand each frame), ARCING perpendicular to the dock edge, keeping its captured angle (#dragRotation), into the
	carry-rect placeholder. On landing it deletes the placeholder, then continues into the hand (#land) or, if a drop
	arrived mid-flight (#dragDest), settles and ends the gesture (#drop) -- so the settle starts from the hand."
	| vertical r |
	vertical := (owner respondsTo: #isVertical) and: [owner isVertical].
	r := (self valueOfProperty: #dragRotation) ifNil: [0].
	Animator default
		animate: aWindow
		using: [:t | | here corner center scale |
			here := self world activeHand lastMouseEvent eventPosition.
			corner := Animator dockCornerNear: here far: fromCenter vertical: vertical.
			center := Animator bezierFrom: fromCenter to: here corner: corner at: t.
			scale := fromScale + ((toScale - fromScale) * t).
			Animator placeMorph: aWindow centeredAt: center scale: scale rotation: r offset: off baseRotation: 0]
		duration: 180
		easing: #cubicOut
		onDone: [ | w dest |
			(self valueOfProperty: #carryRect) ifNotNil: [:rr | rr delete].
			self removeProperty: #carryRect.
			w := self valueOfProperty: #dragWindow.
			dest := self valueOfProperty: #dragDest.
			dest isNil
				ifTrue: [self dragChart fire: #land]
				ifFalse: [self settle: w into: dest. self dragChart fire: #drop]]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
proxyAt: aLocalPoint
	"The real window whose representation in me covers aLocalPoint (card-local, the mouse-down localPosition):
	a live mini-map proxy on the active card (answer its window) or a stowed shrunk window on a stowed card
	(answer it). findFullBoundsInOwner is card-local and robust even for locked stowed windows. nil hits bare
	card."
	self isActive
		ifTrue: [
			^ (self proxies detect: [:p | p findFullBoundsInOwner containsPoint: aLocalPoint] ifNone: [nil])
				ifNotNil: [:p | p window]]
		ifFalse: [
			^ self stowedWindows detect: [:w | w findFullBoundsInOwner containsPoint: aLocalPoint] ifNone: [nil]]! !

!SpaceCard methodsFor: 'drag-drop' stamp: ''!
settle: aWindow into: targetCard
	"Land a carried window (Option B drop), animated either way for symmetry. Active target -> the window flies out
	to its full-size desktop home while its rect drifts into the mini-map slot (flySettle:onto:). Stowed target ->
	the window glides into that card's mini-map slot, shrinking (flySettleStowed:onto:). Each commits the model move
	and ends the flight at its own landing."
	targetCard isActive
		ifTrue: [^ self flySettle: aWindow onto: targetCard]
		ifFalse: [^ self flySettleStowed: aWindow onto: targetCard]! !

!StageOverview methodsFor: 'testing' stamp: ''!
isIncludedInTaskbar
	^ false! !

!StageOverview methodsFor: 'testing' stamp: ''!
isSettled
	"The overview is up and at rest: the Stage sits in overview/visible. The Stage's mode chart is the
	ONLY overview state -- this morph is a view driving it (see Stage>>modeChart)."
	^ Stage default mode is: #visible! !

!StageOverview methodsFor: 'initialization' stamp: ''!
initialize
	super initialize.
	windows := OrderedCollection new.
	fromMap := IdentityDictionary new.
	toMap := IdentityDictionary new.
	originMap := IdentityDictionary new.
	animDuration := 300.
	self color: Color transparent.
	self morphExtent: 0 @ 0! !

!StageOverview methodsFor: 'animation' stamp: ''!
animateThen: doneBlock
	"Run the shared-timeline tween for all windows on the Animator: each frame the eased t fans
	out to every window via apply:at:. doneBlock finishes the mode transition. Registered on self,
	so a later enter/join/exit supersedes any prior overview animation (dedup per morph)."
	Animator default
		animate: self
		using: [:t | windows do: [:w | self apply: w at: t]]
		duration: animDuration
		easing: #cubicInOut
		onDone: doneBlock! !

!StageOverview methodsFor: 'animation' stamp: ''!
animateToFreshLayoutArcing: arcWindow vertical: dockVertical
	"Lay the CURRENT `windows` set out fresh and tween everyone there on the shared timeline. Reset each to
	its home (so the natural layout measures full-size bounds), recompute the grid, then cache each window's
	tween from where it currently is to its new slot. arcWindow (or nil) is a newcomer that arcs in from a
	dock edge of orientation dockVertical (when non-nil) and rides on top; everyone else moves straight.
	Shared by joinWindow: (after adding one) and leaveWindow: (after dropping one). Empty set -> just exit.
	On the Stage's chart this is the #reflow edge (visible -> opening), landing with #opened."
	| world area newLayout currentLocs |
	windows isEmpty ifTrue: [^ self exit].
	Stage default mode fire: #reflow.
	world := WorldMorph allInstances first.
	currentLocs := IdentityDictionary new.
	windows do: [:w | currentLocs at: w put: w location copy].
	windows do: [:w | w location: (originMap at: w) copy].
	area := Stage default arena insetBy: 32 @ 32.
	newLayout := self naturalLayoutFor: windows in: area spacing: 24 * self hostScale accuracy: 20 * self hostScale.
	windows do: [:w | | c |
		w scaleToFitInto: (newLayout at: w).
		toMap at: w put: w location copy.
		w location: (currentLocs at: w) copy.
		fromMap at: w put: (currentLocs at: w).
		c := (w == arcWindow and: [dockVertical notNil])
			ifTrue: [Animator dockCornerNear: (currentLocs at: w) translation far: (toMap at: w) translation vertical: dockVertical]
			ifFalse: [nil].
		self cacheLerpFor: w from: (fromMap at: w) to: (toMap at: w) corner: c].
	arcWindow ifNotNil: [arcWindow comeToFront].
	self comeToFront.
	world taskbar ifNotNil: [:tb | tb comeToFront].
	self animateThen: [Stage default mode fire: #opened]! !

!StageOverview methodsFor: 'animation' stamp: ''!
apply: aMorph at: t
	"One frame: lerp scale (slots 1..2), trace position along the quadratic Bezier (slots 3..5), lerp ROTATION
	(slots 7..8). For a plain reflow/enter/exit from==to, so the rotation just holds constant -- a rotated window
	keeps its rotation through the overview. Only dock-joins arc the
	position."
	| entry s p r loc |
	entry := aMorph valueOfProperty: #exposeAnimLerp.
	entry ifNil: [^ self].
	s := (entry at: 1) + ((entry at: 2) * t).
	p := Animator bezierFrom: (entry at: 3) to: (entry at: 4) corner: (entry at: 5) at: t.
	r := (entry at: 7) + ((entry at: 8) * t).
	loc := entry at: 6.
	loc withRotation: r scale: s.
	loc withTranslation: p.
	aMorph location: loc! !

!StageOverview methodsFor: 'animation' stamp: ''!
cacheLerpFor: aMorph from: fromLoc to: toLoc
	"Straight-line tween (control point defaults to the midpoint). See the corner: variant."
	self cacheLerpFor: aMorph from: fromLoc to: toLoc corner: nil! !

!StageOverview methodsFor: 'animation' stamp: ''!
cacheLerpFor: aMorph from: fromLoc to: toLoc corner: cornerP
	"Precompute the per-frame tween: scale (start+delta), position (quadratic Bezier p0->p1 bending through cornerP;
	nil cornerP => midpoint => straight lerp), and ROTATION (start+delta, in radians). The layout never changes a
	window's rotation (scaleToFitInto: only scales+repositions), so for a plain reflow from==to and the rotation
	lerp simply holds it constant -- which is what stops a rotated window being flattened. Reuses the cached loc."
	| fromS toS fromP toP loc corner fromR toR |
	fromS := fromLoc scale.
	toS := toLoc scale.
	fromP := fromLoc translation.
	toP := toLoc translation.
	fromR := fromLoc radians.
	toR := toLoc radians.
	corner := cornerP ifNil: [(fromP + toP) / 2].
	loc := aMorph valueOfProperty: #exposeAnimLoc ifAbsent: [
		| newLoc |
		newLoc := AffineTransformation new.
		aMorph setProperty: #exposeAnimLoc toValue: newLoc.
		newLoc].
	aMorph setProperty: #exposeAnimLerp toValue:
		{fromS. toS - fromS. fromP. toP. corner. loc. fromR. toR - fromR}! !

!StageOverview methodsFor: 'animation' stamp: ''!
captureTargets: morphs in: area
	"AffineTransformation is mutable, so we deep-copy at every snapshot.
	Also populates the per-morph lerp cache used by step/apply:at:."
	| layouts |
	layouts := self naturalLayoutFor: morphs in: area spacing: 24 * self hostScale accuracy: 20 * self hostScale.
	morphs do: [:w |
		| origLoc |
		origLoc := w location copy.
		fromMap at: w put: origLoc.
		originMap at: w put: origLoc copy.
		w scaleToFitInto: (layouts at: w).
		toMap at: w put: w location copy.
		w location: origLoc copy.
		self cacheLerpFor: w from: (fromMap at: w) to: (toMap at: w)]! !

!StageOverview methodsFor: 'animation' stamp: ''!
joinWindow: newcomer home: homeLoc
	"Straight-in join (no dock arc). See the dockVertical: variant."
	self joinWindow: newcomer home: homeLoc dockVertical: nil! !

!StageOverview methodsFor: 'animation' stamp: ''!
joinWindow: newcomer home: homeLoc dockVertical: vOrNil
	"Fold newcomer into the settled overview: add it to the window set (its home is homeLoc, where it
	returns on exit) and reflow everyone to a fresh natural layout. newcomer arcs in from the dock edge
	when vOrNil is a Boolean (restored from the dock) or moves straight when nil (opened in place); either
	way it rides on top during the fly. Re-flowing windows always move straight."
	| knownSet world |
	self isSettled ifFalse: [^ self].
	(windows includes: newcomer) ifTrue: [^ self].
	world := WorldMorph allInstances first.
	originMap at: newcomer put: homeLoc copy.
	knownSet := windows asIdentitySet.
	knownSet add: newcomer.
	windows := (world submorphs select: [:m | knownSet includes: m]) asArray.
	self animateToFreshLayoutArcing: newcomer vertical: vOrNil! !

!StageOverview methodsFor: 'layout' stamp: ''!
naturalLayoutFor: morphs in: area spacing: spacing accuracy: accuracy
	"Port of KWin ExpoLayout::calculateWindowTransformationsNatural.
	Returns a Dictionary mapping each morph to a target Rectangle inside `area`."
	| targets bounds halfSpacing overlap fitScale newBounds |
	targets := IdentityDictionary new.
	morphs isEmpty ifTrue: [^ targets].
	bounds := nil.
	morphs do: [:m |
		| r |
		r := m findFullBoundsInOwner.
		targets at: m put: r.
		bounds := bounds ifNil: [r] ifNotNil: [bounds merge: r]].
	halfSpacing := spacing // 2.
	[overlap := false.
	 morphs do: [:w |
		morphs do: [:e |
			w == e ifFalse: [
				| tw te diff len |
				tw := targets at: w.
				te := targets at: e.
				((tw expandBy: halfSpacing) intersects: (te expandBy: halfSpacing)) ifTrue: [
					overlap := true.
					diff := te center - tw center.
					(diff x = 0 and: [diff y = 0]) ifTrue: [diff := 1 @ 0].
					len := diff x abs + diff y abs.
					diff := diff * (accuracy asFloat / len).
					targets at: w put: (Rectangle origin: tw origin - diff extent: tw extent).
					targets at: e put: (Rectangle origin: te origin + diff extent: te extent).
					bounds := (bounds merge: (targets at: w)) merge: (targets at: e)]]]].
	 overlap] whileTrue.
	fitScale := (bounds width <= area width and: [bounds height <= area height])
		ifTrue: [1.0]
		ifFalse: [(area width / bounds width) min: (area height / bounds height)].
	fitScale := fitScale asFloat.
	newBounds := Rectangle
		origin: ((bounds origin x - ((area width / fitScale - bounds width) / 2)) @ (bounds origin y - ((area height / fitScale - bounds height) / 2)))
		extent: ((area width / fitScale) @ (area height / fitScale)).
	targets associations do: [:assoc |
		| r |
		r := assoc value.
		targets at: assoc key put: (Rectangle
			origin: (((r origin - newBounds origin) * fitScale) + area origin)
			extent: r extent * fitScale)].
	^ targets! !

!StageOverview methodsFor: 'public' stamp: 'ML 3/Jul/2026 14:41:24'!
connectStage
	"Listen to the Stage for window membership: #managed -> join the grid, #forgotten ->
	leave it, #moved -> join or leave depending on whether the window landed on the shown
	space (windowMoved:). isSettled gates all three -- the join/leave choreography only
	makes sense on a settled grid. Subscribed under the #overview key: idempotent, and a
	recreated overview replaces its predecessor. (The dock listens separately for
	switches -- see Dock>>connectStage, which wires this up at install time.)"
	Stage default onChange: [:evt :arg |
		evt == #managed ifTrue: [self isSettled ifTrue: [self joinFromOpening: arg]].
		evt == #forgotten ifTrue: [self isSettled ifTrue: [self leaveWindow: arg]].
		evt == #moved ifTrue: [self isSettled ifTrue: [self windowMoved: arg]]]
		for: #overview! !

!StageOverview methodsFor: 'public' stamp: ''!
enter
	"Tile every managed desktop window into a grid in the arena (which already excludes the dock).
	Drives the Stage's mode chart: entering is only possible from live/settled (the chart's missing edges
	guard against mid-switch capture), #openOverview fires as the tween starts and #opened when it lands.
	The overview morph is a transparent, full-screen layer that only catches clicks/hover -- no painted
	backdrop. The dock is kept in front so it stays usable. The tween runs on the shared Animator."
	| world area |
	(Stage default mode can: #openOverview) ifFalse: [^ self].
	world := WorldMorph allInstances first.
	area := Stage default arena insetBy: (32 @ 32) * self hostScale.
	windows := world desktopWindows asArray.
	windows isEmpty ifTrue: [^ self].
	self visible: true.
	fromMap := IdentityDictionary new.
	toMap := IdentityDictionary new.
	self captureTargets: windows in: area.
	self morphPosition: 0 @ 0.
	self morphExtent: world morphExtent.
	Stage default mode fire: #openOverview.
	owner ifNil: [world addMorph: self].
	self comeToFront.
	world taskbar ifNotNil: [:tb | tb comeToFront].
	self animateThen: [Stage default mode fire: #opened]! !

!StageOverview methodsFor: 'public' stamp: ''!
exit
	"Animate every window back to its original location, then close: #dismiss fires now, #closed when the
	tween lands -- and re-entering live/settled drains any space switch queued while the overview was up.
	Clears hover on the way out. A no-op unless the overview is up (the chart rejects #dismiss otherwise)."
	(Stage default mode fire: #dismiss) ifFalse: [^ self].
	self setProperty: #hoveredWindow toValue: nil.
	self redrawNeeded.
	windows do: [:w |
		fromMap at: w put: w location copy.
		toMap at: w put: (originMap at: w) copy.
		self cacheLerpFor: w from: (fromMap at: w) to: (toMap at: w)].
	owner ifNil: [WorldMorph allInstances first addMorph: self].
	self animateThen: [
		windows := OrderedCollection new.
		fromMap := IdentityDictionary new.
		toMap := IdentityDictionary new.
		originMap := IdentityDictionary new.
		self morphExtent: 0 @ 0.
		Stage default mode fire: #closed]! !

!StageOverview methodsFor: 'public' stamp: ''!
joinFromDock: newcomer home: homeLoc vertical: aBool
	"A window restored from the dock while the overview is open joins the layout, arcing in from the
	dock edge (orientation aBool), and returns to homeLoc (its real home) when the overview closes."
	^ self joinWindow: newcomer home: homeLoc dockVertical: aBool! !

!StageOverview methodsFor: 'public' stamp: ''!
joinFromMove: aWindow
	"A window dragged onto the shown space while the overview is up: reflow it INTO its grid slot, arcing from where
	it was dropped, IN SYNC with the others -- the move analogue of a dock restore (joinFromDock:), so it never
	lands-then-reflows. Rebuilds the real home location from the Placement (centre -> scale) for the layout/exit
	target, and drops any stale membership first so a window dragged-and-returned (still in `windows`) re-flows
	instead of no-opping."
	| home homeLoc |
	self isSettled ifFalse: [^ self].
	home := (Stage default placementOf: aWindow) ifNotNil: [:p | p home].
	(home isNil or: [aWindow morphExtent isNil]) ifTrue: [^ self].
	homeLoc := AffineTransformation new.
	homeLoc withRotation: 0 scale: home value.
	homeLoc withTranslation: (home key - ((aWindow morphExtent / 2) * home value)).
	windows := windows copyWithout: aWindow.
	self joinFromDock: aWindow home: homeLoc vertical: ((Dock current notNil) and: [Dock current isVertical])! !

!StageOverview methodsFor: 'public' stamp: ''!
joinFromOpening: newcomer
	"A window opened while the overview is open joins the layout; its home is where it opened."
	(newcomer isManagedDesktopMorph) ifFalse: [^ self].
	^ self joinWindow: newcomer home: newcomer location copy! !

!StageOverview methodsFor: 'public' stamp: ''!
leaveWindow: departing
	"A managed window was closed/removed while the overview is settled: drop it from the layout and reflow
	the survivors into the freed space (animated, on the shared timeline). No-op if it was not part of the
	overview; if it was the last one the overview just closes. Mirror of joinWindow:."
	self isSettled ifFalse: [^ self].
	(windows includes: departing) ifFalse: [^ self].
	windows := windows copyWithout: departing.
	fromMap removeKey: departing ifAbsent: [].
	toMap removeKey: departing ifAbsent: [].
	originMap removeKey: departing ifAbsent: [].
	self animateToFreshLayoutArcing: nil vertical: nil! !

!StageOverview methodsFor: 'public' stamp: ''!
toggle
	"Enter when the Stage can host an overview (live and settled -- so never mid-switch), leave when it
	is up. Presses during the opening/closing tween fall through to nothing."
	(Stage default mode can: #openOverview) ifTrue: [^ self enter].
	self isSettled ifTrue: [^ self exit]! !

!StageOverview methodsFor: 'top window' stamp: ''!
collapse
	"StageOverview should never auto-collapse/hide — exit instead."
	self exit! !

!StageOverview methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Hover outline OUTSIDE the target, FOLLOWING its rotation. For a SystemWindow we draw the accent squircle in a
	frame centred on the window, rotated by its angle, at WORLD scale (scale 1, NOT the tile scale) -- so the stroke
	weight and the offset stay constant however small the tile is, while the squircle's extent (window world size)
	and corner radius shrink with the tile. The frame is the window's rotation+centre composed onto the canvas's
	current transform. Non-SystemWindows (no morphExtent / corner radius) fall back to the axis-aligned AABB."
	| hovered s off |
	hovered := self valueOfProperty: #hoveredWindow.
	hovered ifNil: [^ self].
	s := DisplayScreen hostOSScaleFactor.
	off := 4 * s.
	(hovered isKindOf: SystemWindow)
		ifTrue: [ | loc wExtent wScale worldExt worldCentre visRadius saved frameX |
			loc := hovered location.
			wExtent := hovered morphExtent.
			wScale := loc scale.
			worldExt := wExtent * wScale.
			worldCentre := loc transform: (wExtent / 2).
			visRadius := Theme current roundedWindowRadius * s * wScale.
			frameX := AffineTransformation new.
			frameX withRotation: loc radians scale: 1.0.
			frameX withTranslation: worldCentre.
			saved := aCanvas currentTransformation.
			aCanvas geometryTransformation: (saved composedWith: frameX).
			aCanvas strokeWidth: off color: (Theme current accentColor alpha: 0.7) do: [
				aCanvas
					squircleMinX: (worldExt x / 2 + off) negated maxX: worldExt x / 2 + off
					minY: (worldExt y / 2 + off) negated maxY: worldExt y / 2 + off
					radius: visRadius + off].
			aCanvas geometryTransformation: saved]
		ifFalse: [ | b |
			b := hovered findFullBoundsInOwner.
			aCanvas strokeWidth: off color: (Theme current accentColor alpha: 0.7) do: [
				aCanvas squircleMinX: b left - off maxX: b right + off minY: b top - off maxY: b bottom + off radius: off]]! !

!StageOverview methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	"Only need the vector canvas while settled, to stroke the hover outlines. During the opening/closing
	tween drawOn: paints nothing, so forcing full-screen vector rendering then is pure waste -- it roughly
	doubles the per-frame repaint cost."
	^ self isSettled! !

!StageOverview methodsFor: 'accessing' stamp: ''!
animDuration
	"The shared-timeline tween length (ms) for enter/exit/join. Configurable; kept here on the class
	that owns the overview animation rather than in a global, so each gesture-owner sets its own feel."
	^ animDuration! !

!StageOverview methodsFor: 'accessing' stamp: ''!
animDuration: ms
	animDuration := ms! !

!StageOverview methodsFor: 'accessing' stamp: ''!
homeLocationOf: aWindow
	"The window's REAL location while the overview is tiling it: enter/captureTargets borrows the live `location`
	for the grid layout and parks the true desktop location in originMap, so anything reading the live `location`
	mid-overview sees the shrunk tile. Answers that stashed real location, or nil when the overview is not holding
	this window (the caller then trusts the live location). originMap is empty whenever the overview is closed."
	^ originMap at: aWindow ifAbsent: [nil]! !

!StageOverview methodsFor: 'stage choreography' stamp: ''!
windowMoved: aWindow
	"A window changed space via a drag (Stage #moved) while the overview is up: if it LEFT the shown space, drop its
	tile and reflow the survivors. JOINING the shown space is driven directly by flySettle:onto: (joinFromMove:) so
	the arc stays in sync with the reflow; flySettleStowed:onto: leaves directly too, so this is just the idempotent
	backstop for the leave."
	(Stage default placementOf: aWindow) ifNotNil: [:p |
		p space == Stage default shown ifFalse: [self leaveWindow: aWindow]]! !

!StageOverview methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	"Only intercept clicks while the layout is settled -- leave mid-animation clicks alone."
	^ self isSettled! !

!StageOverview methodsFor: 'events' stamp: ''!
handlesMouseOver: anEvent
	^ true! !

!StageOverview methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: aPoint
	"Hit-test the click against tiled windows. Hit: focus + exit. Miss: just exit. Ignore during animation."
	| hit worldPos |
	self isSettled ifFalse: [^ self].
	worldPos := anEvent eventPosition.
	hit := windows detect: [:w | w findFullBoundsInOwner containsPoint: worldPos] ifNone: [nil].
	hit ifNotNil: [hit showAndComeToFront].
	self exit! !

!StageOverview methodsFor: 'events' stamp: ''!
mouseLeave: anEvent
	"Clear hover when cursor leaves the overview entirely."
	| current |
	self isSettled ifFalse: [^ self].
	current := self valueOfProperty: #hoveredWindow.
	current ifNil: [^ self].
	self setProperty: #hoveredWindow toValue: nil.
	self invalidateLocalRect: ((current findFullBoundsInOwner expandBy: 8 * self hostScale) encompassingIntegerRectangle)! !

!StageOverview methodsFor: 'events' stamp: ''!
mouseMove: anEvent localPosition: aPoint
	"While settled, track which tile the cursor is over. Refresh only the specific outline regions."
	| hit current oldR newR margin |
	self isSettled ifFalse: [^ self].
	hit := windows detect: [:w | w findFullBoundsInOwner containsPoint: anEvent eventPosition] ifNone: [nil].
	current := self valueOfProperty: #hoveredWindow.
	hit == current ifTrue: [^ self].
	margin := 8 * self hostScale.  "covers the hover outline (4dp offset + 4dp stroke) at any display scale"
	oldR := current ifNotNil: [(current findFullBoundsInOwner expandBy: margin) encompassingIntegerRectangle].
	newR := hit ifNotNil: [(hit findFullBoundsInOwner expandBy: margin) encompassingIntegerRectangle].
	self setProperty: #hoveredWindow toValue: hit.
	oldR ifNotNil: [self invalidateLocalRect: oldR].
	newR ifNotNil: [self invalidateLocalRect: newR]! !

!StageOverview class methodsFor: 'accessing' stamp: ''!
default
	^ Default ifNil: [Default := self new]! !

!WindowProxyMorph methodsFor: 'accessing' stamp: ''!
window
	"The desktop window this proxy mirrors (used to match/sync/drop it)."
	^ window! !

!WindowProxyMorph methodsFor: 'accessing' stamp: ''!
window: aMorph
	window := aMorph! !

!WindowProxyMorph methodsFor: 'testing' stamp: ''!
isIncludedInTaskbar
	"Chrome -- a mini-map proxy, never a managed desktop window."
	^ false! !

!WindowProxyMorph methodsFor: 'testing' stamp: ''!
requiresVectorCanvas
	^ true! !

!WindowProxyMorph methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	"Let clicks pass through to the card (which toggles overview / switches groups)."
	^ false! !

!WindowProxyMorph methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"A window mini-rep: a squircle of the morph extent filled in its window colour with a thin black
	outline. Drawn axis-aligned in local coordinates; the morphic engine applies this morph rotation
	and scale, so a rotated/scaled window mini-rep comes out rotated/scaled without any rotated-path
	maths."
	| bounds s r |
	bounds := self localBounds.
	s := self hostScale.
	r := (Theme current roundedMiniRadius * s) min: ((bounds width min: bounds height) / 2).
	aCanvas fillColor: (color ifNil: [Color gray]) do: [aCanvas squircle: bounds radius: r].
	aCanvas strokeWidth: 0.5 * s color: Color black do: [aCanvas squircle: bounds radius: r]! !

!StateMachineMorph methodsFor: 'initialization' stamp: ''!
initialize
	"A light panel; the chart lays itself out as a ring of states once one is set."
	super initialize.
	self color: (Color gray: 0.97).
	self morphExtent: (280 @ 280) * DisplayScreen hostOSScaleFactor! !

!StateMachineMorph methodsFor: 'accessing' stamp: ''!
chart: aChart
	"Render aChart, laying it out eagerly so the extent is set BEFORE any draw. Subscribe to follow transitions
	live -- BUT guard on being in the world, so a deleted morph's lingering observer is a silent no-op (no draw
	on a dead morph, no observer leak)."
	chart := aChart.
	aChart onTransition: [:c | self world ifNotNil: [self redrawNeeded]].
	self layout.
	self redrawNeeded! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawBackward: ev from: bf to: bt floor: fy on: aCanvas
	"A backward edge routed UNDER the row at floor fy: down from the source bottom,
	along, up into the target bottom, label on the floor segment."
	| s start end |
	s := self hostScale.
	start := bf center x @ bf bottom.
	end := bt center x @ bt bottom.
	self drawEdge: {start. start x @ fy. end x @ fy. end}
		label: ev labelAt: ((start x + end x) / 2) @ (fy + (12 * s)) on: aCanvas! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawCeiling: ev from: bf to: bt ceil: cy on: aCanvas
	"A skip edge routed OVER the top at ceiling cy: up from the source top, across,
	down into the target top."
	| s start end |
	s := self hostScale.
	start := bf center x @ bf top.
	end := bt center x @ bt top.
	self drawEdge: {start. start x @ cy. end x @ cy. end}
		label: ev labelAt: ((start x + end x) / 2) @ (cy - (5 * s)) on: aCanvas! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawEdge: pts label: ev labelAt: labelPt on: aCanvas
	"One ink pass for the WHOLE edge: the polyline shaft and the arrowhead V as
	subpaths of a single stroked path, so overlaps -- joints, and the barbs meeting
	the shaft at the tip -- get uniform coverage instead of stacked alpha (the
	translucent ink would otherwise darken into patches). Then the event label."
	| s lc tip prev dir |
	s := self hostScale.
	lc := Theme current text alpha: 0.6.
	tip := pts last.
	prev := pts at: pts size - 1.
	dir := (tip - prev) / ((tip - prev) r max: 0.001).
	aCanvas strokeWidth: 2.4 * s color: lc do: [
		aCanvas moveTo: pts first.
		2 to: pts size do: [:i | aCanvas lineTo: (pts at: i)].
		aCanvas moveTo: tip - ((dir rotatedBy: 0.42) * (12 * s)).
		aCanvas lineTo: tip.
		aCanvas lineTo: tip - ((dir rotatedBy: 0.42 negated) * (12 * s))].
	aCanvas drawString: ev asString atCenterXBaselineY: labelPt
		font: self labelFont color: (Theme current text alpha: 0.9)! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawForward: ev from: bf to: bt on: aCanvas
	"A forward edge: exit the source's right side, enter the target's left side,
	orthogonal jog if the rows differ, event label above the mid."
	| s start end pts |
	s := self hostScale.
	start := bf right @ bf center y.
	end := bt left @ bt center y.
	pts := start y = end y
		ifTrue: [{start. end}]
		ifFalse: [ | mx | mx := ((start x + end x) / 2) max: (start x + (18 * s)). {start. mx @ start y. mx @ end y. end}].
	self drawEdge: pts label: ev labelAt: ((start + end) / 2) - (0 @ (11 * s)) on: aCanvas! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"A light panel (inset so its stroke stays inside the morph bounds), then the nested Harel chart: compound
	states are containers holding their children; the ACTIVE PATH is lit. Transitions drawn last, over the boxes."
	| bnd r inset |
	chart isNil ifTrue: [^ self].
	positions isNil ifTrue: [self layout].
	bnd := self localBounds.
	r := 16 * self hostScale.
	inset := 2 * self hostScale.
	aCanvas fillColor: (Color gray: 0.97) do: [
		aCanvas squircleMinX: bnd left + inset maxX: bnd right - inset minY: bnd top + inset maxY: bnd bottom - inset radius: r].
	aCanvas strokeWidth: 1 * self hostScale color: (Theme current text alpha: 0.15) do: [
		aCanvas squircleMinX: bnd left + inset maxX: bnd right - inset minY: bnd top + inset maxY: bnd bottom - inset radius: r].
	self rootStatesOrdered do: [:root | self drawState: root on: aCanvas].
	self drawTransitionsOn: aCanvas! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawState: st on: aCanvas
	"A squircle frame; accent when active (fill for a live leaf, faint wash for a live compound). A compound titles
	itself top-left and recurses into its children."
	| box active isComp r fillC frameC strokeW |
	box := positions at: st ifAbsent: [^ self].
	active := chart is: st.
	isComp := self isCompound: st.
	r := 12 * self hostScale.
	fillC := active
		ifTrue: [isComp ifTrue: [Theme current accentColor alpha: 0.10] ifFalse: [Theme current accentColor]]
		ifFalse: [isComp ifTrue: [Color transparent] ifFalse: [Color white]].
	frameC := active ifTrue: [Theme current accentColor] ifFalse: [Theme current text alpha: 0.45].
	strokeW := (active ifTrue: [2.6] ifFalse: [1.4]) * self hostScale.
	fillC isTransparent ifFalse: [
		aCanvas fillColor: fillC do: [aCanvas squircleMinX: box left maxX: box right minY: box top maxY: box bottom radius: r]].
	aCanvas strokeWidth: strokeW color: frameC do: [
		aCanvas squircleMinX: box left maxX: box right minY: box top maxY: box bottom radius: r].
	isComp
		ifTrue: [
			aCanvas drawString: st asString
				at: (box left + self pad) @ (box top + (self pad * 0.6))
				font: self labelFont
				color: (active ifTrue: [Theme current accentColor] ifFalse: [Theme current text alpha: 0.75]).
			(self orderedChildrenOf: st) do: [:ch | self drawState: ch on: aCanvas]]
		ifFalse: [ | c |
			c := box center.
			aCanvas drawString: st asString
				atCenterXBaselineY: c x @ (c y + (self labelFont ascent / 3))
				font: self labelFont
				color: (active ifTrue: [Color white] ifFalse: [Theme current text])]! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
drawTransitionsOn: aCanvas
	"Adjacent forward edges go straight between columns; skip-forward edges route over the top; backward edges route
	under the row. Ceilings and floors are each staggered so parallel edges never overlap."
	| s rowTop floorY backs ceils |
	s := self hostScale.
	floorY := positions values inject: 0 into: [:m :b | m max: b bottom].
	rowTop := positions values inject: 1000000 into: [:m :b | m min: b top].
	backs := OrderedCollection new.
	ceils := OrderedCollection new.
	chart allTransitions do: [:tr | | bf bt |
		(tr at: 1) == (tr at: 3) ifFalse: [
			bf := positions at: (tr at: 1) ifAbsent: [nil].
			bt := positions at: (tr at: 3) ifAbsent: [nil].
			(bf notNil and: [bt notNil]) ifTrue: [
				(bt left < (bf right - (3 * s)))
					ifTrue: [backs add: {tr at: 2. bf. bt}]
					ifFalse: [(self edgeCrosses: bf to: bt)
						ifTrue: [ceils add: {tr at: 2. bf. bt}]
						ifFalse: [self drawForward: (tr at: 2) from: bf to: bt on: aCanvas]]]]].
	ceils keysAndValuesDo: [:i :c | self drawCeiling: (c at: 1) from: (c at: 2) to: (c at: 3) ceil: (rowTop - (i * 22 * s)) on: aCanvas].
	backs keysAndValuesDo: [:i :b | self drawBackward: (b at: 1) from: (b at: 2) to: (b at: 3) floor: (floorY + (i * 24 * s)) on: aCanvas]! !

!StateMachineMorph methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!StateMachineMorph methodsFor: 'metrics' stamp: ''!
fontHeight
	^ self labelFont ascent + self labelFont descent! !

!StateMachineMorph methodsFor: 'metrics' stamp: ''!
gap
	^ 20 * self hostScale! !

!StateMachineMorph methodsFor: 'metrics' stamp: ''!
labelFont
	^ FontFamily defaultFamilyAndPointSize! !

!StateMachineMorph methodsFor: 'metrics' stamp: ''!
margin
	^ 22 * self hostScale! !

!StateMachineMorph methodsFor: 'metrics' stamp: ''!
pad
	^ 9 * self hostScale! !

!StateMachineMorph methodsFor: 'metrics' stamp: ''!
titleH
	^ self fontHeight + (10 * self hostScale)! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
childrenOf: aState
	^ chart states select: [:s | (chart parentOf: s) == aState]! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
edgeCrosses: bf to: bt
	"True if a straight forward edge bf->bt would pass horizontally through another box on the row band -- then it
	must be routed over the top (a skip edge)."
	^ positions values anySatisfy: [:b |
		(b ~~ bf) and: [(b ~~ bt) and: [
			(b left >= (bf right - 3)) and: [(b right <= (bt left + 3)) and: [
				(b top < bf bottom) and: [b bottom > bf top]]]]]]! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
isCompound: aState
	^ (self childrenOf: aState) notEmpty! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
layout
	"Pack the tree, then fit the morph with room ABOVE for skip edges (routed over the top) and BELOW for backward
	edges (routed under the row) -- XState/ELK style."
	| x maxR rowBottom nBack nSkip topRoom sh |
	positions := IdentityDictionary new.
	x := self margin.
	self rootStatesOrdered do: [:root | | box | box := self layoutState: root at: (x @ self margin). x := box right + (self gap * 1.5)].
	maxR := (positions values inject: 0 into: [:m :b | m max: b right]) + self margin.
	rowBottom := positions values inject: 0 into: [:m :b | m max: b bottom].
	nBack := 0. nSkip := 0.
	chart allTransitions do: [:tr | | bf bt |
		(tr at: 1) == (tr at: 3) ifFalse: [
			bf := positions at: (tr at: 1) ifAbsent: [nil].
			bt := positions at: (tr at: 3) ifAbsent: [nil].
			(bf notNil and: [bt notNil]) ifTrue: [
				(bt left < (bf right - 3))
					ifTrue: [nBack := nBack + 1]
					ifFalse: [(self edgeCrosses: bf to: bt) ifTrue: [nSkip := nSkip + 1]]]]].
	topRoom := nSkip = 0 ifTrue: [0] ifFalse: [(nSkip * 22 + 16) * self hostScale].
	sh := 0 @ topRoom.
	topRoom > 0 ifTrue: [positions keysAndValuesDo: [:k :b | positions at: k put: ((b origin + sh) corner: (b corner + sh))]].
	self morphExtent: (maxR max: 140) @ (topRoom + rowBottom + ((nBack * 24 + 46) * self hostScale))! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
layoutState: st at: tl
	"Assign st (and, if compound, its subtree) a box; answer it. Leaf = label + padding; compound = children
	packed left-to-right below a title band, wrapped with padding."
	| box |
	(self isCompound: st)
		ifFalse: [box := tl extent: (self leafExtentOf: st)]
		ifTrue: [ | cx cy maxH |
			cx := tl x + self pad.
			cy := tl y + self titleH.
			maxH := 0.
			(self orderedChildrenOf: st) do: [:ch | | cb |
				cb := self layoutState: ch at: (cx @ cy).
				cx := cb right + self gap.
				maxH := maxH max: cb height].
			box := tl extent: ((cx - self gap + self pad - tl x) @ (self titleH + maxH + self pad))].
	positions at: st put: box.
	^ box! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
leafExtentOf: st
	^ ((self labelFont widthOfString: st asString) + (2 * self pad)) @ (self fontHeight + (2 * self pad))! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
orderedChildrenOf: aState
	"Children ordered by Sugiyama-style RANK: BFS depth from the compound's initial child, following transitions
	among these children -- so the flow reads left-to-right and adjacent (ELK layer assignment). Unreachable
	children sort last by name."
	| kids init rank frontier |
	kids := self childrenOf: aState.
	kids isEmpty ifTrue: [^ #()].
	init := chart initialChildOf: aState.
	(init isNil or: [(kids includes: init) not])
		ifTrue: [init := (kids asSortedCollection: [:a :b | a asString < b asString]) first].
	rank := IdentityDictionary new.
	rank at: init put: 0.
	frontier := OrderedCollection with: init.
	[frontier isEmpty] whileFalse: [ | cur curRank |
		cur := frontier removeFirst.
		curRank := rank at: cur.
		(chart allTransitions select: [:tr | ((tr at: 1) == cur) and: [kids includes: (tr at: 3)]]) do: [:tr | | tgt |
			tgt := tr at: 3.
			(rank includesKey: tgt) ifFalse: [rank at: tgt put: curRank + 1. frontier addLast: tgt]]].
	^ (kids asSortedCollection: [:a :b | | ra rb |
		ra := rank at: a ifAbsent: [9999]. rb := rank at: b ifAbsent: [9999].
		ra = rb ifTrue: [a asString < b asString] ifFalse: [ra < rb]]) asArray! !

!StateMachineMorph methodsFor: 'layout' stamp: ''!
rootStatesOrdered
	"Top-level states (no parent), the initial one's root first."
	| roots initRoot |
	roots := chart states select: [:s | (chart parentOf: s) isNil].
	initRoot := chart initial.
	[(chart parentOf: initRoot) notNil] whileTrue: [initRoot := chart parentOf: initRoot].
	^ (roots includes: initRoot)
		ifTrue: [(Array with: initRoot) , ((roots reject: [:r | r == initRoot]) asSortedCollection: [:a :b | a asString < b asString]) asArray]
		ifFalse: [(roots asSortedCollection: [:a :b | a asString < b asString]) asArray]! !

!StateMachineMorph class methodsFor: 'instance creation' stamp: ''!
on: aChart
	^ self new chart: aChart! !

!StateMachineMorph class methodsFor: 'examples' stamp: ''!
exampleTurnstile
	"A live turnstile chart to play with: coin unlocks, push re-locks.
	   StateMachineMorph exampleTurnstile
	Opens the diagram in the world; fire events on the returned machine
	(machine fire: #coin) and watch the accent state move."
	| machine morph |
	machine := StateMachine initial: #locked states: {
		#locked   -> { #coin -> #unlocked }.
		#unlocked -> { #push -> #locked } }.
	morph := self on: machine.
	morph openInWorld.
	^ machine! !

!StateMachineMorph class methodsFor: 'examples' stamp: ''!
worldMenuOptions
	"Place 'State Machine Demo' in the Open section of the World menu."
	^ `{{
			#submenuOf 	-> 		TheWorldMenu openLabel.
			#itemGroup 	-> 		10.
			#itemOrder 	-> 		61.
			#label 			-> 		'State Machine Demo'.
			#object 		-> 		StateMachineMorph.
			#selector 		-> 		#exampleTurnstile.
			#icon 			-> 		#morphsIcon.
			#balloonText 	-> 		'A live Harel state chart: fire events, watch it move'.
		} asDictionary}`! !

!MorphHaloHandle methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"A small white square with an accent border, centred in our (larger) hit
	bounds. Rotate zones are invisible -- they are pure hit areas just outside the
	corners; their only affordance is the rotate cursor."
	| s c half box |
	(self valueOfProperty: #role) == #rotate ifTrue: [^ self].
	s := self hostScale.
	c := self morphExtent / 2.
	half := 3 * s.
	box := (c x - half) @ (c y - half) corner: (c x + half) @ (c y + half).
	aCanvas fillColor: Color white do: [aCanvas squircle: box radius: 1 * s].
	aCanvas strokeWidth: 1 * s color: Theme current accentColor do: [
		aCanvas squircle: (box insetBy: 0.5 * s) radius: 1 * s]! !

!MorphHaloHandle methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!MorphHaloHandle methodsFor: 'events' stamp: ''!
handlesMouseOver: evt
	"Receive mouseEnter:/mouseLeave: so we can show a resize cursor on hover."
	^ true
! !

!MorphHaloHandle methodsFor: 'events' stamp: ''!
mouseEnter: evt
	"Rotate zones show the rotate cursor; resize grips show the edge-resize cursor."
	(self valueOfProperty: #role) == #rotate
		ifTrue: [Cursor currentCursor: MorphHalo rotateCursor]
		ifFalse: [Cursor currentCursor: (Cursor resizeForEdge: (self valueOfProperty: #grip))]! !

!MorphHaloHandle methodsFor: 'events' stamp: ''!
mouseLeave: evt
	"Restore the normal cursor when the pointer leaves the grip."
	Cursor currentCursor: Cursor normalCursor
! !

!SearchField methodsFor: 'events' stamp: ''!
changedAction: aBlock
	"Set a 1-arg block to fire after every keystroke. Argument is the new
	full contents (a String)."
	changedAction := aBlock
! !

!SearchField methodsFor: 'events' stamp: ''!
keyStroke: aKeyboardEvent
	"Fire the change action after every keystroke (post-edit)."
	super keyStroke: aKeyboardEvent.
	changedAction ifNotNil: [
		changedAction valueWithPossibleArgument: self contents]
! !

!SearchField methodsFor: 'accessing' stamp: 'ML 3/Jul/2026 15:39:41'!
placeholder: aString
	"Hint text shown when the field is empty. Drawn in a dim theme ink (see drawOn:)."
	placeholder := aString.
	self redrawNeeded
! !

!SearchField methodsFor: 'drawing' stamp: 'ML 3/Jul/2026 15:39:41'!
drawOn: aCanvas
	"Same as EntryFieldMorph>>drawOn:, plus draw placeholder text when empty
	(regardless of focus — matches macOS/web convention)."
	| delta f |
	aCanvas
		fillRectangle: self localBounds
		color: backgroundColor
		borderWidth: borderWidth
		borderStyleSymbol: #simple
		baseColorForBorder: borderColor.
	self hasSelection ifTrue: [self drawSelectionOn: aCanvas].
	self hasTextCursor ifTrue: [self drawTextCursorOn: aCanvas].
	f := self fontToUse.
	delta := contents isEmpty
		ifFalse: [(f boundsLeftOf: contents first) negated @ 0]
		ifTrue: [0 @ 0].
	contents isEmpty
		ifTrue: [
			placeholder ifNotNil: [
				aCanvas
					drawString: placeholder
					at: self textOffset + delta
					font: f
					color: (Theme current text alpha: 0.4)]]
		ifFalse: [
			aCanvas
				drawString: contents
				at: self textOffset + delta
				font: f
				color: color]
! !

!SearchField methodsFor: 'focus' stamp: ''!
keyboardFocusChange: aBoolean
	"Focus gained or lost. Both mouse-click focus (via HandMorph>>newKeyboardFocus:)
	and tab navigation route through here, so it is the single place to react to a
	focus change. Beyond the base blink + self-redraw, repaint the owner SearchBar
	so its accent stroke tracks focus."
	super keyboardFocusChange: aBoolean.
	self owner ifNotNil: [:o | o redrawNeeded]! !

!SearchField methodsFor: 'layout' stamp: ''!
minimumExtent
	"Inner field height pinned to 24 logical px (scaled to physical).
	EntryFieldMorph's default minimum (3@1 * textBox y) would grow us to font
	lineSpacing + descent, which makes the search bar feel tall. Keep super's x."
	^ super minimumExtent x @ (24 * self hostScale)! !

!SearchField methodsFor: 'layout' stamp: ''!
textOffset
	"Position text exactly like a LabelMorph: origin at the interior (border)
	corner with NO extra descent padding, so the field's baseline (origin +
	ascent) lines up cleanly with adjacent LabelMorph / SymbolMorph glyphs.
	The inherited EntryFieldMorph>>textOffset adds a font descent, which pushed
	the text below where a label sits and forced the search bar to compensate."
	^ (2 * self borderWidth) asPoint! !

!SymbolMorph methodsFor: 'accessing' stamp: ''!
initialize
	"Symbol rendered as a LabelMorph: the glyph is our contents, the SymbolFont
	at the chosen point size is our font. LabelMorph draws it on the baseline and
	auto-sizes to the glyph, so it aligns with adjacent text the way the icon
	font was designed to. No border."
	super initialize.
	borderWidth := 0.
	symbolName := #home.
	self font: (SymbolFont fontDescriptionPointSize: 16).
	self updateGlyph! !

!SymbolMorph methodsFor: 'accessing' stamp: ''!
pointSize
	"The point size of the symbol font we render with."
	^ self fontToUse pointSize! !

!SymbolMorph methodsFor: 'accessing' stamp: ''!
pointSize: anInteger
	"Render the symbol at anInteger points: set our font to the SymbolFont at
	that size. LabelMorph auto-sizes the morph to the glyph box."
	self font: (SymbolFont fontDescriptionPointSize: anInteger)! !

!SymbolMorph methodsFor: 'accessing' stamp: ''!
symbolName
	"Which icon this morph shows: a SymbolFont name like #home or #search."
	^ symbolName! !

!SymbolMorph methodsFor: 'accessing' stamp: ''!
symbolName: aName
	"Display the symbol named aName. Signal if no such symbol is registered."
	(SymbolFont includesName: aName) ifFalse: [
		self error: 'Unknown symbol: ', aName printString].
	symbolName := aName asSymbol.
	self updateGlyph! !

!SymbolMorph methodsFor: 'accessing' stamp: ''!
updateGlyph
	"Set our contents to the single glyph character for symbolName (empty string
	if the symbol is unknown). Goes through super contents: so LabelMorph
	re-fits the morph to the glyph."
	| ch |
	ch := SymbolFont at: symbolName ifAbsent: [nil].
	super contents: (ch isNil
		ifTrue: ['']
		ifFalse: [UnicodeString empty copyWith: ch])! !

!SymbolMorph methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true
! !

!SymbolMorph methodsFor: 'geometry' stamp: ''!
opticalBounds
	"Ink bounds of the glyph. A SymbolMorph's ink depends only on (symbolName,
	pointSize, extent), and menus create MANY identical glyphs (every chevron, every
	check), so the pixel-scanning measurement (super) is cached class-side. The cache
	is append-only and small: glyphs actually used, times a few sizes."
	| key |
	key := { symbolName. self pointSize. self morphExtent }.
	OpticalCache isNil ifTrue: [OpticalCache := Dictionary new].
	^ OpticalCache at: key ifAbsentPut: [super opticalBounds]! !

!SymbolButton methodsFor: 'accessing' stamp: ''!
clickAction: aBlock
	"Block to fire on left-click. Zero-arg."
	clickAction := aBlock! !

!SymbolButton methodsFor: 'accessing' stamp: ''!
idleColor: aColor
	"Set the resting color. Use this (not color:) for state changes on hoverable
	buttons: if a hover brighten is in flight, mouseLeave: restores to the stash --
	writing both keeps a mid-hover state change from being undone on leave."
	self setProperty: #idleColor toValue: aColor.
	self color: aColor! !

!SymbolButton methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"If a #discColor property is set, render as a filled disc with the symbol
	glyph centered on top at #glyphScale of our point size — the search-field
	clear-button look. Otherwise behave as a plain symbol button (super)."
	| discColor box d center glyphFont glyphStr gw ascent descent |
	discColor := self valueOfProperty: #discColor.
	discColor ifNil: [^ super drawOn: aCanvas].
	box := self localBounds.
	d := box height min: box width.
	center := box center.
	aCanvas fillColor: discColor do: [
		aCanvas circleCenter: center radius: d / 2].
	glyphFont := SymbolFont fontDescriptionPointSize:
		(self fontToUse pointSize * (self valueOfProperty: #glyphScale ifAbsent: [0.5])) rounded.
	glyphStr := self contents.
	gw := glyphFont widthOfString: glyphStr.
	ascent := glyphFont ascent.
	descent := glyphFont descent.
	aCanvas
		drawString: glyphStr
		at: (center x - (gw / 2)) @ (center y - ((ascent + descent) / 2))
		font: glyphFont
		color: self color! !

!SymbolButton methodsFor: 'events' stamp: ''!
handlesMouseDown: anEvent
	^ true
! !

!SymbolButton methodsFor: 'events' stamp: ''!
handlesMouseOver: anEvent
	^ true! !

!SymbolButton methodsFor: 'events' stamp: ''!
mouseButton1Down: anEvent localPosition: aPoint
	clickAction ifNotNil: [clickAction value]! !

!SymbolButton methodsFor: 'events' stamp: ''!
mouseEnter: anEvent
	"Brighten while hovered: raise the alpha over the resting color (stashed for
	mouseLeave:). Opaque colors (e.g. the pinned accent) stay as they are."
	| c |
	(self valueOfProperty: #idleColor) isNil ifTrue: [
		self setProperty: #idleColor toValue: color].
	c := self valueOfProperty: #idleColor.
	self color: (c alpha: ((c alpha + 0.45) min: 1)).
	self redrawNeeded! !

!SymbolButton methodsFor: 'events' stamp: ''!
mouseLeave: anEvent
	(self valueOfProperty: #idleColor) ifNotNil: [:c |
		self color: c.
		self redrawNeeded]! !

!FillWidthScrollPane methodsFor: 'layout' stamp: ''!
extentChanged: oldExtent
	"Push my width into the scroller so it can re-flow (height stays whatever
	the scroller decides). Subtract the vertical scrollbar thickness if it's
	showing so the scroller doesn't run under it."
	super extentChanged: oldExtent.
	scroller ifNil: [^ self].
	scroller morphExtent: (self innerWidth) @ scroller morphExtent y
! !

!FillWidthScrollPane methodsFor: 'layout' stamp: ''!
innerWidth
	"Width the scroller must fit into. The pane also reserves an inner padding
	(BorderedBoxMorph) which we must subtract on top of the scrollbar thickness,
	otherwise the scroller's right edge crosses the viewable boundary by the
	padding amount and the pane fires an h-scrollbar."
	| w |
	w := self morphExtent x asInteger - scrollBar thickness - (self padding x * 2).
	^ w max: 1
! !

!FillWidthScrollPane methodsFor: 'drawing' stamp: ''!
drawOn: aCanvas
	"Full-bleed white-alpha panel. We now reach the window edges, and the
	SystemWindow clips its content to the rounded squircle, so we draw a plain
	rectangle (squircle radius 0) with no own rounding and no border -- the
	window's rounded clip and frame provide both. Content + scrollbar via super."
	| bounds |
	bounds := self localBounds.
	aCanvas fillColor: (Color white alpha: 0.35) do: [
		aCanvas
			squircleMinX: bounds left
			maxX: bounds right
			minY: bounds top
			maxY: bounds bottom
			radius: 0].
	super drawOn: aCanvas! !

!FillWidthScrollPane methodsFor: 'drawing' stamp: ''!
requiresVectorCanvas
	^ true! !

!StageTest methodsFor: 'running' stamp: ''!
setUp
	stage := Stage new! !

!StageTest methodsFor: 'tests' stamp: ''!
testArenaCutsReservedStrips
	| full |
	full := stage arena.
	stage reserve: self.
	stage reserve: self. "idempotent: same reserver cuts once"
	self assert: stage arena = ((full left + 100) @ full top corner: full corner)! !

!StageTest methodsFor: 'tests' stamp: ''!
testFlightAnnotation
	stage manage: #w1.
	stage flightBegan: #w1.
	self assert: (stage isInFlight: #w1).
	stage flightEnded: #w1.
	self deny: (stage isInFlight: #w1).
	stage flightBegan: #w1.
	stage forget: #w1.
	self deny: (stage isInFlight: #w1)! !

!StageTest methodsFor: 'tests' stamp: ''!
testForgetDropsEmptiedSpace
	| s1 |
	s1 := stage active.
	stage manage: #w1.
	stage switchTo: stage spaces last.
	stage switchSettled.
	stage manage: #w2.
	stage forget: #w1.
	self deny: (stage spaces includes: s1).
	self assert: (stage placementOf: #w1) isNil.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testForgetDuringSwitchKeepsLaws
	stage manage: #w1.
	stage switchTo: stage spaces last.
	stage forget: #w1.
	stage switchSettled.
	self assert: stage windows isEmpty.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testManagePutsWindowInActiveSpaceAndSpawnsFreshOne
	stage manage: #w1.
	self assert: (stage placementOf: #w1) space == stage active.
	self assert: stage spaces size = 2.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testMinimizeGoesOffStage
	stage manage: #w1.
	stage minimize: #w1.
	self assert: (stage placementOf: #w1) isMinimized.
	self deny: ((stage windowsIn: stage active) includes: #w1).
	self assert: (stage minimizedWindows includes: #w1).
	stage restore: #w1.
	self deny: (stage placementOf: #w1) isMinimized.
	self assert: ((stage windowsIn: stage active) includes: #w1).
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testNotifiesViewsInOrder
	"Every mutation reconciles first (#spaces) and announces its headline event second."
	| log |
	log := OrderedCollection new.
	stage onChange: [:evt :arg | log add: evt].
	stage manage: #w1.
	stage minimize: #w1.
	stage restore: #w1.
	stage forget: #w1.
	self assert: log asArray = #(#spaces #managed #spaces #minimized #spaces #restored #spaces #forgotten)! !

!StageTest methodsFor: 'tests' stamp: ''!
testOverviewOnlyFromSettled
	stage manage: #w1.
	stage switchTo: stage spaces last.
	self deny: (stage mode fire: #openOverview).
	stage switchSettled.
	self assert: (stage mode fire: #openOverview).
	self assert: stage mode path = #(#overview #opening)! !

!StageTest methodsFor: 'tests' stamp: ''!
testPartitionStableAcrossSwitchRoundTrip
	| s1 s2 |
	s1 := stage active.
	stage manage: #w1.
	s2 := stage spaces last.
	stage switchTo: s2. stage switchSettled.
	stage manage: #w2.
	stage switchTo: s1. stage switchSettled.
	self assert: (stage placementOf: #w1) space == s1.
	self assert: (stage placementOf: #w2) space == s2.
	self assert: stage active == s1.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testRestoreAdoptsActiveSpace
	| s2 |
	stage manage: #w1.
	stage manage: #w2.
	stage minimize: #w1.
	s2 := stage spaces detect: [:sp | sp ~~ stage active].
	stage switchTo: s2.
	stage switchSettled.
	stage restore: #w1.
	self assert: (stage placementOf: #w1) space == s2.
	self deny: (stage placementOf: #w1) isMinimized.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testShownLagsActiveUntilSettled
	| s1 s2 |
	s1 := stage active.
	stage manage: #w1.
	s2 := stage spaces last.
	stage switchTo: s2.
	self assert: stage active == s2.
	self assert: stage shown == s1.
	stage switchSettled.
	self assert: stage shown == s2.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testStartsSettledWithOneEmptyActiveSpace
	self assert: stage spaces size = 1.
	self assert: stage active == stage spaces first.
	self assert: stage mode path = #(#live #settled).
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testSwitchDuringOverviewWaitsForLive
	| s1 s2 |
	s1 := stage active.
	stage manage: #w1.
	s2 := stage spaces last.
	stage mode fire: #openOverview.
	stage mode fire: #opened.
	stage switchTo: s2.
	self assert: stage active == s1.
	stage mode fire: #dismiss.
	stage mode fire: #closed.
	self assert: stage active == s2.
	self assert: (stage mode is: #switching).
	stage switchSettled.
	self assertInvariants! !

!StageTest methodsFor: 'tests' stamp: ''!
testSwitchWhileSwitchingQueuesAndDrains
	| s1 s2 |
	s1 := stage active.
	stage manage: #w1.
	s2 := stage spaces last.
	stage switchTo: s2.
	stage switchTo: s1.
	self assert: stage active == s2.
	stage switchSettled.
	self assert: stage active == s1.
	self assert: (stage mode is: #switching).
	stage switchSettled.
	self assert: (stage mode is: #settled).
	self assertInvariants! !

!StageTest methodsFor: 'asserting' stamp: ''!
assertInvariants
	"The Stage's standing laws: every placement is either off-stage (minimized into the dock) or
	points at a live space, and there is always exactly one empty space (the fresh desktop)."
	stage windows do: [:w | | pl |
		pl := stage placementOf: w.
		self assert: (pl isMinimized or: [stage spaces includes: pl space])].
	self assert: (stage spaces count: [:sp | (stage windowsIn: sp) isEmpty]) = 1.
	self assert: (stage spaces includes: stage active)! !

!StageTest methodsFor: 'support' stamp: ''!
screenStrut
	"The test case doubles as a screen-edge reserver for testArenaCutsReservedStrips."
	^ #left -> 100! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testCanReflectsLegality
	| m |
	m := self turnstile.
	self assert: (m can: #coin).
	self deny: (m can: #push)! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testFireOrQueueDrainsWhenLegal
	| m |
	m := self turnstile.
	m fireOrQueue: #push.
	self assert: (m is: #locked).
	m fire: #coin.
	self assert: (m is: #locked)! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testIllegalTransitionIsNoOp
	| m |
	m := self turnstile.
	self deny: (m fire: #push).
	self assert: (m is: #locked)! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testInitialState
	| m |
	m := self turnstile.
	self assert: m state == #locked.
	self assert: (m is: #locked).
	self deny: (m is: #unlocked)! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testIntrospection
	| m |
	m := self turnstile.
	self assert: (m possibleEvents includes: #coin).
	self assert: m possibleEvents size = 1.
	self assert: (m states = (Set withAll: #(#locked #unlocked))).
	self assert: m allTransitions size = 2! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testLegalTransitionFires
	| m |
	m := self turnstile.
	self assert: (m fire: #coin).
	self assert: (m is: #unlocked)! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testOnTransitionFiresOnlyOnRealTransition
	| m hits |
	m := self turnstile.
	hits := OrderedCollection new.
	m onTransition: [:sm | hits add: sm state].
	m fire: #push.
	self assert: hits isEmpty.
	m fire: #coin.
	self assert: (hits asArray = (Array with: #unlocked))! !

!StateMachineTest methodsFor: 'tests' stamp: ''!
testOnWrapperSpec
	| m |
	m := StateMachine initial: #a states: { #a -> { #on -> { #go -> #b } }. #b -> {  } }.
	self assert: (m fire: #go).
	self assert: (m is: #b)! !

!StateMachineTest methodsFor: 'fixtures' stamp: ''!
nestedMachine
	"The window-mode chart: live(settled|switching) and overview(opening|visible|closing)."
	^ StateMachine initial: #live states: {
		#live -> {
			#openOverview -> #overview.
			#initial -> #settled.
			#states -> {
				#settled -> { #switch -> #switching }.
				#switching -> { #settle -> #settled } } }.
		#overview -> {
			#initial -> #opening.
			#states -> {
				#opening -> { #shown -> #visible }.
				#visible -> { #dismiss -> #closing }.
				#closing -> { #hidden -> #live } } } }! !

!StateMachineTest methodsFor: 'fixtures' stamp: ''!
turnstile
	^ StateMachine initial: #locked states: {
		#locked   -> { #coin -> #unlocked }.
		#unlocked -> { #push -> #locked } }! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testChildShadowsParent
	"The same event on child and parent: the child's transition wins (leaf-first lookup)."
	| m |
	m := StateMachine initial: #a states: {
		#a -> {
			#go -> #elsewhere.
			#initial -> #a1.
			#states -> { #a1 -> { #go -> #a2 }. #a2 -> {} } }.
		#elsewhere -> {} }.
	m fire: #go.
	self assert: m state = #a2! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testEventBubblesToParent
	"openOverview is declared on #live but fired while sitting in its #settled child."
	| m |
	m := self nestedMachine.
	self assert: (m fire: #openOverview).
	self assert: m state = #opening.
	self assert: (m is: #overview)! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testFlatSpecUnchanged
	"A spec with no reserved keys is a plain FSM: single-element path, no ancestors."
	| m |
	m := StateMachine initial: #idle states: { #idle -> { #go -> #busy }. #busy -> { #stop -> #idle } }.
	self assert: m path = #(#idle).
	self assert: (m parentOf: #idle) isNil.
	m fire: #go.
	self assert: m state = #busy! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testInheritedCanAndPossibleEvents
	| m |
	m := self nestedMachine.
	self assert: (m can: #switch).
	self assert: (m can: #openOverview).
	self deny: (m can: #dismiss).
	self assert: (m possibleEvents includes: #openOverview)! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testIsMatchesAncestors
	| m |
	m := self nestedMachine.
	self assert: (m is: #settled).
	self assert: (m is: #live).
	self deny: (m is: #overview)! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testNestedEntersInitialLeaf
	| m |
	m := self nestedMachine.
	self assert: m state = #settled.
	self assert: m path = #(#live #settled)! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testResetDescendsToLeaf
	| m |
	m := self nestedMachine.
	m fire: #openOverview.
	m reset.
	self assert: m state = #settled! !

!StateMachineTest methodsFor: 'tests - hierarchy' stamp: ''!
testTransitionToCompoundEntersInitial
	"#hidden -> #live from deep inside overview descends to live's initial leaf."
	| m |
	m := self nestedMachine.
	m fire: #openOverview. m fire: #shown. m fire: #dismiss. m fire: #hidden.
	self assert: m state = #settled.
	self assert: m path = #(#live #settled)! !

!Theme methodsFor: '*Blueprint' stamp: ''!
accentColor
	"Blueprint's accent: the selection/highlight blue. On base Theme so Blueprint
	chrome renders under any current theme; BlueprintTheme inherits it."
	^ Color r: 0.0 g: 0.533 b: 1.0! !

!Theme methodsFor: '*Blueprint' stamp: ''!
chromeBody
	"THE dark translucent chrome body -- menus, dock, popovers. One cool near-black;
	surfaces with a deliberate translucency difference adjust via #alpha: at the call site."
	^ Color r: 0.05 g: 0.06 b: 0.07 alpha: 0.8! !

!Theme methodsFor: '*Blueprint' stamp: ''!
chromeHairline
	"Outer 0.5px grounding stroke on dark chrome surfaces: a soft black hairline that
	separates the surface from whatever is behind it."
	^ Color black alpha: 0.6! !

!Theme methodsFor: '*Blueprint' stamp: ''!
chromeHighlight
	"Inner 1px top-light stroke on dark chrome surfaces (menu, dock, popover): a faint
	white lifts the edge off the background, reading as ambient light on the rim."
	^ Color white alpha: 0.16! !

!Theme methodsFor: '*Blueprint' stamp: ''!
fontAt: step
	"The UI font at a type-scale step, as a physical TrueTypeFont: pointsAt: (logical)
	scaled by the display ratio and rounded once. THE way Blueprint code asks for a
	font -- express hierarchy in steps (body 0, titles 1, captions -1), never in point
	literals, so the whole UI follows the one zoom knob (BlueprintTheme fontPointSize:)."
	^ FontFamily familyName: FontFamily defaultFamilyName
		pointSize: ((self pointsAt: step) * DisplayScreen hostOSScaleFactor) rounded! !

!Theme methodsFor: '*Blueprint' stamp: ''!
pointsAt: step
	"LOGICAL point size at a Blueprint type-scale step: the rem root (BlueprintTheme
	fontPointSize, default 12) times ratio^step, ratio 2^(1/3) -- a modular scale whose
	sizes exactly double every 3 steps. Unrounded float; rounding happens once, in fontAt:.
	On base Theme so menu/window text sizes correctly under any current theme."
	^ BlueprintTheme fontPointSize * ((2 raisedTo: 1/3) raisedTo: step)! !

!Theme methodsFor: '*Blueprint' stamp: ''!
roundedMenuRadius
	"Menu / popover corner radius in LOGICAL px (windows use roundedWindowRadius;
	menus and popovers are tighter). Consumers multiply by hostScale."
	^ 12! !

!Theme methodsFor: '*Blueprint' stamp: ''!
roundedMiniRadius
	"Corner radius (LOGICAL px) for miniature window representations: SpaceCard screens
	and their WindowProxyMorph proxies."
	^ 3! !

!Theme methodsFor: '*Blueprint' stamp: ''!
windowHairline
	"Outer hairline on window-coloured chrome: opaque black, since light bodies need a
	full-strength edge to read as an object boundary."
	^ Color black! !

!Theme methodsFor: '*Blueprint' stamp: ''!
windowHighlight
	"Inner 1px stroke on window-coloured (light) chrome: SystemWindow frames and the
	halo title pill. Stronger than #chromeHighlight because it sits on a light body."
	^ Color white alpha: 0.5! !

!Theme class methodsFor: '*Blueprint' stamp: 'ML 3/Jul/2026 16:09:41'!
fitDisplay
	"Hook: the display geometry changed (see WorldMorph>>restoreDisplay). Themes
	with desktop furniture refit it here. Default: nothing to refit."! !

!Morph methodsFor: '*Blueprint' stamp: ''!
addHalo: aMorphicEventOrNil
	"Summon the halo. For the Blueprint halo, also give it keyboard focus so
	Backspace/Delete can delete the target while the halo is up. Focus is grabbed
	here - after popUpFor: has wired the halo into the world - because grabbing it
	mid-popUp (in addHandles:) is too early: the halo's owner isn't set yet, so
	self world is nil there and the grab silently no-ops."
	| hand position halo |
	aMorphicEventOrNil
		ifNil: [
			hand := self world activeHand.
			position := hand lastMouseEvent eventPosition ]
		ifNotNil: [
			hand := aMorphicEventOrNil hand.
			position := aMorphicEventOrNil eventPosition ].
	halo := self haloClass new popUpFor: self handPosition: position hand: hand.
	(halo isKindOf: MorphHalo) ifTrue: [hand newKeyboardFocus: halo].
	^ halo
! !

!Morph methodsFor: '*Blueprint' stamp: ''!
addItemTo: topMenu fromSpec: itemSpec submenus: submenusDictionary
	"
	See coment at Morph >> #getMenu
	"
	| submenuId menu label target selector arguments iconSymbol helpText menuItem |
	label := itemSpec second.
	label ifNil: [ ^self ]. "Only a keyboard shortcut, not a real menu item."
	submenuId := itemSpec first // 1000.
	menu := submenuId = 0 ifTrue: [ topMenu ] ifFalse: [ submenusDictionary at: submenuId ifAbsent: [^self]].
	target := itemSpec fourth
		ifNotNil: [ :targetOrGetter |
			targetOrGetter isSymbol
				ifTrue: [ 	self perform: targetOrGetter ]
				ifFalse: [ targetOrGetter ]]
		ifNil: [ self ].
	selector := itemSpec fifth.
	arguments := (selector isNil or: [ selector numArgs = 0 ])
		ifTrue: [#()]
		ifFalse: [itemSpec size >= 8 ifTrue: [ {itemSpec eighth} ] ifFalse: [ {self} ]].
	menuItem := label isSymbol
		ifTrue: [ menu addUpdating: label target: target action: selector argumentList: arguments ]
		ifFalse: [ menu add: label target: target action: selector argumentList: arguments ].
	"Blueprint: carry the spec's shortcut character onto the item so the menu can
	render a right-aligned hint. The label keeps any legacy '(x)' suffix for now."
	itemSpec third ifNotNil: [ :shortcutChar |
		menuItem setProperty: #shortcutHint toValue: shortcutChar.
		menuItem rebuildHint.
		menuItem updateColors ].
	iconSymbol := itemSpec size >= 6 ifTrue: [ itemSpec sixth ].
	iconSymbol ifNotNil: [ menuItem setIcon: iconSymbol ].
	helpText := itemSpec size >= 7 ifTrue: [ itemSpec seventh ].
	helpText ifNotNil: [ menuItem setBalloonText: helpText ].
	
	selector
		 ifNil: [
			menuItem isEnabled: false ]
		ifNotNil: [
			| enabledSelector |
			enabledSelector := itemSpec size >= 9 ifTrue: [ itemSpec ninth ].
			enabledSelector ifNotNil: [ 
				menuItem isEnabled: (target perform: enabledSelector) ]].
! !

!Morph methodsFor: '*Blueprint' stamp: ''!
collapse
	"Blueprint: minimize self into the dock (the world taskbar) if it is a top-level world submorph
	with a measurable size (via fullBoundsInOwner, so vector morphs with nil morphExtent still dock);
	otherwise hide. Chrome that should never dock opts out by overriding #collapse itself."
	| world dock ext |
	world := WorldMorph allInstances first.
	ext := [self fullBoundsInOwner extent] on: Error do: [nil].
	((owner == world) and: [ext notNil and: [ext x > 0 and: [ext y > 0]]]) ifTrue: [
		dock := world taskbar.
		(dock notNil and: [dock isKindOf: Dock]) ifTrue: [^ dock minimize: self]].
	self hide! !

!Morph methodsFor: '*Blueprint' stamp: ''!
haloClass
	"The halo class used by #addHalo:."
	^ MorphHalo! !

!Morph methodsFor: '*Blueprint' stamp: ''!
hostScale
	"The display's device-pixel ratio (physical px per logical pt). Blueprint convention:
	every literal pixel metric is a round LOGICAL value multiplied by this. Font-derived
	metrics (lineSpacing, widthOfString:) are already physical -- do not double-scale."
	^ DisplayScreen hostOSScaleFactor! !

!Morph methodsFor: '*Blueprint' stamp: ''!
isManagedDesktopMorph
	"Is this a managed desktop morph -- a window or plain morph the desktop arranges /
	collapses / groups / overviews, vs chrome or the manager itself?
	NOTE (transitional): currently an alias for the Cuis-inherited isIncludedInTaskbar. The plan
	is to ELIMINATE isIncludedInTaskbar completely -- make THIS the primitive, move every override
	(Dock, halos, menus, hand, popover, overview -> false) onto it, update the taskbar/overview
	callers, then remove isIncludedInTaskbar."
	^ self isIncludedInTaskbar! !

!Morph methodsFor: '*Blueprint' stamp: ''!
opticalBounds
	"READ-ONLY. Bounding box of our actually-rendered ink (non-transparent
	pixels), in local coordinates -- the visual mass, as opposed to the
	geometric box (morphExtent). Falls back to localBounds if nothing is drawn.
	Used for optical alignment (e.g. MenuItemMorph chevron centring)."
	| form l r t b |
	form := self imageForm.
	l := nil. r := nil. t := nil. b := nil.
	0 to: form height - 1 do: [:y |
		0 to: form width - 1 do: [:x |
			((form colorAt: x@y) alpha > 0.05) ifTrue: [
				t ifNil: [t := y]. b := y.
				(l isNil or: [x < l]) ifTrue: [l := x].
				(r isNil or: [x > r]) ifTrue: [r := x]]]].
	t isNil ifTrue: [^ self localBounds].
	^ l @ t corner: (r + 1) @ (b + 1)! !

!Morph methodsFor: '*Blueprint' stamp: ''!
tuneAt: aKey default: aNumber
	"Read a live-tunable parameter: an override stored as a property if present, else the
	production default. Lets a tuner (e.g. a BlueprintSlider rig) drive geometry live without
	changing shipped constants; in production the property is absent and the default rules."
	^ (self valueOfProperty: aKey) ifNil: [aNumber]! !

!BoxMorph methodsFor: '*Blueprint' stamp: ''!
fullScreen
	"Zoom Window to Full World size with possible DeskMargins"

	| left right possibleBounds |
	(self hasProperty: #originalBounds)
		ifFalse: [ "Expand"
			self setProperty: #originalBounds toValue: self displayBounds.
			left := right := 0.
			possibleBounds := Stage default arena
				insetBy: (left @ 0 corner: right @ 0).
			possibleBounds := possibleBounds insetBy: Theme current fullScreenDeskMargin
		]
		ifTrue: [ "Contract"
			possibleBounds := self valueOfProperty: #originalBounds.
			self removeProperty: #originalBounds.
		].
	self position: possibleBounds topLeft extent: possibleBounds extent.! !

!TaskbarMorph methodsFor: '*Blueprint' stamp: ''!
collapse
	"Blueprint chrome: a taskbar/dock never collapses into a dock (it is the dock). Opts out
	of Morph>>collapse the same way the dock chrome and the demo morphs do -- by overriding
	#collapse rather than relying on a hardcoded exclusion list."! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
addStayUpIcons
	"Blueprint: quiet glyph controls in the title row instead of the base button strip --
	a close cross (rightmost) and a pin that keeps the menu up, turning accent when
	pinned (see removeStayUpBox / togglePin). Same contract as the base: needs a
	titleMorph; when there is none yet, flag ourselves so addTitle: calls back."
	| s pinB closeB |
	(Preferences at: #optionalButtons) ifFalse: [^ self].
	(self valueOfProperty: #hasStayUpIcons ifAbsent: [false]) ifTrue: [
		self removeProperty: #needsStayUpIcons.
		^ self].
	titleMorph ifNil: [
		self setProperty: #needsStayUpIcons toValue: true.
		^ self].
	s := DisplayScreen hostOSScaleFactor.
	closeB := self titleControl: #x action: [self delete].
	pinB := self titleControl: #pin action: [self togglePin].
	self setProperty: #pinButton toValue: pinB.
	titleMorph addMorphBack: closeB.
	titleMorph addMorphBack: pinB.
	titleMorph morphExtent: titleMorph morphExtent + (((closeB morphWidth + pinB morphWidth) + (18 * s)) @ 0).
	titleMorph rightAlignButtons.
	self setProperty: #hasStayUpIcons toValue: true.
	self removeProperty: #needsStayUpIcons! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
addTitle: aString
	"A quiet header inside the dark chrome -- Cuis uses menu titles to ask the user
	questions ('Select a theme...') and to show progress (informUserDuring:, which
	passes a whitespace title and then rewrites the first label in place). Bold
	white lines in the menu font, aligned with the item text; no separate colored
	strip -- the chrome itself is the surface."
	| container pp s font |
	s := DisplayScreen hostOSScaleFactor.
	font := (Theme current fontAt: -1) bold.
	container := MenuTitleMorph new.
	"NOT locked: the pin/close glyph buttons live inside and must receive clicks;
	the labels are locked individually instead."
	container color: Color transparent.
	pp := (8 * s) @ (4 * s).
	aString asPlainString linesDo: [:line | | label |
		label := LabelMorph new
			contents: line;
			font: font;
			color: (Color white alpha: 0.95);
			yourself.
		label lock.
		container addMorphBack: label position: pp.
		pp := pp + (0 @ (label morphHeight + (2 * s)))].
	container morphExtent:
		((container submorphs inject: 0 into: [:prev :each | prev max: each morphWidth]) + (16 * s))
			@ (pp y + (2 * s)).
	titleMorph := container.
	self addMorphFront: titleMorph.
	(self hasProperty: #needsStayUpIcons) ifTrue: [self addStayUpIcons]! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
adjustSubmorphsLayout
	"Blueprint: items inset 4 dp from the inner chrome edge on all sides.
	Chrome body inset is 1.5 dp, so the value here is 5.5 dp from origin."
	| s padH padV w p h |
	submorphs isEmpty ifTrue: [^ self].
	s := DisplayScreen hostOSScaleFactor.
	padH := 5.5 * s.
	padV := 5.5 * s.
	w := submorphs inject: 0 into: [:prev :each | prev max: each minItemWidth].
	p := padH @ padV.
	submorphs do: [:m |
		h := m minimumExtent y.
		m position: p extent: w @ h.
		p := p + (0 @ h)].
	self morphExtent: (w + (padH * 2)) @ (p y + padV)! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
drawOn: aCanvas
	"Dark translucent chrome body (Apple-continuous-corner squircle, radius
	Theme roundedMenuRadius). The edge strokes are drawn in postDrawOn: so
	items can never occlude them."
	| s r |
	s := self hostScale.
	r := Theme current roundedMenuRadius * s.
	aCanvas fillColor: Theme current chromeBody do: [
		aCanvas squircle: self localBounds radius: r inset: 1.5 * s]! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
postDrawOn: aCanvas
	"Chrome edge on top of the items: 1px inner highlight + 0.5px outer hairline.
	Answer true since we drew."
	| s |
	s := self hostScale.
	aCanvas chromeStrokes: self localBounds radius: Theme current roundedMenuRadius * s scale: s
		inner: Theme current chromeHighlight outer: Theme current chromeHairline.
	^ true! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
removeStayUpBox
	"Blueprint: called by stayUp: when the menu becomes pinned. Keep both controls -- a
	pinned menu still wants its close cross -- and flip the pin to its accent 'pinned'
	state as feedback (togglePin reads #pinnedState to unpin)."
	self setProperty: #pinnedState toValue: true.
	(self valueOfProperty: #pinButton) ifNotNil: [:b |
		b symbolName: #pinned.
		b idleColor: Theme current accentColor.
		b redrawNeeded]! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
requiresVectorCanvas
	^ true! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
titleControl: glyphSymbol action: aBlock
	"A quiet glyph control for the title row: dim white at rest, hover-brightened
	(SymbolButton), right-aligned by the MenuTitleMorph."
	| b |
	b := SymbolButton new.
	b symbolName: glyphSymbol.
	b pointSize: (Theme current fontAt: -1) pointSize.
	b idleColor: (Color white alpha: 0.4).
	b clickAction: aBlock.
	b setProperty: #rightAligned toValue: true.
	^ b! !

!MenuMorph methodsFor: '*Blueprint' stamp: ''!
togglePin
	"Pin the menu open, or let it go again. Pinning goes through the base stayUp
	contract (stayUp: true calls removeStayUpBox, which flips the glyph to its accent
	state and records #pinnedState); unpinning reverses both."
	(self valueOfProperty: #pinnedState ifAbsent: [false])
		ifTrue: [
			self setProperty: #pinnedState toValue: false.
			self stayUp: false.
			(self valueOfProperty: #pinButton) ifNotNil: [:b |
				b symbolName: #pin.
				b idleColor: (Color white alpha: 0.4).
				b redrawNeeded]]
		ifFalse: [self stayUp]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
chevronSubmorph
	^ self valueOfProperty: #chevronMorph! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
chevronSubmorph: aMorphOrNil
	self setProperty: #chevronMorph toValue: aMorphOrNil! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
cmdSignSubmorph
	"The command-sign part of the shortcut hint, held as a morph PROPERTY (not an ivar)
	so this package adds no instance variables to the base MenuItemMorph. Separate from
	the key label so both edges of the hint column can align across items."
	^ self valueOfProperty: #cmdSignMorph! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
cmdSignSubmorph: aMorphOrNil
	self setProperty: #cmdSignMorph toValue: aMorphOrNil! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
contents: aString
	^ self contentsWithMarkers: aString inverse: false! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: 'ML 3/Jul/2026 15:39:18'!
contentsWithMarkers: aString inverse: invertMarkers
	"Parse a leading <on>/<off>/<yes>/<no> marker. When present, remember the
	full string in contentString (so a toggle can re-render) and stash the
	check state in the #checkState property; the display text is the remainder.
	NEVER removeAllMorphs here — our content submorphs (label/icon/chevron) are
	managed by #rebuildContent."
	| markerIndex marker display checkOn |
	contentString := nil.
	checkOn := nil.
	display := aString.
	(aString notEmpty and: [aString first == $<]) ifTrue: [
		markerIndex := aString indexOf: $>.
		markerIndex > 0 ifTrue: [
			marker := (aString copyFrom: 1 to: markerIndex) asLowercase.
			(#('<on>' '<off>' '<yes>' '<no>') includes: marker) ifTrue: [
				contentString := aString.
				checkOn := (marker = '<on>' or: [marker = '<yes>']) xor: invertMarkers.
				display := aString copyFrom: markerIndex + 1 to: aString size]]].
	"Strip a legacy trailing shortcut suffix -- space + '(x)' with a single character --
	from the DISPLAY string only: the right-aligned hint column shows the binding now.
	The defining spec/label (and contentString for check toggles) stay untouched."
	(display size >= 3 and: [
		(display at: display size) == $) and: [
		(display at: display size - 2) == $( ]]) ifTrue: [ | cut |
			"The stripped character IS the shortcut: menus built outside the spec system
			(plain add:action: with 'copy to clipboard (c)'-style labels) carry their
			binding only in this suffix, so donate it as the item's hint -- otherwise
			stripping would erase their shortcut indication entirely. The spec path sets
			#shortcutHint afterwards and simply overwrites this with the same character."
			(self valueOfProperty: #shortcutHint) isNil ifTrue: [
				self setProperty: #shortcutHint toValue: (display at: display size - 1)].
			cut := display size - 3.
			[cut >= 1 and: [(display at: cut) == $ ]] whileTrue: [cut := cut - 1].
			display := display copyFrom: 1 to: cut].
	super contents: display.
	self setProperty: #checkState toValue: checkOn.
	self rebuildContent! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
drawOn: aCanvas
	"Selection pill only. All content (icon, label, chevron) is drawn by
	submorphs — this morph paints just its background highlight."
	| bounds s |
	(isSelected and: [isEnabled]) ifTrue: [
		s := DisplayScreen hostOSScaleFactor.
		bounds := self localBounds.
		aCanvas fillColor: Theme current accentColor do: [
			aCanvas
				roundRectangleMinX: bounds left
				maxX: bounds right
				minY: bounds top
				maxY: bounds bottom
				rx: 8 * s ry: 8 * s]]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
dropIconSubmorph
	self iconSubmorph ifNotNil: [:m | m delete. self iconSubmorph: nil]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
extentChanged: oldExtent
	"Reposition content submorphs whenever the menu resizes us to the column
	width."
	super extentChanged: oldExtent.
	self layoutSubmorphs! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
fontToUse
	"Menu item text: one step below body on the Blueprint type scale -- menus are
	transient chrome and read best slightly smaller than content. Follows the zoom
	knob (BlueprintTheme fontPointSize:) and the user's font family."
	^ Theme current fontAt: -1! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
hasMarker
	"Whether the item shows a check marker, read from the parsed #checkState
	property (an <on>/<off>/<yes>/<no> state in the label). Submorph count says
	nothing here -- every item carries a label submorph."
	^ (self valueOfProperty: #checkState) notNil! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
hintColumnWidth
	"Width of the shared right-hand column that holds the shortcut KEY character of
	hint items and the CHEVRON of submenu items -- one visual track for the whole
	menu. Sized to the widest plausible key character in our font, a constant per
	font, so everything centered in it aligns across items."
	^ self fontToUse widthOf: $W! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
hintSubmorph
	"The right-aligned keyboard-shortcut hint submorph, held as a morph PROPERTY (not an
	ivar) so this package adds no instance variables to the base MenuItemMorph."
	^ self valueOfProperty: #hintMorph! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
hintSubmorph: aMorphOrNil
	self setProperty: #hintMorph toValue: aMorphOrNil! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
iconFormScaled
	"The item's icon Form scaled to the menu icon size (16 dp logical) -- UP or
	down, so small source icons fill the slot rather than floating lost in it --
	aspect-preserved and smoothed; greyed when disabled."
	| iconForm w h targetSize sc |
	icon isNil ifTrue: [^ nil].
	iconForm := isEnabled ifTrue: [icon] ifFalse: [icon asGrayScaleAndTransparent].
	w := iconForm width.
	h := iconForm height.
	(w = 0 or: [h = 0]) ifTrue: [^ iconForm].
	targetSize := (16 * DisplayScreen hostOSScaleFactor) rounded.
	sc := (targetSize / w) min: (targetSize / h).
	sc = 1 ifTrue: [^ iconForm].
	^ iconForm magnify: iconForm boundingBox to: (w * sc) rounded @ (h * sc) rounded smoothing: 2! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
iconSubmorph
	"The leading icon submorph, held as a morph PROPERTY (not an ivar) so this package adds no
	instance variables to the base MenuItemMorph -- which lets it install cleanly into a fresh image."
	^ self valueOfProperty: #iconMorph! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
iconSubmorph: aMorphOrNil
	self setProperty: #iconMorph toValue: aMorphOrNil! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
initialize
	"Morph-based menu item: data + a label submorph (+ optional icon/chevron
	built on demand). drawOn: paints only the selection pill; the label, icon
	and chevron are real submorphs positioned by #layoutSubmorphs."
	super initialize.
	isEnabled := true.
	subMenu := nil.
	isSelected := false.
	target := nil.
	selector := nil.
	arguments := nil.
	font := nil.
	self iconSubmorph: nil.
	self chevronSubmorph: nil.
	self labelSubmorph: LabelMorph new.
	self labelSubmorph lock.
	self addMorphBack: self labelSubmorph.
	self contents: ''! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
isEnabled: aBoolean
	isEnabled = aBoolean ifTrue: [^ self].
	isEnabled := aBoolean.
	self rebuildContent! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
isSelected: aBoolean
	isSelected := aBoolean.
	self updateColors.
	self redrawNeeded! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
labelSubmorph
	^ self valueOfProperty: #labelMorph! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
labelSubmorph: aMorphOrNil
	self setProperty: #labelMorph toValue: aMorphOrNil! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
layoutSubmorphs
	"Position content submorphs in a row, each vertically centered in the item:
	  padH | iconSlot(icon centered) | gap | label | flex | [cmd sign][key column] | padH.
	The icon slot and its gap are reserved only when some item in this menu shows or
	can show an icon (#reservesIconColumn). The right-hand KEY COLUMN (hintColumnWidth)
	is one shared track: shortcut key characters and submenu chevrons are each
	CENTERED in it (chevrons by their glyph ink), so keys sit under keys and chevrons
	sit in the same column. The command sign hangs just left of the column; it is the
	same glyph everywhere, so the signs align by construction."
	| s padH iconSlotW gap rowH rowW colW colLeft |
	self labelSubmorph isNil ifTrue: [^ self].
	s := DisplayScreen hostOSScaleFactor.
	padH := 8 * s.
	self reservesIconColumn
		ifTrue: [iconSlotW := 18 * s. gap := 4 * s]
		ifFalse: [iconSlotW := 0. gap := 0].
	rowH := self morphExtent y.
	rowW := self morphExtent x.
	self iconSubmorph ifNotNil: [
		self iconSubmorph morphPosition:
			(padH + ((iconSlotW - self iconSubmorph morphWidth) / 2)) @ ((rowH - self iconSubmorph morphHeight) / 2)].
	self labelSubmorph morphPosition:
		(padH + iconSlotW + gap) @ ((rowH - self labelSubmorph morphHeight) / 2).
	colW := self hintColumnWidth.
	colLeft := rowW - padH - colW.
	self chevronSubmorph ifNotNil: [ | ob |
		ob := self chevronSubmorph opticalBounds.
		self chevronSubmorph morphPosition:
			(colLeft + ((colW - ob width) / 2) - ob left) @ ((rowH - self chevronSubmorph morphHeight) / 2).
		colLeft := colLeft - (4 * s) - colW].
	self hintSubmorph ifNotNil: [
		self hintSubmorph morphPosition:
			(colLeft + ((colW - self hintSubmorph morphWidth) / 2)) @ ((rowH - self hintSubmorph morphHeight) / 2).
		self cmdSignSubmorph ifNotNil: [
			self cmdSignSubmorph morphPosition:
				(colLeft - (2 * s) - self cmdSignSubmorph morphWidth) @ ((rowH - self cmdSignSubmorph morphHeight) / 2)]]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
minItemWidth
	"Same width math as #minimumExtent â pad + icon slot + gap + text + pad."
	^ self minimumExtent x! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
minimumExtent
	"pad + (icon slot + gap, only when some item in this menu shows or can show an
	icon -- #reservesIconColumn) + label width + pad, plus the right-hand tracks:
	the shared key/chevron column (hintColumnWidth), doubled with a small gap when
	an item somehow has both, the command sign, and a wide lead gap so label and
	hint never crowd."
	| s padH iconSlotW gap labelW trailing colW |
	s := DisplayScreen hostOSScaleFactor.
	padH := 8 * s.
	self reservesIconColumn
		ifTrue: [iconSlotW := 18 * s. gap := 4 * s]
		ifFalse: [iconSlotW := 0. gap := 0].
	labelW := self labelSubmorph isNil ifTrue: [0] ifFalse: [self labelSubmorph morphWidth].
	colW := self hintColumnWidth.
	trailing := 0.
	(self hasSubMenu and: [self chevronSubmorph notNil]) ifTrue: [
		trailing := trailing + (4 * s) + colW].
	self hintSubmorph ifNotNil: [ | cmdW |
		cmdW := self cmdSignSubmorph ifNil: [0] ifNotNil: [:c | c morphWidth].
		trailing := trailing + (16 * s) + cmdW + (2 * s) + colW].
	^ ((padH * 2) + iconSlotW + gap + labelW + trailing) @ (20 * s)! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
mouseEnter: aMouseEnterEvent
	"Forgiving submenu logic:
	1. If we are inside a submenu, clear the parent menu's triangle (we've arrived).
	2. If our own menu has an active submenu and the cursor is heading toward it,
	   ignore — but schedule a dwell timer in case the user lingers here."
	super mouseEnter: aMouseEnterEvent.
	owner ifNotNil: [
		(owner valueOfProperty: #forgiveParent) ifNotNil: [:parent | parent clearForgive].
		(owner shouldForgiveCursorAt: aMouseEnterEvent eventPosition) ifTrue: [
			self addAlarm: #forgiveDwellExpired after: 150.
			^ self].
		owner selectItem: self]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
rebuildChevron
	"Submenu marker: a chevron glyph, right-centered in the shared key column
	(see layoutSubmorphs)."
	| s |
	self hasSubMenu ifFalse: [
		self chevronSubmorph ifNotNil: [:m | m delete. self chevronSubmorph: nil].
		^ self].
	self chevronSubmorph isNil ifTrue: [
		s := DisplayScreen hostOSScaleFactor.
		self chevronSubmorph: SymbolMorph new.
		self chevronSubmorph symbolName: #'chevron-right'.
		self chevronSubmorph pointSize: (Theme current fontAt: 0) pointSize.
		self chevronSubmorph morphExtent: (13 * s) @ (13 * s).
		self chevronSubmorph lock.
		self addMorphBack: self chevronSubmorph]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
rebuildContent
	"(Re)build content submorphs from current state -- each visual part is its own
	morph with its own rebuild: leading icon/check slot, text label, shortcut hint,
	submenu chevron. drawOn: paints only the selection pill; colors come from
	#updateColors, geometry from #layoutSubmorphs."
	self labelSubmorph isNil ifTrue: [^ self].
	self labelSubmorph contents: self contents.
	self labelSubmorph font: self fontToUse.
	self rebuildIconSlot.
	self rebuildChevron.
	self rebuildHint.
	self updateColors.
	self layoutSubmorphs.
	self redrawNeeded! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
rebuildHint
	"The shortcut hint: a command-sign block plus the key character as SEPARATE labels,
	so both edges of the hint column rule across items (see layoutSubmorphs). A shifted
	shortcut (an uppercase letter in the spec) reads macOS-style: a shift arrow joins
	the sign block -- growing leftward, so the command signs stay ruled -- and the key
	always displays uppercase; case lives in the sign, not the key."
	| hint |
	hint := self valueOfProperty: #shortcutHint.
	hint isNil ifTrue: [
		self hintSubmorph ifNotNil: [:m | m delete. self hintSubmorph: nil].
		self cmdSignSubmorph ifNotNil: [:m | m delete. self cmdSignSubmorph: nil].
		^ self].
	self cmdSignSubmorph isNil ifTrue: [
		self cmdSignSubmorph: LabelMorph new.
		self cmdSignSubmorph lock.
		self addMorphBack: self cmdSignSubmorph].
	self cmdSignSubmorph contents: ((hint isLetter and: [hint = hint asUppercase])
		ifTrue: [(UnicodeString empty copyWith: (Character value: 16r21E7)) copyWith: (Character value: 16r2318)]
		ifFalse: [UnicodeString empty copyWith: (Character value: 16r2318)]).
	self cmdSignSubmorph font: self fontToUse.
	self hintSubmorph isNil ifTrue: [
		self hintSubmorph: LabelMorph new.
		self hintSubmorph lock.
		self addMorphBack: self hintSubmorph].
	self hintSubmorph contents: (UnicodeString empty copyWith: hint asUppercase).
	self hintSubmorph font: self fontToUse! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
rebuildIconSlot
	"The leading slot: a native check glyph for an <on> item (an <off> item shows
	nothing, but the column stays reserved -- see showsIcon), a vector icon Morph
	used directly -- no rasterizing -- or a Form shown via an ImageMorph."
	| s checkState iconForm |
	s := DisplayScreen hostOSScaleFactor.
	checkState := self valueOfProperty: #checkState.
	checkState notNil ifTrue: [
		checkState ifFalse: [^ self dropIconSubmorph].
		(self iconSubmorph isKindOf: SymbolMorph) ifFalse: [
			self dropIconSubmorph.
			self iconSubmorph: SymbolMorph new.
			self iconSubmorph pointSize: (Theme current fontAt: 0) pointSize.
			self iconSubmorph lock.
			self addMorphBack: self iconSubmorph].
		self iconSubmorph symbolName: #check.
		self iconSubmorph morphExtent: (13 * s) @ (13 * s).
		^ self].
	(icon isKindOf: Morph) ifTrue: [
		self iconSubmorph == icon ifTrue: [^ self].
		self dropIconSubmorph.
		self iconSubmorph: icon.
		self iconSubmorph lock.
		self addMorphBack: self iconSubmorph.
		^ self].
	iconForm := icon ifNotNil: [self iconFormScaled].
	iconForm isNil ifTrue: [^ self dropIconSubmorph].
	(self iconSubmorph isKindOf: ImageMorph) ifFalse: [
		self dropIconSubmorph.
		self iconSubmorph: ImageMorph new.
		self iconSubmorph lock.
		self addMorphBack: self iconSubmorph].
	self iconSubmorph image: iconForm! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
requiresVectorCanvas
	^ true! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
reservesIconColumn
	"True when some item in the same menu shows an icon, so the whole menu
	reserves the leading icon column and labels stay aligned. When no sibling
	has an icon the column collapses -- no empty gutter."
	| o |
	o := self owner.
	o isNil ifTrue: [^ self showsIcon].
	^ o submorphs anySatisfy: [:m | (m isKindOf: MenuItemMorph) and: [m showsIcon]]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
select
	self isSelected: true.
	owner activeSubmenu: subMenu.
	subMenu ifNotNil: [
		self displayBounds ifNotNil: [:r | | mb ov |
			"Anchor the submenu to the parent MENU's outer edges (not this item's -- items
			are inset by the menu padding), overlapping a tiny amount on either side, the
			way desktop menus nest: opened right, its left edge tucks just inside the
			parent; flipped left (popUpAdjacentTo: uses the second point for its top-RIGHT),
			its right edge tucks symmetrically."
			mb := owner displayBounds.
			ov := 4 * self hostScale.
			subMenu delete.
			subMenu
				popUpAdjacentTo: (Array with: (mb right - ov) @ r top with: (mb left + ov) @ r top)
				from: self.
			subMenu setProperty: #forgiveParent toValue: owner.
			self world activeHand ifNotNil: [:hand |
				owner recordForgiveApexAt: hand morphPosition]].
		subMenu selectItem: nil]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
setIcon: aMorphOrFormOrSymbolOrNil
	"The icon may be a Morph (used directly as a vector icon, e.g. a SymbolMorph
	-- no bitmap), a Form, a Symbol (sent to Theme current to look up a Form) or
	nil."
	icon := aMorphOrFormOrSymbolOrNil isSymbol
		ifTrue: [Theme current perform: aMorphOrFormOrSymbolOrNil]
		ifFalse: [aMorphOrFormOrSymbolOrNil].
	self rebuildContent! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
showsIcon
	"Whether this item claims the icon slot -- a vector or Form icon, a check marker,
	or BEING CHECKABLE at all: an <off> item shows no mark (macOS convention) but must
	still reserve the column, so labels do not shift when the state toggles."
	^ self iconSubmorph notNil or: [(self valueOfProperty: #checkState) notNil]! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
subMenu: aMenuMorph
	subMenu := aMenuMorph.
	self rebuildContent! !

!MenuItemMorph methodsFor: '*blueprint-menu' stamp: ''!
updateColors
	"Apply selection/enabled-dependent colors to the content submorphs. Light
	because the menu background is dark; bright white when selected. A vector
	icon morph (e.g. SymbolMorph) is tinted like the label; Form icons
	(ImageMorph) keep their baked pixels. The shortcut hint idles dim -- it is
	reference material -- but comes up close to full white on the hovered item,
	where it must stay readable over the accent pill."
	| textColor hintColor |
	textColor := isEnabled
		ifTrue: [isSelected ifTrue: [Color white] ifFalse: [Color white alpha: 0.95]]
		ifFalse: [Color white alpha: 0.2].
	hintColor := isEnabled
		ifTrue: [isSelected ifTrue: [Color white alpha: 0.9] ifFalse: [Color white alpha: 0.4]]
		ifFalse: [Color white alpha: 0.15].
	self labelSubmorph ifNotNil: [self labelSubmorph color: textColor].
	(self iconSubmorph notNil and: [(self iconSubmorph isKindOf: ImageMorph) not]) ifTrue: [
		self iconSubmorph color: textColor].
	self chevronSubmorph ifNotNil: [
		self chevronSubmorph color: (isSelected
			ifTrue: [Color white]
			ifFalse: [Color white alpha: 0.4])].
	self hintSubmorph ifNotNil: [self hintSubmorph color: hintColor].
	self cmdSignSubmorph ifNotNil: [self cmdSignSubmorph color: hintColor]! !

!TextModelMorph methodsFor: '*Blueprint' stamp: ''!
adoptWidgetsColor: paneColor
	"Blueprint: the text pane keeps its translucent-white textPane colour (so the
	window colour tints through) instead of the opaque paneBackgroundFrom: that
	PluggableScrollPane would substitute. Still cascade to submorphs + scrollbars."
	color = self defaultColor ifTrue: [ color := Theme current textPane ].
	self submorphsDo: [ :m | m adoptWidgetsColor: paneColor ].
	scrollBar ifNotNil: [ :sb | sb adoptWidgetsColor: paneColor ].
	hScrollBar ifNotNil: [ :sb | sb adoptWidgetsColor: paneColor ]! !

!TextModelMorph methodsFor: '*Blueprint' stamp: ''!
defaultColor
	"Blueprint: theme-driven translucent white text pane (see Theme>>textPane)."
	^ Theme current textPane! !

!TextModelMorph methodsFor: '*Blueprint' stamp: ''!
defaultPadding
	"Blueprint: 8 logical px inner padding (x hostOSScaleFactor for physical)."
	| s |
	s := DisplayScreen hostOSScaleFactor.
	^ (8 * s) @ (8 * s)! !

!TextModelMorph methodsFor: '*Blueprint' stamp: ''!
drawOn: aCanvas
	"Blueprint: same as vanilla TextModelMorph>>drawOn: but skip the keyboard-focus
	outline (it's distracting since focus follows mouse). Keep the red/tan feedback
	for unaccepted edits / refusesToAccept / editing conflicts."
	| bw bc |
	super drawOn: aCanvas.
	bw := Preferences at: #focusIndicatorWidth.
	bc := nil.
	self wantsFrameAdornments ifTrue: [
		model refusesToAccept
			ifTrue: [bc := Color tan]
			ifFalse: [
				scroller hasEditingConflicts
					ifTrue: [
						bw := 3.
						bc := Color red]
					ifFalse: [
						scroller hasUnacceptedEdits ifTrue: [bc := Color red]]]].
	bc ifNotNil: [
		aCanvas
			frameRectangle: self focusIndicatorRectangle
			borderWidth: bw
			color: bc]! !

!ScrollBar methodsFor: '*Blueprint' stamp: ''!
color: aColor
	"Blueprint: pane color drives the chrome, but the SLIDER (thumb) gets a fixed
	higher-contrast ink -- black at 0.15 alpha -- so it reads on light scroll
	backgrounds; mouseOverColor is pinned to the same color so hover does not
	lighten it. Buttons stay transparent; sliderShadow keeps the stock mix."
	super color: aColor.
	upButton color: Color transparent.
	downButton color: Color transparent.
	slider color: (Color black alpha: 0.15).
	slider mouseOverColor: slider color.
	sliderShadow color: (color alphaMixed: 0.45 with: Theme current scrollbarSliderShadowColor)! !

!ScrollBar methodsFor: '*Blueprint' stamp: ''!
computeSlider
	"Position the slider thumb, inset by a margin from BOTH ends of the track so
	it has breathing room at the min/max positions (stock pinned it flush to the
	bounds). margin is logical px x hostOSScaleFactor. The travel range shrinks
	by 2*margin and the start offset grows by margin, so value 0 sits margin px
	in from the top and value 1 margin px in from the bottom."
	| delta margin room |
	margin := 4 * DisplayScreen hostOSScaleFactor.
	room := (self freeSliderRoom - (2 * margin)) max: 0.
	delta := self buttonExtentToUse + margin + (room * value) asInteger.
	"Vertical scrollbar: pin the thumb to the LEFT edge of the strip (drop the
	cross-axis slack) so it sits clear of the scroll area's rounded right corner."
	self isHorizontal
		ifTrue: [
			slider morphPosition: borderWidth + delta @ (borderWidth + self sliderSlack) ]
		ifFalse: [
			slider morphPosition: borderWidth @ (borderWidth + delta) ]! !

!ScrollBar methodsFor: '*Blueprint' stamp: ''!
drawOn: aCanvas
	"Blueprint: when the theme's scrollbarColor is fully transparent, skip the
	track fill entirely so only the slider (a submorph) is visible. Otherwise
	preserve the stock fill (mix self.color with theme color at 0.3)."
	| themeColor |
	themeColor := Theme current scrollbarColor.
	themeColor alpha = 0.0 ifTrue: [^ self].
	aCanvas
		fillRectangle: self localBounds
		color: (color alphaMixed: 0.3 with: themeColor)
		borderWidth: borderWidth
		borderStyleSymbol: #simple
		baseColorForBorder: borderColor
! !

!ScrollBar methodsFor: '*Blueprint' stamp: ''!
expandSlider
	"Blueprint: enforce a minimum slider extent of 30 logical px so the slider
	stays grabbable even for very tall content. Slider thickness uses the
	standard sliderSlack inset."
	| e minE s |
	s := DisplayScreen hostOSScaleFactor.
	minE := 30 * s.
	e := ((self totalSliderRoom * interval) asInteger max: minE) asInteger.
	slider morphExtent: (self isHorizontal
		ifTrue: [ e @ (self thickness - (self sliderSlack * 2)) ]
		ifFalse: [ self thickness - (self sliderSlack * 2) @ e ])
! !

!ScrollBar methodsFor: '*Blueprint' stamp: ''!
initializeSlider
	"Stock setup. Thumb color is set centrally in #color: (so it survives the
	pane-color adoption that runs after init), not here."
	sliderShadow := ColoredBoxMorph new.
	self addMorph: sliderShadow.
	sliderShadow hide.
	slider := DraggableButtonMorph new.
	slider actionTarget: self.
	slider grabSelector: #sliderGrabbedAt:.
	slider dragSelector: #scrollTo:.
	slider action: #sliderReleased.
	self addMorph: slider.
	self computeSlider! !

!ScrollBar methodsFor: '*Blueprint' stamp: ''!
sliderGrabbedAt: handPositionRelativeToSlider
	"Blueprint: if the theme's scrollbarSliderShadowColor is fully transparent,
	skip showing the drag-shadow rectangle (otherwise the alphaMixed: formula
	leaves a partially-opaque ghost). Otherwise behave exactly like stock."
	| e p |
	grabPosition := handPositionRelativeToSlider.
	Theme current scrollbarSliderShadowColor alpha = 0.0 ifTrue: [^ self].
	self isHorizontal
		ifTrue: [
			e := slider morphWidth @ self thickness.
			p := slider morphPosition x @ borderWidth ]
		ifFalse: [
			e := self thickness @ slider morphHeight.
			p := borderWidth @ slider morphPosition y ].
	sliderShadow
		position: p extent: e;
		show
! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
addResizeHalo
	"Attach a SystemWindowResizeHalo as a direct submorph if not already present.
	Idempotent: re-running on a window that already has one is a no-op."
	| halo |
	(self submorphs anySatisfy: [:m | m isKindOf: SystemWindowResizeHalo]) ifTrue: [^ self].
	halo := SystemWindowResizeHalo new.
	halo morphPosition: 0 @ 0.
	halo morphExtent: self morphExtent.
	self addMorphFront: halo! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
allowedArea
	^ Stage default arena insetBy: Theme current fullScreenDeskMargin! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
clipsSubmorphs
	"Clip our content to our drawn squircle contour (see drawOn:/wantsContour),
	so rounded corners are honoured even where a pane fills to the edge."
	^ true! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
defaultColor
	"Default body color: greyish. Specific window classes override."
	^ Color gray! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
defaultLayerNumber
	"While a window is docked-minimized it should sit above the Dock chrome (L=50)
	even if its explicit #layerNumber property got cleared by a comeToFront call."
	^ (self hasProperty: #preMinimizeLocation)
		ifTrue: [40]
		ifFalse: [super defaultLayerNumber]! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
drawLabelOn: aCanvas
	"Left-aligned, flat title. Begins a fixed gap past the traffic-light buttons;
	its cap-height band is vertically centred on those buttons; truncates with a
	real ellipsis against the room up to a symmetric right margin."
	| s f leftGap rightMargin buttons leftX rightX availableW capH btnCenterY topY ell disp |
	f := Preferences at: #windowTitleFont.
	s := DisplayScreen hostOSScaleFactor.
	leftGap := 8 * s.
	rightMargin := 4 * s.
	buttons := self submorphs select: [:m | m is: #PluggableButtonMorph].
	leftX := buttons isEmpty
		ifTrue: [leftGap]
		ifFalse: [(buttons inject: 0 into: [:mx :b | mx max: b morphPosition x + b morphExtent x]) + leftGap].
	btnCenterY := buttons isEmpty
		ifTrue: [self labelHeight / 2]
		ifFalse: [buttons first morphPosition y + (buttons first morphExtent y / 2)].
	rightX := extent x - rightMargin.
	availableW := rightX - leftX.
	availableW <= 0 ifTrue: [^ self].
	ell := UnicodeString with: (Character value: 16r2026).
	disp := labelString.
	(f widthOfString: disp) > availableW ifTrue: [
		disp := UnicodeString withAll: labelString.
		[disp notEmpty and: [(f widthOfString: (disp , ell)) > availableW]] whileTrue: [
			disp := disp copyFrom: 1 to: disp size - 1].
		disp := disp , ell].
	capH := f pointSize.
	topY := btnCenterY + (capH / 2) - f ascent.
	aCanvas
		drawString: disp at: leftX @ topY
		font: f color: (Color black alpha: 0.8)
		embossed: false! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
drawOn: aCanvas
	"Blueprint chrome: fill the squircle body in self color."
	| r bounds s |
	s := DisplayScreen hostOSScaleFactor.
	r := Theme current roundedWindowRadius.
	bounds := self localBounds.
	aCanvas fillColor: self color do: [
		aCanvas
			squircleMinX: bounds left
			maxX: bounds right
			minY: bounds top
			maxY: bounds bottom
			radius: r * s].
	labelString ifNotNil: [self drawLabelOn: aCanvas]! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
extentChanged: oldExtent
	"Resize our layoutMorph and any SystemWindowResizeHalo submorph to follow
	the new extent (halo always fills the whole window)."
	layoutMorph ifNotNil: [
		layoutMorph
			position: self interiorOrigin
			extent: self interiorExtent].
	(self submorphs detect: [:m | m isKindOf: SystemWindowResizeHalo] ifNone: [nil])
		ifNotNil: [:halo |
			halo morphPosition: 0 @ 0.
			halo morphExtent: extent]! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
fullScreen
	"Toggle between normal bounds and (almost) fullscreen, animating the bounds on the shared Animator.
	A second toggle returns to the bounds remembered in #preMaximizeBounds."
	| fromRect toRect |
	fromRect := self morphPosition extent: self morphExtent.
	(self hasProperty: #preMaximizeBounds)
		ifTrue: [
			toRect := self valueOfProperty: #preMaximizeBounds.
			self removeProperty: #preMaximizeBounds]
		ifFalse: [
			self setProperty: #preMaximizeBounds toValue: fromRect.
			toRect := Stage default arena insetBy: Theme current fullScreenDeskMargin].
	self comeToFront.
	Animator default animate: self using: [:t | | o e |
		o := fromRect origin + ((toRect origin - fromRect origin) * t).
		e := fromRect extent + ((toRect extent - fromRect extent) * t).
		self morphPosition: o; morphExtent: e] duration: 300 easing: #cubicInOut onDone: []! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
fullyCoveredRectangle
	"Answer a Rectangle we are certain is completely covered by us.
	Answer nil if we can't be certain about a better answer.

	Blueprint: the chrome is a SQUIRCLE -- all four corners are rounded, not just
	the top. So the covered rectangle must be inset by the corner radius at the
	BOTTOM as well as the top; otherwise the world reports the bottom rounded-corner
	zones as opaque, never repaints them, and they become a permanent damage hole
	(stale pixels / body-color leak stick there). Inset both ends by e."
	| b e |
	self isOrAnyOwnerIsRotated ifTrue: [ ^ nil ].
	color mightBeTranslucent ifTrue: [ ^ nil ].
	b := self displayBounds.
	b isNil ifTrue: [ ^ nil ].
	b := b insetBy: `2@2 corner: 1@1`.
	Theme current roundWindowCorners ifFalse: [ ^ b ].
	e := (self externalizeDistanceToWorld: 0@Theme current roundedWindowRadius) ceiling.
	^ (b origin + e) corner: (b corner - e)! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
initialExtent
	^ Stage default standardWindowExtent! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
initialFrameIn: aWorld
	^ Stage default initialFrameFor: self initialExtent! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
initialize
	"Initialize a system window. Add label, stripes, etc., if desired"
	super initialize.
	labelString ifNil: [labelString := 'Untitled Window'].
	self initializeLabelArea.
	extent := (300 @ 200) * self hostScale.
	"by default"
	self beColumn.
	self addResizeHalo! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
initializeLabelArea
	"Initialize the label area (titlebar). Button column vertically centred in labelHeight."
	| topLeft spacing |
	topLeft := (self labelHeight - Theme current titleBarButtonsExtent / 2) ceiling asPoint.
	spacing := Theme current titleBarButtonsExtent x *13//10.
	self addMorph: self createCloseButton position: topLeft.
	self addMorph: self createCollapseButton position: spacing@0 + topLeft.
	self addMorph: self createExpandButton position: spacing*2@0 + topLeft.
	self addMorph: self createMenuButton position: spacing*3@0 + topLeft! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
interiorExtent
	"See interiorOrigin: title bar trimmed 2 logical px at the bottom, so the content
	area is 2 logical px taller."
	| p s |
	s := DisplayScreen hostOSScaleFactor.
	p := super interiorExtent.
	^ p x @ (p y - self labelHeight + (2 * s))! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
interiorOrigin
	"Content area top = labelHeight below the window top, pulled UP 2 logical px to
	trim the title-bar bottom (the top of the bar is covered by the perimeter stroke;
	this re-balances it). See [[titlebar trim]]."
	| p s |
	s := DisplayScreen hostOSScaleFactor.
	p := super interiorOrigin.
	^ p x @ (p y + self labelHeight - (2 * s))! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
invalidateTitleArea
	"Blueprint: our chrome fills the WHOLE morph with windowFrameColor, not
	just the title strip. When active state changes, the side and bottom
	borders also need to repaint, so invalidate the whole morph."
	self redrawNeeded! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
labelHeight
	"Title-bar height tied to the window corner radius: 2x the radius, so the
	rounded top corners complete their curve within the bar. roundedWindowRadius
	is logical px; multiply by hostOSScaleFactor for the physical-px value."
	^ (Theme current roundedWindowRadius * 2) * DisplayScreen hostOSScaleFactor! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
labelXPosition
	| f |
	f := Preferences at: #windowTitleFont.
	^ f lineSpacing * 5! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
minimumExtent
	^layoutMorph minimumExtent + (0@self labelHeight)
		max: Theme current titleBarButtonsExtent x * 6 @ 0! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
postDrawOn: aCanvas
	"Blueprint chrome, second stage: the perimeter frame ON TOP of the (squircle-
	clipped) content -- windowHighlight inner stroke + windowHairline outer, via
	the shared chromeStrokes recipe. Answer true since we drew."
	| s |
	s := self hostScale.
	aCanvas chromeStrokes: self localBounds radius: Theme current roundedWindowRadius * s scale: s
		inner: Theme current windowHighlight outer: Theme current windowHairline.
	^ true! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
requiresVectorCanvas
	^ true! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
rescaleButtons
	"boxExtent changed. Update my buttons (centred in labelHeight)."
	| buttonExtent buttonPos spacing |
	buttonExtent := Theme current titleBarButtonsExtent.
	buttonPos := (self labelHeight - Theme current titleBarButtonsExtent / 2) ceiling asPoint.
	spacing := Theme current titleBarButtonsExtent x *13//10.
	self submorphsReverseDo: [ :aMorph |
		(aMorph is: #PluggableButtonMorph)
		  ifTrue: [
				aMorph morphExtent: buttonExtent.
				aMorph morphPosition: buttonPos.
				buttonPos := buttonPos + (spacing@0)]]! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
wantsContour
	"Track our drawn contour (the squircle from drawOn:) so clipsSubmorphs clips
	content to that shape rather than to our bounding rectangle."
	^ true! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
widgetsColor
	"Unified color architecture: widgetsColor == self color (the body color)."
	^ self color! !

!SystemWindow methodsFor: '*Blueprint' stamp: ''!
widgetsColor: aColor
	"Set the body color AND propagate to submorphs via adoptWidgetsColor:
	(layoutMorph/buttons/text-bg derive their colors from the pane color)."
	self color: aColor.
	self adoptWidgetsColor: aColor.
	self redrawNeeded! !

!ChangeListWindow methodsFor: '*Blueprint' stamp: ''!
buildMorphicWindow
	"Open a morphic view for the messageSet, whose label is labelString. 
	The listView may be either single or multiple selection type"

	| listPane desiredExtent desiredHeight wine availableHeight |
	listPane := (PluggableListMorphOfMany
		withModel: model
		listGetter: #list
		primarySelectionGetter: #listIndex
		primarySelectionSetter: #toggleListIndex:
		listSelectionGetter: #listSelectionAt:
		listSelectionSetter: #listSelectionAt:put:)
			menuNshortcutsKey: #listMenuSpec.
	desiredExtent := listPane desiredExtent.
	desiredHeight := desiredExtent y.
	wine := Stage default standardWindowExtent.
	availableHeight := wine y - self labelHeight - (borderWidth * 2).
	desiredExtent x > wine x ifTrue: [
		desiredHeight := desiredHeight + Theme current scrollbarThickness ].
	desiredHeight / availableHeight < 0.4
		ifTrue: [		"Number of items is small enough to make for a fixed list regardless of Window resize"
			self layoutMorph
				addMorph: listPane fixedHeight: desiredHeight;
				addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 1.0 ]
		ifFalse: [		"Number of items is large enough to prefer a list proportional to Window resize"
			self layoutMorph
				addMorph: listPane proportionalHeight: 0.4;
				addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.6.
			listPane limitLayoutHeight ].! !

!VersionsBrowserWindow methodsFor: '*Blueprint' stamp: ''!
buildMorphicWindow
	"Open a morphic view for the messageSet, whose label is labelString. 
	The listView may be either single or multiple selection type"

	| listPane desiredExtent desiredHeight wine availableHeight |
	listPane := (PluggableListMorph
		withModel: model
		listGetter: #list
		indexGetter: #listIndex
		indexSetter: #toggleListIndex:)
			menuNshortcutsKey: #listMenuSpec.
	desiredExtent := listPane desiredExtent.
	desiredHeight := desiredExtent y.
	wine := Stage default standardWindowExtent.
	availableHeight := wine y - self labelHeight - (borderWidth * 2).
	desiredExtent x > wine x ifTrue: [
		desiredHeight := desiredHeight + Theme current scrollbarThickness ].
	desiredHeight / availableHeight < 0.4
		ifTrue: [		"Number of items is small enough to make for a fixed list regardless of Window resize"
			self layoutMorph
				addMorph: listPane fixedHeight: desiredHeight;
				addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 1.0 ]
		ifFalse: [		"Number of items is large enough to prefer a list proportional to Window resize"
			self layoutMorph
				addMorph: listPane proportionalHeight: 0.4;
				addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.6.
			listPane limitLayoutHeight ].! !

!DebuggerWindow methodsFor: '*Blueprint' stamp: ''!
initialExtent
	^ Stage default standardWindowExtent * 3 // 2! !

!MethodSetWindow methodsFor: '*Blueprint' stamp: ''!
buildMorphicWindow
	"Answer a morphic window with the given label that can display the receiver"

	| listPane desiredExtent desiredHeight wine availableHeight |
	listPane := self buildMorphicMessageList.
	desiredExtent := listPane desiredExtent.
	desiredHeight := desiredExtent y.
	wine := Stage default standardWindowExtent.
	availableHeight := wine y - self labelHeight - (borderWidth * 2).
	desiredExtent x > wine x ifTrue: [
		desiredHeight := desiredHeight + Theme current scrollbarThickness ].
	desiredHeight / availableHeight < 0.4
		ifTrue: [		"Number of items is small enough to make for a fixed list regardless of Window resize"
			self layoutMorph
				addMorph: listPane fixedHeight: desiredHeight;
				addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 1.0 ]
		ifFalse: [		"Number of items is large enough to prefer a list proportional to Window resize"
			self layoutMorph
				addMorph: listPane proportionalHeight: 0.4;
				addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.6.
			listPane limitLayoutHeight ].
	model changed: #editSelection! !

!TileResizeMorph class methodsFor: '*Blueprint' stamp: ''!
allowedArea
	^ Stage default arena insetBy: Theme current fullScreenDeskMargin! !

!PasteUpMorph methodsFor: '*Blueprint' stamp: ''!
backgroundImage: aForm
	"Public setter. Clears any pre-rendered data cache and triggers a repaint."
	backgroundImage := aForm.
	backgroundImageData := nil.
	self fullRepaintNeeded! !

!WorldMorph methodsFor: '*Blueprint' stamp: ''!
click: aMouseButtonEvent localPosition: localEventPosition
	"Blueprint: plain left-click on the world does nothing. Right-click still
	opens the menu via mouseButton2Down:."! !

!WorldMorph methodsFor: '*Blueprint' stamp: ''!
desktopWindows
	"The canonical set the dock, overview and space system operate on: the managed windows currently PLACED
	on the desktop, front-to-back. isManagedDesktopMorph selects real subjects, not chrome. Excludes a window
	momentarily grabbed by the hand (Morphic reparents a dragged morph out of the world); the active card's
	mini-map, which must keep tracking a drag, adds that back itself (see SpaceCard>>bpDesktopMorphs)."
	^ self submorphs select: [:m | m isManagedDesktopMorph]! !

!WorldMorph methodsFor: '*Blueprint' stamp: ''!
drawOn: aCanvas
	"Tile backgroundImage so super-tile edges land exactly at the horizontal AND vertical centers of the screen.
	No backgroundImage -> vanilla draw."
	| img tw th xMod yMod x0 y0 x y rightEdge bottomEdge |
	img := backgroundImage.
	img isNil ifTrue: [ ^ super drawOn: aCanvas ].
	aCanvas fillRectangle: self localBounds color: color.
	tw := img width.
	th := img height.
	xMod := (extent x // 2) \\ tw.
	yMod := (extent y // 2) \\ th.
	x0 := xMod - tw.
	y0 := yMod - th.
	rightEdge := extent x.
	bottomEdge := extent y.
	x := x0.
	[x < rightEdge] whileTrue: [
		y := y0.
		[y < bottomEdge] whileTrue: [
			aCanvas image: img at: x @ y.
			y := y + th].
		x := x + tw]! !

!WorldMorph methodsFor: '*Blueprint' stamp: ''!
extentChanged: oldExtent
	"Re-run BlueprintTheme>>startUp: so bg + Dock survive an extent change.
	PasteUpMorph>>extentChanged: calls buildMagnifiedBackgroundImage which
	nils backgroundImage when backgroundImageData is nil (our case â we set
	the tile Form directly). TaskbarMorph>>screenSizeChanged also stretches
	the Dock to world width."
	super extentChanged: oldExtent.
	taskbar ifNotNil: [ taskbar screenSizeChanged ].
	[Theme current class startUp: false] on: Error do: [:ex | ]! !

!WorldMorph methodsFor: '*Blueprint' stamp: 'ML 3/Jul/2026 16:09:41'!
restoreDisplay
	"Scale-aware: world extent is in LOCAL coords, so with a world scale !!= 1 the local frame
	must be Display extent / scale to fill the screen once the world transform scales it.
	(At scale 1.0 this is exactly Display extent, so no change to normal operation.)"
	self morphExtent: (Display extent / self scale) ceiling.
	activeHand visible: true.
	self fullRepaintNeeded.
	Theme current class fitDisplay! !

!WorldMorph methodsFor: '*Blueprint' stamp: 'ML 3/Jul/2026 16:36:57'!
showTaskbar
	"Blueprint: build the CURRENT THEME's taskbar, not unconditionally a stock row.
	Upstream rebuilds the desktop through here -- notably the recreateDefaultDesktop
	block a released image carries in its saved deferred queue and runs on first boot,
	AFTER any -r install has activated Blueprint. Without this override, that rebuild
	replaces the Dock with a plain TaskbarMorph."
	taskbar ifNil: [
		(Theme current isKindOf: BlueprintTheme)
			ifTrue: [BlueprintTheme installDockIn: self]
			ifFalse: [
				taskbar := TaskbarMorph newRow.
				self addMorph: taskbar]]! !

!WorldMorph methodsFor: '*Blueprint' stamp: ''!
worldMenuSpec
	"Spec for the menu and shortcut keys for the World.
	See coment at Morph >> #getMenu
	"
	^
	#(
		"Keyboard shortcut only. No menu entry."
		#(991 	nil 	$b 	smalltalk 	browse)
		#(992 	nil 	$f 	smalltalk 	findAndBrowseClass)
		#(993 	nil 	$F 	smalltalk 	findInSourceCode)
		#(997 	nil 	$/ 	theme 	setExpandAllWindows)
		#(998 	nil 	$* 	theme 	setDefaultSizeAllWindows)
	)
! !

!MenuLineMorph methodsFor: '*Blueprint' stamp: ''!
drawOn: aCanvas
	"Thin pill: 1 dp tall, 1 dp corner radius, centered vertically in a 5 dp box.
	8 dp horizontal pad to match menu item edges. Same ink as the menu's inner
	highlight so separators read as part of the chrome, not content."
	| s padH lineH cy |
	s := self hostScale.
	padH := 8 * s.
	lineH := 1 * s.
	cy := extent y / 2.
	aCanvas fillColor: Theme current chromeHighlight do: [
		aCanvas
			roundRectangleMinX: padH maxX: extent x - padH
			minY: cy - (lineH / 2.0) maxY: cy + (lineH / 2.0)
			rx: 1 * s ry: 1 * s]! !

!MenuLineMorph methodsFor: '*Blueprint' stamp: ''!
initialize
	"Blueprint: 5 dp tall (2 pad + 1 line + 2 pad)."
	| s |
	super initialize.
	s := DisplayScreen hostOSScaleFactor.
	extent := (50 * s) @ (5 * s)! !

!MenuLineMorph methodsFor: '*Blueprint' stamp: ''!
minimumExtent
	| s |
	s := DisplayScreen hostOSScaleFactor.
	^ (10 * s) @ (5 * s)! !

!MenuLineMorph methodsFor: '*Blueprint' stamp: ''!
requiresVectorCanvas ^ true! !

!TheWorldMenu class methodsFor: '*Blueprint' stamp: ''!
preferencesMenuOptions

	^`{
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		10.
				#itemOrder 		-> 		10.
				#label 				-> 		'Focus follows Mouse'.
				#selector 			-> 		#enableFocusFollowsMouse.
				#icon 				-> 		#windowIcon.
				#balloonText 		-> 		'At all times, make the active window and widget the one on which the mouse is located.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		10.
				#itemOrder 		-> 		20.
				#label 				-> 		'Focus when Click'.
				#selector 			-> 		#disableFocusFollowsMouse.
				#icon 				-> 		#windowIcon.
				#balloonText 		-> 		'At all times, make the active window and widget the one where the mouse was clicked.'
			} asDictionary.

			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		20.
				#itemOrder 		-> 		10.
				#label 				-> 		'Show ST-80 assignments'.
				#selector 			-> 		#enableShowAssignmentAsLeftArrow.
				#icon 				-> 		#editFindReplaceIcon.
				#balloonText 		-> 		'Show variable assignment in Smalltalk-80 style (left arrow).'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		20.
				#itemOrder 		-> 		20.
				#label 				-> 		'Show ANSI assignments'.
				#selector 			-> 		#disableShowAssignmentAsLeftArrow.
				#icon 				-> 		#editFindReplaceIcon.
				#balloonText 		-> 		'Show variable assignment in ANSI style ( := ).'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		30.
				#itemOrder 		-> 		50.
				#label				-> 		'Set System Font...'.
				#object 			-> 		FontFamily.
				#selector 			-> 		#promptUserAndSetDefault.
				#icon 				-> 		#preferencesDesktopFontIcon.
				#balloonText 		-> 		'change the current system font family.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		30.
				#itemOrder 		-> 		60.
				#label				-> 		'Load all TrueType Fonts'.
				#object 			-> 		TrueTypeFontFamily.
				#selector 			-> 		#readAdditionalFonts.
				#icon 				-> 		#preferencesDesktopFontIcon.
				#balloonText 		-> 		'Load additional TrueType fonts included with Cuis.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		30.
				#itemOrder 		-> 		70.
				#label 				-> 		'Icons...'.
				#object 			-> 		Theme.
				#selector 			-> 		#changeIcons.
				#icon 				-> 		#worldIcon.
				#balloonText 		-> 		'show more or less icons.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		30.
				#itemOrder 		-> 		80.
				#label 				-> 		'Themes...'.
				#object 			-> 		Theme.
				#selector 			-> 		#changeTheme.
				#icon 				-> 		#appearanceIcon.
				#balloonText 		-> 		'switch to another theme.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		40.
				#itemOrder 		-> 		10.
				#label 				-> 		'Show taskbar'.
				#object 			-> 		#myWorld.
				#selector 			-> 		#showTaskbar.
				#icon 				-> 		#expandIcon.
				#balloonText 		-> 		'show the taskbar'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		40.
				#itemOrder 		-> 		20.
				#label 				-> 		'Hide taskbar'.
				#object 			-> 		#myWorld.
				#selector 			-> 		#hideTaskbar.
				#icon 				-> 		#collapseIcon.
				#balloonText 		-> 		'hide the taskbar'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		50.
				#itemOrder 		-> 		10.
				#label 				-> 		'Full screen on'.
				#selector 			-> 		#fullScreenOn.
				#icon 				-> 		#viewFullscreenIcon.
				#balloonText 		-> 		'puts you in full-screen mode, if not already there.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		50.
				#itemOrder 		-> 		20.
				#label 				-> 		'Full screen off'.
				#selector 			-> 		#fullScreenOff.
				#icon 				-> 		#exitFullscreenIcon.
				#balloonText 		-> 		'if in full-screen mode, takes you out of it.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		60.
				#itemOrder 		-> 		10.
				#label 				-> 		'Save Prefs in UserPrefs.txt'.
				#selector 			-> 		#enableUsePrefsFile.
				#icon 				-> 		#windowIcon.
				#balloonText 		-> 		'Preferences are saved without need to save the Smalltalk Image.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		60.
				#itemOrder 		-> 		20.
				#label 				-> 		'Save Prefs in the Image'.
				#selector 			-> 		#disableUsePrefsFile.
				#icon 				-> 		#windowIcon.
				#balloonText 		-> 		'Preferences are lost unless the Smalltalk Image is saved.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		60.
				#itemOrder 		-> 		30.
				#label 				-> 		'Set Code Author...'.
				#object 			-> 		Utilities.
				#selector 			-> 		#setAuthor.
				#icon 				-> 		#usersIcon.
				#balloonText 		-> 		'supply initials to be used to identify the author of code and other content.'
			} asDictionary.
			{
				#submenuOf  		-> 		TheWorldMenu preferencesLabel.
				#itemGroup 		-> 		60.
				#itemOrder 		-> 		40.
				#label 				-> 		'All preferences...'.
				#object 			-> 		PreferenceSet.
				#selector 			-> 		#openPreferencesInspector.
				#icon 				-> 		#preferencesIcon.
				#balloonText 		-> 		'view and change various options.'
			} asDictionary.
		}`.
! !

!AbstractVectorCanvas methodsFor: '*Blueprint' stamp: ''!
chromeStrokes: aRectangle radius: r scale: s inner: innerColor outer: outerColor
	"The Blueprint chrome edge: a 1px inner highlight stroke plus a 0.5px outer hairline,
	both concentric with a squircle of the given radius (physical px). Drawn ON TOP of
	content -- call from postDrawOn: so submorphs cannot occlude the edge."
	self strokeWidth: 1 * s color: innerColor do: [
		self squircle: aRectangle radius: r inset: 1 * s].
	self strokeWidth: 0.5 * s color: outerColor do: [
		self squircle: aRectangle radius: r inset: 0.25 * s]! !

!AbstractVectorCanvas methodsFor: '*Blueprint' stamp: ''!
squircle: aRectangle radius: r
	"Continuous-corner rounded-rect path for aRectangle (see squircleMinX:...). Use inside
	fillColor:do: / strokeWidth:color:do: blocks. Radius in physical px."
	self squircleMinX: aRectangle left maxX: aRectangle right
		minY: aRectangle top maxY: aRectangle bottom radius: r! !

!AbstractVectorCanvas methodsFor: '*Blueprint' stamp: ''!
squircle: aRectangle radius: r inset: i
	"Concentric squircle: aRectangle shrunk by i on every side, radius reduced to match so
	the corner stays concentric with the outline at inset 0. The standard way to keep a
	centre-aligned stroke fully inside its bounds: inset by half the stroke width."
	self squircleMinX: aRectangle left + i maxX: aRectangle right - i
		minY: aRectangle top + i maxY: aRectangle bottom - i radius: ((r - i) max: 0)! !

!AbstractVectorCanvas methodsFor: '*Blueprint' stamp: ''!
squircleCornerAt: cornerPt incoming: ivec outgoing: ovec p: p a: a b: b c: c d: d r: r arcK: arcK alpha: alpha
	"Three cubic Beziers per corner — Apple/Figma continuous corner.
	(u, v) local frame: u along incoming, v along outgoing."
	| c1End c2End tangIn tangOut |
	c1End := cornerPt + (ivec * (a + b + c - p)) + (ovec * d).
	c2End := cornerPt + (ivec * d negated) + (ovec * (p - a - b - c)).
	tangIn := (ivec * alpha cos) + (ovec * alpha sin).
	tangOut := (ivec * alpha sin) + (ovec * alpha cos).
	self
		cubicBezierTo: c1End
		control1: cornerPt + (ivec * (a - p))
		control2: cornerPt + (ivec * (a + b - p)).
	self
		cubicBezierTo: c2End
		control1: c1End + (tangIn * (arcK * r))
		control2: c2End - (tangOut * (arcK * r)).
	self
		cubicBezierTo: cornerPt + (ovec * p)
		control1: cornerPt + (ovec * (p - a - b))
		control2: cornerPt + (ovec * (p - a))! !

!AbstractVectorCanvas methodsFor: '*Blueprint' stamp: ''!
squircleMinX: xMin maxX: xMax minY: yMin maxY: yMax radius: rIn
	"Apple/Figma continuous-corner rounded rectangle. Smoothness locked at 0.61.
	If radius â¥ half-side, smoothness drops automatically (down to 0 = circle).
	radius < 0.5 short-circuits to a plain rectangle (degenerate corners
	produce rasterizer artifacts)."
	| r sm budget p alpha arcAng arcLen distToB c d b a arcK
	  ivecTR ovecTR ivecBR ovecBR ivecBL ovecBL ivecTL ovecTL
	  cornerTR cornerBR cornerBL cornerTL |
	r := rIn max: 0.0.
	budget := ((xMax - xMin) min: (yMax - yMin)) / 2.0.
	r := r min: budget.
	r < 0.5 ifTrue: [
		self moveTo: xMin @ yMin.
		self lineTo: xMax @ yMin.
		self lineTo: xMax @ yMax.
		self lineTo: xMin @ yMax.
		self closePath.
		^ self].
	sm := 0.61.
	r * (1 + sm) > budget ifTrue: [sm := (budget / r - 1) max: 0.0].
	p := (1 + sm) * r.
	alpha := Float pi / 4 * sm.
	arcAng := Float pi / 2 - (2 * alpha).
	arcLen := (arcAng / 2.0) sin * r * 2 sqrt.
	distToB := r * (alpha / 2.0) tan.
	c := distToB * alpha cos.
	d := c * alpha tan.
	b := (p - arcLen - c - d) / 3.0.
	a := 2 * b.
	arcK := arcAng = 0 ifTrue: [0] ifFalse: [4.0 / 3.0 * (arcAng / 4.0) tan].
	cornerTR := xMax @ yMin. ivecTR := 1 @ 0. ovecTR := 0 @ 1.
	cornerBR := xMax @ yMax. ivecBR := 0 @ 1. ovecBR := -1 @ 0.
	cornerBL := xMin @ yMax. ivecBL := -1 @ 0. ovecBL := 0 @ -1.
	cornerTL := xMin @ yMin. ivecTL := 0 @ -1. ovecTL := 1 @ 0.
	self moveTo: (xMin + p) @ yMin.
	self lineTo: (xMax - p) @ yMin.
	self squircleCornerAt: cornerTR incoming: ivecTR outgoing: ovecTR
		p: p a: a b: b c: c d: d r: r arcK: arcK alpha: alpha.
	self lineTo: xMax @ (yMax - p).
	self squircleCornerAt: cornerBR incoming: ivecBR outgoing: ovecBR
		p: p a: a b: b c: c d: d r: r arcK: arcK alpha: alpha.
	self lineTo: (xMin + p) @ yMax.
	self squircleCornerAt: cornerBL incoming: ivecBL outgoing: ovecBL
		p: p a: a b: b c: c d: d r: r arcK: arcK alpha: alpha.
	self lineTo: xMin @ (yMin + p).
	self squircleCornerAt: cornerTL incoming: ivecTL outgoing: ovecTL
		p: p a: a b: b c: c d: d r: r arcK: arcK alpha: alpha.
	self closePath! !

!VectorEngineWithPlugin methodsFor: '*Blueprint' stamp: ''!
finishPath: ensureClosePath
	"Blueprint patch: compensate for a missing '+1' on spanBottom in the C plugin.
	The plugin returns spanLeft/Top/Right after adding +1 (effectively ceiling), but
	spanBottom is plain floor -- bottommost row of sub-pixel coverage gets dropped
	from the blend, producing faint artifacts at bottom corners of rounded paths.
	Until the plugin is rebuilt, add the missing +1 here."
	| spanLeft spanTop spanRight spanBottom |
	ensureClosePath ifTrue: [
		firstX isNaN ifFalse: [
			(firstX = currentX and: [firstY = currentY]) ifFalse: [
				self lineToFirstPoint]]].
	self primUpdateContourLastLine.
	spanLeft := self primSpanLeft.
	spanTop := self primSpanTop.
	spanRight := self primSpanRight.
	spanBottom := self primSpanBottom + 1.
	morphBoundsLeft := morphBoundsLeft min: spanLeft.
	morphBoundsTop := morphBoundsTop min: spanTop.
	morphBoundsRight := morphBoundsRight max: spanRight.
	morphBoundsBottom := morphBoundsBottom max: spanBottom.
	spanLeft < clipLeft ifTrue: [spanLeft := clipLeft].
	spanTop < clipTop ifTrue: [spanTop := clipTop].
	spanRight > clipRight ifTrue: [spanRight := clipRight].
	spanBottom > clipBottom ifTrue: [spanBottom := clipBottom].
	(spanRight >= spanLeft and: [spanBottom >= spanTop]) ifTrue: [
		self clippingSpec: clippingSpec.
		fillColor notNil ifTrue: [
			strokeColor notNil
				ifTrue: [self primBlendStrokeAndFillLeft: spanLeft top: spanTop right: spanRight bottom: spanBottom]
				ifFalse: [self primBlendFillOnlyLeft: spanLeft top: spanTop right: spanRight bottom: spanBottom]]
			ifFalse: [
				self primBlendStrokeOnlyLeft: spanLeft top: spanTop right: spanRight bottom: spanBottom]]! !

!VectorEngineWithPlugin class methodsFor: '*Blueprint' stamp: ''!
protected: aBlock
	"VectorEnginePlugin is not reentrant. A non-UI process must wait for the UI to be
	in a safe state before touching it; it blocks on a Semaphore signalled from
	whenUIinSafeState: (signal-before-wait is remembered, so the wait is race-free).
	The main UI process barges in without waiting, accepting a possible drawing glitch."
	| sem |
	(AccessLock notNil and: [ AccessLock ~= Processor activeProcess ]) ifTrue: [
		UISupervisor isUIProcessRunning ifFalse: [
			sem := Semaphore new.
			UISupervisor whenUIinSafeState: [ sem signal ].
			sem wait ] ].
	AccessLock := Processor activeProcess.
	aBlock value.
	AccessLock := nil.! !
BlueprintTheme initialize!
BlueprintPackage postPackageInstall!
