package com.prineside.tdi2.systems;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Vector2;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.components.MapShiftButtons;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.ObjectRetriever;
/* loaded from: classes2.dex */
public class MapEditorSystem extends GameSystem {

    /* renamed from: b */
    public Item f11557b;
    public BasicLevel basicLevel;
    public boolean mapChanged;
    public UserMap userMap;

    /* renamed from: a */
    public Mode f11556a = Mode.VIEW;
    public final Vector2 draggingShift = new Vector2();
    public final Vector2 draggingItemScreenPos = new Vector2();
    public boolean basicLevelEditor = false;
    public final ListenerGroup<MapEditorSystemListener> listeners = new ListenerGroup<>(MapEditorSystemListener.class);

    /* renamed from: d */
    public int f11558d = -1;

    /* renamed from: k */
    public final _MapListener f11559k = new _MapListener();

    /* renamed from: com.prineside.tdi2.systems.MapEditorSystem$6 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23146 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11566a;

        static {
            int[] iArr = new int[MapShiftButtons.Direction.values().length];
            f11566a = iArr;
            try {
                iArr[MapShiftButtons.Direction.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11566a[MapShiftButtons.Direction.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11566a[MapShiftButtons.Direction.DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11566a[MapShiftButtons.Direction.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface MapEditorSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static class MapEditorSystemListenerAdapter implements MapEditorSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void draggingPositionChanged() {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void mapGateChanged(int i, int i2, Gate.Side side, Gate gate) {
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void mapSizeChanged() {
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void mapTileChanged(int i, int i2, Tile tile) {
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void mapValidationFailed(Map.InvalidMapException invalidMapException) {
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void modeChanged(Mode mode) {
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void startedDragging() {
            }

            @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
            public void stoppedDragging(Item item) {
            }
        }

        void draggingPositionChanged();

        void mapGateChanged(int i, int i2, Gate.Side side, Gate gate);

        void mapSizeChanged();

        void mapTileChanged(int i, int i2, Tile tile);

        void mapValidationFailed(Map.InvalidMapException invalidMapException);

        void modeChanged(Mode mode);

        void startedDragging();

        void stoppedDragging(Item item);
    }

    /* loaded from: classes2.dex */
    public enum Mode {
        VIEW,
        DRAG,
        INSERT,
        REMOVE,
        DRAW_INSERT,
        DRAW_REMOVE;
        
        public static final Mode[] values = values();
    }

    /* loaded from: classes2.dex */
    public class _MapListener implements Map.MapListener {
        public _MapListener() {
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return false;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 0;
        }

        @Override // com.prineside.tdi2.Map.MapListener
        public void pathfindingRebuilt(boolean z) {
            MapEditorSystem.this.m20999i();
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    public Item getDraggingItem() {
        return this.f11557b;
    }

    public Mode getMode() {
        return this.f11556a;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "MapEditor";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m21003e(AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
        if (this.basicLevelEditor) {
            Game.f8589i.screenManager.startNewBasicLevel(this.basicLevel, selectedAbilitiesConfiguration);
        } else {
            Game.f8589i.screenManager.startNewUserLevel(this.userMap, selectedAbilitiesConfiguration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m21002f() {
        Map map;
        if (this.basicLevelEditor) {
            map = this.basicLevel.getMap();
        } else {
            map = this.userMap.map;
        }
        if (!map.targetTile.isDisableAbilities() && Game.f8589i.abilityManager.isAnyAbilityOpened()) {
            Game.f8589i.uiManager.abilitySelectionOverlay.show(new Runnable() { // from class: com.prineside.tdi2.systems.MapEditorSystem.2
                @Override // java.lang.Runnable
                public void run() {
                }
            }, new ObjectRetriever() { // from class: com.prineside.tdi2.systems.f
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    MapEditorSystem.this.m21003e((AbilitySelectionOverlay.SelectedAbilitiesConfiguration) obj);
                }
            });
        } else {
            Game.f8589i.screenManager.startNewUserLevel(this.userMap, null);
        }
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        MapSystem mapSystem = this.f8844S.map;
        if (mapSystem != null && mapSystem.getMap() != null) {
            this.f8844S.map.getMap().listeners.remove(this.f11559k);
        }
        this.f11557b = null;
        this.listeners.clear();
        this.userMap = null;
        this.basicLevel = null;
        super.dispose();
    }

    public void expandMap(MapShiftButtons.Direction direction) {
        Map map = this.f8844S.map.getMap();
        Logger.log("MapEditorSystem", "expand " + direction.name());
        MapShiftButtons.Direction direction2 = MapShiftButtons.Direction.LEFT;
        if ((direction == direction2 || direction == MapShiftButtons.Direction.RIGHT) && map.widthTiles >= 32) {
            return;
        }
        MapShiftButtons.Direction direction3 = MapShiftButtons.Direction.DOWN;
        if ((direction == direction3 || direction == MapShiftButtons.Direction.UP) && map.heightTiles >= 32) {
            return;
        }
        MapShiftButtons.Direction direction4 = MapShiftButtons.Direction.RIGHT;
        if (direction == direction4) {
            map.setSize(map.widthTiles + 1, map.heightTiles);
        } else {
            MapShiftButtons.Direction direction5 = MapShiftButtons.Direction.UP;
            if (direction == direction5) {
                map.setSize(map.widthTiles, map.heightTiles + 1);
            } else if (direction == direction2) {
                map.setSize(map.widthTiles + 1, map.heightTiles);
                shiftMap(direction4);
            } else if (direction == direction3) {
                map.setSize(map.widthTiles, map.heightTiles + 1);
                shiftMap(direction5);
            }
        }
        this.f8844S._mapRendering.forceTilesRedraw(true);
        map.rebuildPathfindingIfNeeded();
        this.f8844S.map.showAllPathTraces(true);
        this.mapChanged = true;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).mapSizeChanged();
        }
        this.listeners.end();
    }

    public void finishDragging() {
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).stoppedDragging(this.f11557b);
        }
        this.listeners.end();
        this.f11557b = null;
    }

    public void goToPreviousScreen() {
        if (this.mapChanged) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("edited_map_save_confirm"), new Runnable() { // from class: com.prineside.tdi2.systems.MapEditorSystem.4
                @Override // java.lang.Runnable
                public void run() {
                    MapEditorSystem.this.saveMap();
                    if (MapEditorSystem.this.basicLevelEditor) {
                        Game.f8589i.screenManager.goToLevelSelectScreen();
                    } else {
                        Game.f8589i.screenManager.goToCustomMapSelectScreen();
                    }
                }
            }, new Runnable() { // from class: com.prineside.tdi2.systems.MapEditorSystem.5
                @Override // java.lang.Runnable
                public void run() {
                    if (MapEditorSystem.this.basicLevelEditor) {
                        Game.f8589i.screenManager.goToLevelSelectScreen();
                    } else {
                        Game.f8589i.screenManager.goToCustomMapSelectScreen();
                    }
                }
            });
        } else if (this.basicLevelEditor) {
            Game.f8589i.screenManager.goToLevelSelectScreen();
        } else {
            Game.f8589i.screenManager.goToCustomMapSelectScreen();
        }
    }

    /* renamed from: h */
    public final void m21000h(int i, int i2, Gate.Side side, Gate gate) {
        Gate gate2 = this.f8844S.map.getMap().getGate(i, i2, side);
        if (gate2 == null && gate == null) {
            return;
        }
        if (gate2 != null) {
            this.f8844S.map.unregisterGate(gate2);
        }
        if (gate == null) {
            this.f8844S.map.getMap().setGate(i, i2, side, null);
        } else {
            Gate cloneGate = gate.cloneGate();
            this.f8844S.map.getMap().setGate(i, i2, side, cloneGate);
            this.f8844S.map.registerGate(cloneGate);
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).mapGateChanged(i, i2, side, gate2);
        }
        this.listeners.end();
    }

    /* renamed from: i */
    public final void m20999i() {
        boolean hasTileThatAllowsWalkablePlatforms = this.f8844S.map.getMap().hasTileThatAllowsWalkablePlatforms();
        if (this.f11558d != hasTileThatAllowsWalkablePlatforms) {
            this.f8844S._pathRendering.dontDrawOverPlatforms = !hasTileThatAllowsWalkablePlatforms ? 1 : 0;
            for (int i = 0; i < this.f8844S.map.getMap().tilesArray.size; i++) {
                Tile tile = this.f8844S.map.getMap().tilesArray.items[i];
                if (tile.type == TileType.PLATFORM) {
                    PlatformTile platformTile = (PlatformTile) tile;
                    boolean z = true;
                    if (!hasTileThatAllowsWalkablePlatforms) {
                        z = false;
                    }
                    platformTile.walkableEnabled = z;
                }
            }
            this.f11558d = hasTileThatAllowsWalkablePlatforms ? 1 : 0;
            this.f8844S.map.getMap().rebuildPathfinding();
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.f8844S.map.getMap().listeners.add(this.f11559k);
        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.systems.MapEditorSystem.1
            @Override // java.lang.Runnable
            public void run() {
                MapEditorSystem.this.m20999i();
            }
        });
    }

    public void reduceMap(MapShiftButtons.Direction direction) {
        Map map = this.f8844S.map.getMap();
        MapShiftButtons.Direction direction2 = MapShiftButtons.Direction.LEFT;
        if ((direction == direction2 || direction == MapShiftButtons.Direction.RIGHT) && map.widthTiles == 1) {
            return;
        }
        MapShiftButtons.Direction direction3 = MapShiftButtons.Direction.DOWN;
        if ((direction == direction3 || direction == MapShiftButtons.Direction.UP) && map.heightTiles == 1) {
            return;
        }
        MapShiftButtons.Direction direction4 = MapShiftButtons.Direction.RIGHT;
        if (direction == direction4) {
            shiftMap(direction4);
            shiftMap(direction2);
            map.setSize(map.widthTiles - 1, map.heightTiles);
        } else {
            MapShiftButtons.Direction direction5 = MapShiftButtons.Direction.UP;
            if (direction == direction5) {
                shiftMap(direction5);
                shiftMap(direction3);
                map.setSize(map.widthTiles, map.heightTiles - 1);
            } else if (direction == direction2) {
                shiftMap(direction2);
                map.setSize(map.widthTiles - 1, map.heightTiles);
            } else if (direction == direction3) {
                shiftMap(direction3);
                map.setSize(map.widthTiles, map.heightTiles - 1);
            }
        }
        this.f8844S._mapRendering.forceTilesRedraw(true);
        map.rebuildPathfindingIfNeeded();
        this.f8844S.map.showAllPathTraces(true);
        this.mapChanged = true;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).mapSizeChanged();
        }
        this.listeners.end();
    }

    public void saveMap() {
        if (this.basicLevelEditor) {
            Game.f8589i.basicLevelManager.setMap(this.basicLevel, this.f8844S.map.getMap());
            return;
        }
        this.userMap.map = this.f8844S.map.getMap().cpy();
        Game.f8589i.userMapManager.save();
        Game.f8589i.progressManager.save();
    }

    public void setDraggingItemScreenPos(float f, float f2) {
        this.draggingItemScreenPos.set(f, f2).add(this.draggingShift);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).draggingPositionChanged();
        }
        this.listeners.end();
    }

    public void setMapGate(int i, int i2, Gate.Side side, Gate gate) {
        Gate gate2 = this.f8844S.map.getMap().getGate(i, i2, side);
        if (gate2 == null && gate == null) {
            return;
        }
        if (gate2 != null) {
            this.f8844S.map.unregisterGate(gate2);
        }
        if (gate == null) {
            this.f8844S.map.getMap().setGate(i, i2, side, null);
        } else {
            Gate cloneGate = gate.cloneGate();
            this.f8844S.map.getMap().setGate(i, i2, side, cloneGate);
            this.f8844S.map.registerGate(cloneGate);
        }
        this.f8844S._mapRendering.forceTilesRedraw(true);
        this.f8844S.map.getMap().updateCache();
        this.f8844S.map.getMap().rebuildPathfindingIfNeeded();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).mapGateChanged(i, i2, side, gate2);
        }
        this.listeners.end();
        this.mapChanged = true;
    }

    public void setMapTile(int i, int i2, Tile tile) {
        Tile tile2 = this.f8844S.map.getMap().getTile(i, i2);
        if (tile2 == null && tile == null) {
            return;
        }
        if (tile2 != null) {
            this.f8844S.map.unregisterTile(tile2);
        }
        if (tile == null) {
            this.f8844S.map.getMap().setTile(i, i2, null);
        } else {
            Tile cloneTile = tile.cloneTile();
            this.f8844S.map.getMap().setTile(i, i2, cloneTile);
            this.f8844S.map.registerTile(cloneTile);
        }
        this.f8844S._mapRendering.forceTilesRedraw(true);
        this.f8844S.map.getMap().updateCache();
        this.f8844S.map.getMap().rebuildPathfindingIfNeeded();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).mapTileChanged(i, i2, tile2);
        }
        this.listeners.end();
        this.mapChanged = true;
    }

    public void setMapTileLite(int i, int i2, Tile tile) {
        Tile tile2 = this.f8844S.map.getMap().getTile(i, i2);
        if (tile2 == null && tile == null) {
            return;
        }
        if (tile2 != null) {
            this.f8844S.map.unregisterTile(tile2);
        }
        if (tile == null) {
            this.f8844S.map.getMap().setTile(i, i2, null);
        } else {
            Tile cloneTile = tile.cloneTile();
            this.f8844S.map.getMap().setTile(i, i2, cloneTile);
            this.f8844S.map.registerTile(cloneTile);
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).mapTileChanged(i, i2, tile2);
        }
        this.listeners.end();
    }

    public void setMode(Mode mode) {
        if (this.f11556a != mode) {
            if (this.f11557b != null) {
                finishDragging();
            }
            Mode mode2 = this.f11556a;
            this.f11556a = mode;
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).modeChanged(mode2);
            }
            this.listeners.end();
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        if (Gdx.app.getType() == Application.ApplicationType.Android || Gdx.app.getType() == Application.ApplicationType.iOS) {
            this.draggingShift.f5528y = -192.0f;
        }
    }

    public void shiftMap(MapShiftButtons.Direction direction) {
        Gate.Side[] sideArr;
        int i;
        Gate.Side[] sideArr2;
        Gate.Side[] sideArr3;
        int i2;
        Gate.Side[] sideArr4;
        Map map = this.f8844S.map.getMap();
        int i3 = C23146.f11566a[direction.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 == 4) {
                        for (int i4 = 0; i4 < map.widthTiles; i4++) {
                            Tile tile = map.getTile(i4, map.heightTiles - 1);
                            if (tile != null) {
                                this.f8844S._inventory.addTile(tile, 1);
                            }
                            for (int i5 = map.heightTiles - 2; i5 >= 0; i5--) {
                                setMapTileLite(i4, i5 + 1, map.getTile(i4, i5));
                            }
                            setMapTileLite(i4, 0, null);
                        }
                        for (int i6 = 0; i6 <= map.widthTiles; i6++) {
                            for (Gate.Side side : Gate.Side.values) {
                                Gate gate = map.getGate(i6, map.heightTiles, side);
                                if (gate != null) {
                                    this.f8844S._inventory.addGate(gate, 1);
                                }
                            }
                            Gate.Side side2 = Gate.Side.LEFT;
                            Gate gate2 = map.getGate(i6, map.heightTiles - 1, side2);
                            if (gate2 != null) {
                                this.f8844S._inventory.addGate(gate2, 1);
                                m21000h(i6, map.heightTiles - 1, side2, null);
                            }
                            for (int i7 = map.heightTiles - 1; i7 >= 0; i7--) {
                                for (Gate.Side side3 : Gate.Side.values) {
                                    m21000h(i6, i7 + 1, side3, map.getGate(i6, i7, side3));
                                }
                            }
                            for (Gate.Side side4 : Gate.Side.values) {
                                m21000h(i6, 0, side4, null);
                            }
                        }
                    }
                } else {
                    for (int i8 = 0; i8 < map.widthTiles; i8++) {
                        Tile tile2 = map.getTile(i8, 0);
                        if (tile2 != null) {
                            this.f8844S._inventory.addTile(tile2, 1);
                        }
                        int i9 = 1;
                        while (true) {
                            i2 = map.heightTiles;
                            if (i9 < i2) {
                                setMapTileLite(i8, i9 - 1, map.getTile(i8, i9));
                                i9++;
                            }
                        }
                        setMapTileLite(i8, i2 - 1, null);
                    }
                    for (int i10 = 0; i10 <= map.widthTiles; i10++) {
                        for (Gate.Side side5 : Gate.Side.values) {
                            Gate gate3 = map.getGate(i10, 0, side5);
                            if (gate3 != null) {
                                this.f8844S._inventory.addGate(gate3, 1);
                            }
                        }
                        for (int i11 = 1; i11 <= map.heightTiles; i11++) {
                            for (Gate.Side side6 : Gate.Side.values) {
                                m21000h(i10, i11 - 1, side6, map.getGate(i10, i11, side6));
                            }
                        }
                        for (Gate.Side side7 : Gate.Side.values) {
                            m21000h(i10, map.heightTiles, side7, null);
                        }
                    }
                }
            } else {
                for (int i12 = 0; i12 < map.heightTiles; i12++) {
                    Tile tile3 = map.getTile(map.widthTiles - 1, i12);
                    if (tile3 != null) {
                        this.f8844S._inventory.addTile(tile3, 1);
                    }
                    for (int i13 = map.widthTiles - 2; i13 >= 0; i13--) {
                        setMapTileLite(i13 + 1, i12, map.getTile(i13, i12));
                    }
                    setMapTileLite(0, i12, null);
                }
                for (int i14 = 0; i14 <= map.heightTiles; i14++) {
                    for (Gate.Side side8 : Gate.Side.values) {
                        Gate gate4 = map.getGate(map.widthTiles, i14, side8);
                        if (gate4 != null) {
                            this.f8844S._inventory.addGate(gate4, 1);
                        }
                    }
                    Gate.Side side9 = Gate.Side.BOTTOM;
                    Gate gate5 = map.getGate(map.widthTiles - 1, i14, side9);
                    if (gate5 != null) {
                        this.f8844S._inventory.addGate(gate5, 1);
                        m21000h(map.widthTiles - 1, i14, side9, null);
                    }
                    for (int i15 = map.widthTiles - 1; i15 >= 0; i15--) {
                        for (Gate.Side side10 : Gate.Side.values) {
                            m21000h(i15 + 1, i14, side10, map.getGate(i15, i14, side10));
                        }
                    }
                    for (Gate.Side side11 : Gate.Side.values) {
                        m21000h(0, i14, side11, null);
                    }
                }
            }
        } else {
            for (int i16 = 0; i16 < map.heightTiles; i16++) {
                Tile tile4 = map.getTile(0, i16);
                if (tile4 != null) {
                    this.f8844S._inventory.addTile(tile4, 1);
                }
                int i17 = 1;
                while (true) {
                    i = map.widthTiles;
                    if (i17 < i) {
                        setMapTileLite(i17 - 1, i16, map.getTile(i17, i16));
                        i17++;
                    }
                }
                setMapTileLite(i - 1, i16, null);
            }
            for (int i18 = 0; i18 <= map.heightTiles; i18++) {
                for (Gate.Side side12 : Gate.Side.values) {
                    Gate gate6 = map.getGate(0, i18, side12);
                    if (gate6 != null) {
                        this.f8844S._inventory.addGate(gate6, 1);
                    }
                }
                for (int i19 = 1; i19 <= map.widthTiles; i19++) {
                    for (Gate.Side side13 : Gate.Side.values) {
                        m21000h(i19 - 1, i18, side13, map.getGate(i19, i18, side13));
                    }
                }
                for (Gate.Side side14 : Gate.Side.values) {
                    m21000h(map.widthTiles, i18, side14, null);
                }
            }
        }
        this.f8844S._mapRendering.forceTilesRedraw(true);
        map.rebuildPathfindingIfNeeded();
        this.f8844S.map.showAllPathTraces(true);
        this.mapChanged = true;
    }

    public boolean startDraggingItem(Item item) {
        if (this.f11556a != Mode.DRAG) {
            Logger.error("MapEditorSystem", "mode: " + this.f11556a.name() + ", can't drag", new Throwable());
            return false;
        }
        if (this.f11557b != null) {
            Logger.log("MapEditorSystem", "already dragging, canceling previous");
            finishDragging();
        }
        this.f11557b = item;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).startedDragging();
        }
        this.listeners.end();
        return true;
    }

    public boolean startMap() {
        Logger.log("MapEditorSystem", "starting the map...");
        try {
            this.f8844S.map.getMap().validate();
            saveMap();
            final Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.systems.d
                @Override // java.lang.Runnable
                public final void run() {
                    MapEditorSystem.this.m21002f();
                }
            };
            new Runnable() { // from class: com.prineside.tdi2.systems.e
                @Override // java.lang.Runnable
                public final void run() {
                    MapEditorSystem.this.m21001g(runnable);
                }
            }.run();
            return true;
        } catch (Map.InvalidMapException e) {
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).mapValidationFailed(e);
            }
            this.listeners.end();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m21001g(final Runnable runnable) {
        if (GameStateSystem.savedGameExists()) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.systems.MapEditorSystem.3
                @Override // java.lang.Runnable
                public void run() {
                    GameStateSystem.deleteSavedGame();
                    runnable.run();
                }
            });
            return;
        }
        runnable.run();
    }
}
