package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectSet;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.items.GateItem;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.actors.ScreenBorderGradient;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.DraggingItemHelper;
import com.prineside.tdi2.p036ui.components.MapEditorInventoryMenu;
import com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu;
import com.prineside.tdi2.p036ui.components.MapEditorUi;
import com.prineside.tdi2.p036ui.components.MapShiftButtons;
import com.prineside.tdi2.screens.MapEditorScreen;
import com.prineside.tdi2.systems.InventorySystem;
import com.prineside.tdi2.systems.MapEditorSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* loaded from: classes2.dex */
public class MapEditorScreen extends Screen {

    /* renamed from: L */
    public static ObjectSet<TileType> f10884L;

    /* renamed from: A */
    public Map f10885A;

    /* renamed from: B */
    public UserMap f10886B;

    /* renamed from: C */
    public BasicLevel f10887C;

    /* renamed from: J */
    public Gate f10894J;

    /* renamed from: S */
    public GameSystemProvider f10896S;

    /* renamed from: a */
    public OrthographicCamera f10897a;

    /* renamed from: b */
    public _HoverSelectInputProcessor f10898b;

    /* renamed from: c */
    public _DragInputProcessor f10899c;
    public CameraController cameraController;

    /* renamed from: d */
    public _RemoveInputProcessor f10900d;
    public DraggingItemHelper draggingItemHelper;

    /* renamed from: e */
    public _InsertInputProcessor f10901e;

    /* renamed from: f */
    public _DrawInsertInputProcessor f10902f;

    /* renamed from: g */
    public _DrawRemoveInputProcessor f10903g;

    /* renamed from: h */
    public _ScrollFocusInputProcessor f10904h;

    /* renamed from: i */
    public InputMultiplexer f10905i;

    /* renamed from: j */
    public SideMenu f10906j;

    /* renamed from: k */
    public MapEditorInventoryMenu f10907k;

    /* renamed from: l */
    public MapEditorItemInfoMenu f10908l;
    public MapEditorUi mainUi;
    public MapShiftButtons mapShiftButtons;

    /* renamed from: n */
    public int f10910n;

    /* renamed from: o */
    public int f10911o;

    /* renamed from: q */
    public int f10913q;

    /* renamed from: r */
    public int f10914r;

    /* renamed from: s */
    public Gate.Side f10915s;
    public ScreenBorderGradient screenBorderGradient;
    public int selectedGateX;
    public int selectedGateY;
    public int selectedTileX;
    public int selectedTileY;

    /* renamed from: t */
    public Gate.Side f10916t;

    /* renamed from: u */
    public ItemStack f10917u;

    /* renamed from: x */
    public int f10920x;

    /* renamed from: y */
    public int f10921y;

    /* renamed from: z */
    public Gate.Side f10922z;

    /* renamed from: m */
    public boolean f10909m = false;
    public boolean selectedTile = false;

    /* renamed from: p */
    public boolean f10912p = false;
    public boolean selectedBarrier = false;

    /* renamed from: v */
    public Vector2 f10918v = new Vector2();

    /* renamed from: w */
    public boolean f10919w = false;

    /* renamed from: D */
    public final _MapShiftButtonsListener f10888D = new _MapShiftButtonsListener(this, null);

    /* renamed from: E */
    public final _MapEditorSystemListener f10889E = new _MapEditorSystemListener(this, null);

    /* renamed from: F */
    public final _InventorySystemListener f10890F = new _InventorySystemListener(this, null);

    /* renamed from: G */
    public final _MapEditorInventoryMenuListener f10891G = new _MapEditorInventoryMenuListener(this, null);

    /* renamed from: H */
    public final _MapEditorTileInfoMenuListener f10892H = new _MapEditorTileInfoMenuListener(this, null);

    /* renamed from: I */
    public final _ProgressManagerListener f10893I = new _ProgressManagerListener(this, null);

    /* renamed from: K */
    public final _MapListener f10895K = new _MapListener(this, null);

    /* renamed from: com.prineside.tdi2.screens.MapEditorScreen$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C21231 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10923a;

        static {
            int[] iArr = new int[ItemType.values().length];
            f10923a = iArr;
            try {
                iArr[ItemType.TILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10923a[ItemType.GATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _DragInputProcessor extends InputAdapter {

        /* renamed from: a */
        public final Vector2 f10924a;

        /* renamed from: b */
        public final Vector2 f10925b;

        /* renamed from: d */
        public boolean f10926d;

        public _DragInputProcessor() {
            this.f10924a = new Vector2();
            this.f10925b = new Vector2();
            this.f10926d = false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) {
            if (MapEditorScreen.this.f10896S._mapEditor.getMode() == MapEditorSystem.Mode.DRAG) {
                this.f10924a.set(i, i2);
                MapEditorScreen.this.cameraController.screenToStage(this.f10924a);
                return false;
            }
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            Tile tileByMapPos;
            Gate gate;
            float f = i;
            float f2 = i2;
            MapEditorScreen.this.f10918v.set(f, f2);
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.cameraController.screenToMap(mapEditorScreen.f10918v);
            this.f10925b.set(f, f2);
            MapEditorScreen.this.cameraController.screenToStage(this.f10925b);
            if (!this.f10926d && this.f10924a.dst2(this.f10925b) > 16.0f) {
                Vector2 vector2 = new Vector2();
                vector2.set(this.f10925b);
                MapEditorScreen.this.cameraController.stageToMap(vector2);
                if (MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(MapEditorScreen.this.f10918v.f5527x, MapEditorScreen.this.f10918v.f5528y, MapEditorScreen.this.f10894J) && (gate = MapEditorScreen.this.f10896S.map.getMap().getGate(MapEditorScreen.this.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide())) != null) {
                    MapEditorScreen.this.f10896S._mapEditor.startDraggingItem(Item.C1543D.F_GATE.create(gate));
                    this.f10926d = true;
                    MapEditorScreen.this.f10919w = true;
                    MapEditorScreen.this.f10920x = gate.getX();
                    MapEditorScreen.this.f10921y = gate.getY();
                    MapEditorScreen.this.f10922z = gate.getSide();
                    MapEditorScreen.this.f10896S._mapEditor.setMapGate(gate.getX(), gate.getY(), gate.getSide(), null);
                }
                if (!this.f10926d && (tileByMapPos = MapEditorScreen.this.f10896S.map.getMap().getTileByMapPos(vector2.f5527x, vector2.f5528y)) != null) {
                    MapEditorScreen.this.f10896S._mapEditor.startDraggingItem(Item.C1543D.F_TILE.create(tileByMapPos));
                    this.f10926d = true;
                    MapEditorScreen.this.f10919w = true;
                    MapEditorScreen.this.f10920x = tileByMapPos.getX();
                    MapEditorScreen.this.f10921y = tileByMapPos.getY();
                    MapEditorScreen.this.f10896S._mapEditor.setMapTile(tileByMapPos.getX(), tileByMapPos.getY(), null);
                }
            }
            if (MapEditorScreen.this.f10896S._mapEditor.getDraggingItem() != null) {
                MapEditorScreen.this.f10896S._mapEditor.setDraggingItemScreenPos(f, f2);
                return false;
            }
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            if (this.f10926d) {
                if (MapEditorScreen.this.f10896S._mapEditor.getDraggingItem() != null) {
                    MapEditorScreen.this.f10896S._mapEditor.finishDragging();
                }
                this.f10926d = false;
            } else {
                MapEditorScreen.this.f10898b.touchUp(i, i2, i3, i4);
            }
            MapEditorScreen.this.f10919w = false;
            return false;
        }

        public /* synthetic */ _DragInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class _DrawInsertInputProcessor extends InputAdapter {

        /* renamed from: a */
        public int f10928a;

        /* renamed from: b */
        public int f10929b;

        /* renamed from: d */
        public Gate.Side f10930d;

        public _DrawInsertInputProcessor() {
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) {
            this.f10928a = -1;
            this.f10929b = -1;
            this.f10930d = null;
            m21188a(i, i2);
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            m21188a(i, i2);
            return false;
        }

        public /* synthetic */ _DrawInsertInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        /* renamed from: a */
        public final void m21188a(int i, int i2) {
            if (MapEditorScreen.this.f10917u != null && MapEditorScreen.this.f10917u.getCount() > 0) {
                MapEditorScreen.this.f10918v.set(i, i2);
                MapEditorScreen mapEditorScreen = MapEditorScreen.this;
                mapEditorScreen.cameraController.screenToMap(mapEditorScreen.f10918v);
                int i3 = C21231.f10923a[MapEditorScreen.this.f10917u.getItem().getType().ordinal()];
                if (i3 != 1) {
                    if (i3 == 2 && MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(MapEditorScreen.this.f10918v.f5527x, MapEditorScreen.this.f10918v.f5528y, MapEditorScreen.this.f10894J)) {
                        if (this.f10928a == MapEditorScreen.this.f10894J.getX() && this.f10929b == MapEditorScreen.this.f10894J.getY() && this.f10930d == MapEditorScreen.this.f10894J.getSide()) {
                            return;
                        }
                        this.f10928a = MapEditorScreen.this.f10894J.getX();
                        this.f10929b = MapEditorScreen.this.f10894J.getY();
                        this.f10930d = MapEditorScreen.this.f10894J.getSide();
                        Gate gate = MapEditorScreen.this.f10896S.map.getMap().getGate(MapEditorScreen.this.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide());
                        if (gate != null) {
                            MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_GATE.create(gate), 1);
                        }
                        GateItem gateItem = (GateItem) MapEditorScreen.this.f10917u.getItem();
                        if (MapEditorScreen.this.f10896S._inventory.remove(gateItem)) {
                            MapEditorScreen mapEditorScreen2 = MapEditorScreen.this;
                            mapEditorScreen2.f10896S._mapEditor.setMapGate(mapEditorScreen2.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide(), gateItem.gate);
                            return;
                        }
                        MapEditorScreen.this.f10907k.deselectAll();
                        MapEditorScreen.this.f10917u = null;
                        return;
                    }
                    return;
                }
                int i4 = (int) (MapEditorScreen.this.f10918v.f5527x / 128.0f);
                int i5 = (int) (MapEditorScreen.this.f10918v.f5528y / 128.0f);
                if (MapEditorScreen.this.f10918v.f5527x >= 0.0f && MapEditorScreen.this.f10918v.f5528y >= 0.0f && i4 < MapEditorScreen.this.f10896S.map.getMap().widthTiles && i5 < MapEditorScreen.this.f10896S.map.getMap().heightTiles) {
                    if (this.f10928a == i4 && this.f10929b == i5) {
                        return;
                    }
                    this.f10928a = i4;
                    this.f10929b = i5;
                    Tile tile = MapEditorScreen.this.f10896S.map.getMap().getTile(i4, i5);
                    if (tile != null) {
                        MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_TILE.create(tile), 1);
                    }
                    TileItem tileItem = (TileItem) MapEditorScreen.this.f10917u.getItem();
                    if (MapEditorScreen.this.f10896S._inventory.remove(tileItem)) {
                        MapEditorScreen.this.f10896S._mapEditor.setMapTile(i4, i5, tileItem.tile);
                        return;
                    }
                    MapEditorScreen.this.f10907k.deselectAll();
                    MapEditorScreen.this.f10917u = null;
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _DrawRemoveInputProcessor extends InputAdapter {
        public _DrawRemoveInputProcessor() {
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) {
            m21187a(i, i2);
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            m21187a(i, i2);
            return false;
        }

        public /* synthetic */ _DrawRemoveInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        /* renamed from: a */
        public final void m21187a(int i, int i2) {
            Gate gate;
            Tile tile;
            MapEditorScreen.this.f10918v.set(i, i2);
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.cameraController.screenToMap(mapEditorScreen.f10918v);
            int i3 = (int) (MapEditorScreen.this.f10918v.f5527x / 128.0f);
            int i4 = (int) (MapEditorScreen.this.f10918v.f5528y / 128.0f);
            if (MapEditorScreen.this.f10918v.f5527x >= 0.0f && MapEditorScreen.this.f10918v.f5528y >= 0.0f && i3 < MapEditorScreen.this.f10896S.map.getMap().widthTiles && i4 < MapEditorScreen.this.f10896S.map.getMap().heightTiles && (tile = MapEditorScreen.this.f10896S.map.getMap().getTile(i3, i4)) != null) {
                MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_TILE.create(tile), 1);
                MapEditorScreen.this.f10896S._mapEditor.setMapTile(i3, i4, null);
            }
            if (MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(MapEditorScreen.this.f10918v.f5527x, MapEditorScreen.this.f10918v.f5528y, MapEditorScreen.this.f10894J) && (gate = MapEditorScreen.this.f10896S.map.getMap().getGate(MapEditorScreen.this.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide())) != null) {
                MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_GATE.create(gate), 1);
                MapEditorScreen mapEditorScreen2 = MapEditorScreen.this;
                mapEditorScreen2.f10896S._mapEditor.setMapGate(mapEditorScreen2.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide(), null);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _HoverSelectInputProcessor extends InputAdapter {
        public boolean hoverBarriers;
        public boolean hoverTiles;
        public boolean selectBarriers;
        public boolean selectTiles;

        public _HoverSelectInputProcessor() {
            this.selectTiles = true;
            this.selectBarriers = true;
            this.hoverTiles = true;
            this.hoverBarriers = true;
        }

        public void handleMove(int i, int i2) {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.cameraController.screenToMap(mapEditorScreen.f10918v.set(i, i2));
            boolean z = true;
            if (this.hoverBarriers && MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(MapEditorScreen.this.f10918v.f5527x, MapEditorScreen.this.f10918v.f5528y, MapEditorScreen.this.f10894J)) {
                MapEditorScreen.this.f10912p = true;
                MapEditorScreen mapEditorScreen2 = MapEditorScreen.this;
                mapEditorScreen2.f10913q = mapEditorScreen2.f10894J.getX();
                MapEditorScreen mapEditorScreen3 = MapEditorScreen.this;
                mapEditorScreen3.f10914r = mapEditorScreen3.f10894J.getY();
                MapEditorScreen mapEditorScreen4 = MapEditorScreen.this;
                mapEditorScreen4.f10915s = mapEditorScreen4.f10894J.getSide();
                MapEditorScreen.this.f10909m = false;
                return;
            }
            MapEditorScreen.this.f10912p = false;
            if (this.hoverTiles) {
                MapEditorScreen mapEditorScreen5 = MapEditorScreen.this;
                mapEditorScreen5.f10910n = (int) (mapEditorScreen5.f10918v.f5527x / 128.0f);
                MapEditorScreen mapEditorScreen6 = MapEditorScreen.this;
                mapEditorScreen6.f10911o = (int) (mapEditorScreen6.f10918v.f5528y / 128.0f);
                MapEditorScreen mapEditorScreen7 = MapEditorScreen.this;
                mapEditorScreen7.f10909m = (mapEditorScreen7.f10918v.f5527x < 0.0f || MapEditorScreen.this.f10918v.f5528y < 0.0f || MapEditorScreen.this.f10910n >= MapEditorScreen.this.f10896S.map.getMap().widthTiles || MapEditorScreen.this.f10911o >= MapEditorScreen.this.f10896S.map.getMap().heightTiles) ? false : false;
                return;
            }
            MapEditorScreen.this.f10909m = false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            if (MapEditorScreen.this.f10896S._mapEditor.getDraggingItem() != null) {
                Vector2 vector2 = MapEditorScreen.this.f10896S._mapEditor.draggingShift;
                i = (int) (i + vector2.f5527x);
                i2 = (int) (i2 + vector2.f5528y);
            }
            handleMove(i, i2);
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            if (MapEditorScreen.this.f10896S._mapEditor.getDraggingItem() != null) {
                Vector2 vector2 = MapEditorScreen.this.f10896S._mapEditor.draggingShift;
                i = (int) (i + vector2.f5527x);
                i2 = (int) (i2 + vector2.f5528y);
            }
            handleMove(i, i2);
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x00c1, code lost:
            if (r6.selectedTileY < r6.f10896S.map.getMap().heightTiles) goto L24;
         */
        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean touchUp(int r3, int r4, int r5, int r6) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.screens.MapEditorScreen._HoverSelectInputProcessor.touchUp(int, int, int, int):boolean");
        }

        public /* synthetic */ _HoverSelectInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class _InsertInputProcessor extends InputAdapter {
        public _InsertInputProcessor() {
        }

        public /* synthetic */ _InsertInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            MapEditorScreen.this.f10918v.set(i, i2);
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.cameraController.screenToMap(mapEditorScreen.f10918v);
            if (MapEditorScreen.this.f10917u != null && MapEditorScreen.this.f10917u.getCount() > 0) {
                int i5 = C21231.f10923a[MapEditorScreen.this.f10917u.getItem().getType().ordinal()];
                if (i5 != 1) {
                    if (i5 != 2 || !MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(MapEditorScreen.this.f10918v.f5527x, MapEditorScreen.this.f10918v.f5528y, MapEditorScreen.this.f10894J)) {
                        return false;
                    }
                    Gate gate = MapEditorScreen.this.f10896S.map.getMap().getGate(MapEditorScreen.this.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide());
                    if (gate != null) {
                        MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_GATE.create(gate), 1);
                    }
                    GateItem gateItem = (GateItem) MapEditorScreen.this.f10917u.getItem();
                    if (MapEditorScreen.this.f10896S._inventory.remove(gateItem)) {
                        MapEditorScreen mapEditorScreen2 = MapEditorScreen.this;
                        mapEditorScreen2.f10896S._mapEditor.setMapGate(mapEditorScreen2.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide(), gateItem.gate);
                    } else {
                        MapEditorScreen.this.f10907k.deselectAll();
                        MapEditorScreen.this.f10917u = null;
                    }
                } else {
                    int i6 = (int) (MapEditorScreen.this.f10918v.f5527x / 128.0f);
                    int i7 = (int) (MapEditorScreen.this.f10918v.f5528y / 128.0f);
                    if (MapEditorScreen.this.f10918v.f5527x >= 0.0f && MapEditorScreen.this.f10918v.f5528y >= 0.0f && i6 < MapEditorScreen.this.f10896S.map.getMap().widthTiles && i7 < MapEditorScreen.this.f10896S.map.getMap().heightTiles) {
                        Tile tile = MapEditorScreen.this.f10896S.map.getMap().getTile(i6, i7);
                        if (tile != null) {
                            MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_TILE.create(tile), 1);
                        }
                        TileItem tileItem = (TileItem) MapEditorScreen.this.f10917u.getItem();
                        if (MapEditorScreen.this.f10896S._inventory.remove(tileItem)) {
                            MapEditorScreen.this.f10896S._mapEditor.setMapTile(i6, i7, tileItem.tile);
                        } else {
                            MapEditorScreen.this.f10907k.deselectAll();
                            MapEditorScreen.this.f10917u = null;
                        }
                    }
                }
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public class _InventorySystemListener extends InventorySystem.InventorySystemListener.InventorySystemListenerAdapter {
        public _InventorySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.InventorySystem.InventorySystemListener.InventorySystemListenerAdapter, com.prineside.tdi2.systems.InventorySystem.InventorySystemListener
        public void added(ItemStack itemStack) {
            MapEditorScreen.this.f10907k.rebuildSlot(itemStack, false);
        }

        public /* synthetic */ _InventorySystemListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.prineside.tdi2.systems.InventorySystem.InventorySystemListener.InventorySystemListenerAdapter, com.prineside.tdi2.systems.InventorySystem.InventorySystemListener
        public void removed(ItemStack itemStack) {
            MapEditorScreen.this.f10907k.rebuildSlot(itemStack, false);
            if (itemStack == MapEditorScreen.this.f10917u && itemStack.getCount() <= 0) {
                MapEditorScreen.this.f10917u = null;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _MapEditorInventoryMenuListener implements MapEditorInventoryMenu.MapEditorInventoryMenuListener {
        public _MapEditorInventoryMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.components.MapEditorInventoryMenu.MapEditorInventoryMenuListener
        public void categoryTabChanged() {
            for (int i = 0; i < MapEditorScreen.this.f10907k.cells.size; i++) {
                MapEditorScreen.this.f10907k.cells.get(i).setActive(false);
            }
            MapEditorScreen.this.f10917u = null;
            MapEditorScreen.this.updateSelectedItemMenu();
        }

        public /* synthetic */ _MapEditorInventoryMenuListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.prineside.tdi2.p036ui.components.MapEditorInventoryMenu.MapEditorInventoryMenuListener
        public void itemSlotClicked(MapEditorInventoryMenu.ItemSlot itemSlot) {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.selectedBarrier = false;
            mapEditorScreen.selectedTile = false;
            mapEditorScreen.f10907k.deselectAll();
            itemSlot.setActive(true);
            MapEditorScreen.this.f10917u = itemSlot.getItemStack();
            MapEditorScreen.this.updateSelectedItemMenu();
            if (MapEditorScreen.this.f10917u.getItem().getType() == ItemType.TILE) {
                TileItem tileItem = (TileItem) MapEditorScreen.this.f10917u.getItem();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _MapEditorSystemListener extends MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter {
        public _MapEditorSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void modeChanged(MapEditorSystem.Mode mode) {
            MapEditorScreen.this.m21215G();
        }

        public /* synthetic */ _MapEditorSystemListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void draggingPositionChanged() {
            Vector2 vector2 = MapEditorScreen.this.f10896S._mapEditor.draggingItemScreenPos;
            Vector2 vector22 = new Vector2(vector2.f5527x, vector2.f5528y);
            MapEditorScreen.this.cameraController.screenToStage(vector22);
            MapEditorScreen.this.draggingItemHelper.setPosition(vector22.f5527x, vector22.f5528y);
            if (MapEditorScreen.this.f10907k.isStagePointOnInventory(vector22.f5527x, vector22.f5528y)) {
                MapEditorScreen.this.draggingItemHelper.setScale(1.0f);
            } else {
                MapEditorScreen mapEditorScreen = MapEditorScreen.this;
                mapEditorScreen.draggingItemHelper.setScale(mapEditorScreen.m21219C());
            }
            Item draggingItem = MapEditorScreen.this.f10896S._mapEditor.getDraggingItem();
            if (draggingItem.getType() == ItemType.TILE) {
                MapEditorScreen.this.f10898b.hoverBarriers = false;
                MapEditorScreen.this.f10898b.hoverTiles = true;
            } else if (draggingItem.getType() == ItemType.GATE) {
                MapEditorScreen.this.f10898b.hoverBarriers = true;
                MapEditorScreen.this.f10898b.hoverTiles = false;
            } else {
                MapEditorScreen.this.f10898b.hoverBarriers = false;
                MapEditorScreen.this.f10898b.hoverTiles = false;
            }
            _HoverSelectInputProcessor _hoverselectinputprocessor = MapEditorScreen.this.f10898b;
            Vector2 vector23 = MapEditorScreen.this.f10896S._mapEditor.draggingItemScreenPos;
            _hoverselectinputprocessor.handleMove((int) vector23.f5527x, (int) vector23.f5528y);
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void mapGateChanged(int i, int i2, Gate.Side side, Gate gate) {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            if (mapEditorScreen.selectedBarrier && mapEditorScreen.selectedGateX == i && mapEditorScreen.selectedGateY == i2 && mapEditorScreen.f10916t == side) {
                MapEditorScreen.this.updateSelectedItemMenu();
            }
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void mapSizeChanged() {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.cameraController.setMapSize(mapEditorScreen.f10896S.map.getMap().widthPixels, MapEditorScreen.this.f10896S.map.getMap().heightPixels);
            MapEditorScreen.this.mapShiftButtons.update();
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void mapTileChanged(int i, int i2, Tile tile) {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            if (mapEditorScreen.selectedTile && mapEditorScreen.selectedTileX == i && mapEditorScreen.selectedTileY == i2) {
                mapEditorScreen.updateSelectedItemMenu();
            }
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void startedDragging() {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.draggingItemHelper.show(mapEditorScreen.f10896S._mapEditor.getDraggingItem());
            Vector2 vector2 = MapEditorScreen.this.f10896S._mapEditor.draggingItemScreenPos;
            Vector2 vector22 = new Vector2(vector2.f5527x, vector2.f5528y);
            MapEditorScreen.this.cameraController.screenToStage(vector22);
            if (MapEditorScreen.this.f10907k.isStagePointOnInventory(vector22.f5527x, vector22.f5528y)) {
                MapEditorScreen.this.draggingItemHelper.setScale(1.0f, true);
                return;
            }
            MapEditorScreen mapEditorScreen2 = MapEditorScreen.this;
            mapEditorScreen2.draggingItemHelper.setScale(mapEditorScreen2.m21219C(), true);
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void stoppedDragging(Item item) {
            DraggingItemHelper draggingItemHelper = MapEditorScreen.this.draggingItemHelper;
            if (draggingItemHelper == null) {
                return;
            }
            draggingItemHelper.hide();
            MapEditorScreen.this.f10898b.hoverTiles = true;
            MapEditorScreen.this.f10898b.hoverBarriers = true;
            Vector2 vector2 = MapEditorScreen.this.f10896S._mapEditor.draggingItemScreenPos;
            Vector2 vector22 = new Vector2(vector2.f5527x, vector2.f5528y);
            MapEditorScreen.this.cameraController.screenToStage(vector22);
            if (MapEditorScreen.this.f10907k.isStagePointOnInventory(vector22.f5527x, vector22.f5528y)) {
                MapEditorScreen.this.f10896S._inventory.add(item, 1);
                Logger.log("MapEditorScreen", "over inventory");
            } else {
                Vector2 vector23 = new Vector2(vector22);
                MapEditorScreen.this.cameraController.stageToMap(vector23);
                int i = C21231.f10923a[MapEditorScreen.this.f10896S._mapEditor.getDraggingItem().getType().ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        if (MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(vector23.f5527x, vector23.f5528y, MapEditorScreen.this.f10894J)) {
                            Gate gate = MapEditorScreen.this.f10896S.map.getMap().getGate(MapEditorScreen.this.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide());
                            if (gate != null) {
                                if (MapEditorScreen.this.f10919w) {
                                    MapEditorScreen mapEditorScreen = MapEditorScreen.this;
                                    mapEditorScreen.f10896S._mapEditor.setMapGate(mapEditorScreen.f10920x, MapEditorScreen.this.f10921y, MapEditorScreen.this.f10922z, gate);
                                } else {
                                    MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_GATE.create(gate), 1);
                                }
                            }
                            MapEditorScreen mapEditorScreen2 = MapEditorScreen.this;
                            mapEditorScreen2.f10896S._mapEditor.setMapGate(mapEditorScreen2.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide(), ((GateItem) MapEditorScreen.this.f10896S._mapEditor.getDraggingItem()).gate);
                            MapEditorScreen mapEditorScreen3 = MapEditorScreen.this;
                            mapEditorScreen3.selectedBarrier = true;
                            mapEditorScreen3.selectedTile = false;
                            mapEditorScreen3.selectedGateX = mapEditorScreen3.f10894J.getX();
                            MapEditorScreen mapEditorScreen4 = MapEditorScreen.this;
                            mapEditorScreen4.selectedGateY = mapEditorScreen4.f10894J.getY();
                            MapEditorScreen mapEditorScreen5 = MapEditorScreen.this;
                            mapEditorScreen5.f10916t = mapEditorScreen5.f10894J.getSide();
                            MapEditorScreen.this.updateSelectedItemMenu();
                        } else {
                            MapEditorScreen.this.f10896S._inventory.add(item, 1);
                            Logger.log("MapEditorScreen", "out of map");
                        }
                    }
                } else {
                    float f = vector23.f5527x;
                    int i2 = (int) (f / 128.0f);
                    int i3 = (int) (vector23.f5528y / 128.0f);
                    if (f >= 0.0f && i2 < MapEditorScreen.this.f10896S.map.getMap().widthTiles && vector23.f5528y >= 0.0f && i3 < MapEditorScreen.this.f10896S.map.getMap().heightTiles) {
                        Tile tile = MapEditorScreen.this.f10896S.map.getMap().getTile(i2, i3);
                        if (tile != null) {
                            if (MapEditorScreen.this.f10919w) {
                                MapEditorScreen mapEditorScreen6 = MapEditorScreen.this;
                                mapEditorScreen6.f10896S._mapEditor.setMapTile(mapEditorScreen6.f10920x, MapEditorScreen.this.f10921y, tile);
                            } else {
                                MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_TILE.create(tile), 1);
                            }
                        }
                        MapEditorScreen.this.f10896S._mapEditor.setMapTile(i2, i3, ((TileItem) MapEditorScreen.this.f10896S._mapEditor.getDraggingItem()).tile);
                        MapEditorScreen mapEditorScreen7 = MapEditorScreen.this;
                        mapEditorScreen7.selectedBarrier = false;
                        mapEditorScreen7.selectedTile = true;
                        mapEditorScreen7.selectedTileX = i2;
                        mapEditorScreen7.selectedTileY = i3;
                        mapEditorScreen7.updateSelectedItemMenu();
                    } else {
                        MapEditorScreen.this.f10896S._inventory.add(item, 1);
                        Logger.log("MapEditorScreen", "out of map");
                    }
                }
            }
            MapEditorScreen.this.f10909m = false;
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void mapValidationFailed(Map.InvalidMapException invalidMapException) {
            Logger.error("MapEditorScreen", invalidMapException.getFixHintMessage(), invalidMapException);
            Game.f8589i.uiManager.dialog.showAlert(invalidMapException.getFixHintMessage());
        }
    }

    /* loaded from: classes2.dex */
    public class _MapEditorTileInfoMenuListener extends MapEditorItemInfoMenu.MapEditorTileInfoMenuListener.MapEditorTileInfoMenuListenerAdapter {
        public _MapEditorTileInfoMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener.MapEditorTileInfoMenuListenerAdapter, com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener
        public void selectedTileModified() {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.d0
                @Override // java.lang.Runnable
                public final void run() {
                    MapEditorScreen._MapEditorTileInfoMenuListener.this.m21185b();
                }
            });
        }

        @Override // com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener.MapEditorTileInfoMenuListenerAdapter, com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener
        public void sellButtonPressed() {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("sell_item_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.MapEditorScreen._MapEditorTileInfoMenuListener.1
                @Override // java.lang.Runnable
                public void run() {
                    MapEditorScreen.this.m21217E(false);
                }
            });
        }

        public /* synthetic */ _MapEditorTileInfoMenuListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m21185b() {
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            GameSystemProvider gameSystemProvider = mapEditorScreen.f10896S;
            gameSystemProvider._mapEditor.mapChanged = true;
            if (mapEditorScreen.selectedBarrier || mapEditorScreen.selectedTile) {
                gameSystemProvider._mapRendering.forceTilesRedraw(true);
            }
            if (MapEditorScreen.this.f10917u != null) {
                MapEditorScreen.this.f10907k.rebuildSlot(MapEditorScreen.this.f10917u, true);
            }
        }

        @Override // com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener.MapEditorTileInfoMenuListenerAdapter, com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener
        public void sellButtonHeld() {
            if (MapEditorScreen.this.f10917u != null) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("sell_item_stack_confirm"), new Runnable() { // from class: com.prineside.tdi2.screens.MapEditorScreen._MapEditorTileInfoMenuListener.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MapEditorScreen.this.m21217E(true);
                    }
                });
            }
        }
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
            GameSystemProvider gameSystemProvider;
            MapSystem mapSystem;
            if (!z || (gameSystemProvider = MapEditorScreen.this.f10896S) == null || (mapSystem = gameSystemProvider.map) == null) {
                return;
            }
            mapSystem.showAllPathTraces(true);
        }

        public /* synthetic */ _MapListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class _MapShiftButtonsListener implements MapShiftButtons.MapShiftButtonsListener {
        public _MapShiftButtonsListener() {
        }

        @Override // com.prineside.tdi2.p036ui.components.MapShiftButtons.MapShiftButtonsListener
        public void expanded(MapShiftButtons.Direction direction) {
            MapEditorScreen.this.f10896S._mapEditor.expandMap(direction);
        }

        @Override // com.prineside.tdi2.p036ui.components.MapShiftButtons.MapShiftButtonsListener
        public void reduced(MapShiftButtons.Direction direction) {
            MapEditorScreen.this.f10896S._mapEditor.reduceMap(direction);
        }

        @Override // com.prineside.tdi2.p036ui.components.MapShiftButtons.MapShiftButtonsListener
        public void shifted(MapShiftButtons.Direction direction) {
            MapEditorScreen.this.f10896S._mapEditor.shiftMap(direction);
        }

        public /* synthetic */ _MapShiftButtonsListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class _ProgressManagerListener extends ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter {
        public _ProgressManagerListener() {
        }

        public /* synthetic */ _ProgressManagerListener(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
        public void itemsChanged(Item item, int i, int i2) {
            int itemsCount = Game.f8589i.progressManager.getItemsCount(item) - i;
            if (itemsCount > 0) {
                MapEditorScreen.this.f10896S._inventory.add(item, itemsCount);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _RemoveInputProcessor extends InputAdapter {
        public _RemoveInputProcessor() {
        }

        public /* synthetic */ _RemoveInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            Gate gate;
            MapEditorScreen.this.f10918v.set(i, i2);
            MapEditorScreen mapEditorScreen = MapEditorScreen.this;
            mapEditorScreen.cameraController.screenToMap(mapEditorScreen.f10918v);
            if (MapEditorScreen.this.f10896S.map.getMap().fitGateToMapPos(MapEditorScreen.this.f10918v.f5527x, MapEditorScreen.this.f10918v.f5528y, MapEditorScreen.this.f10894J) && (gate = MapEditorScreen.this.f10896S.map.getMap().getGate(MapEditorScreen.this.f10894J.getX(), MapEditorScreen.this.f10894J.getY(), MapEditorScreen.this.f10894J.getSide())) != null) {
                MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_GATE.create(gate), 1);
                MapEditorScreen.this.f10896S._mapEditor.setMapGate(gate.getX(), gate.getY(), gate.getSide(), null);
                return false;
            }
            int i5 = (int) (MapEditorScreen.this.f10918v.f5527x / 128.0f);
            int i6 = (int) (MapEditorScreen.this.f10918v.f5528y / 128.0f);
            Tile tile = MapEditorScreen.this.f10896S.map.getMap().getTile(i5, i6);
            if (tile != null) {
                MapEditorScreen.this.f10896S._inventory.add(Item.C1543D.F_TILE.create(tile), 1);
                MapEditorScreen.this.f10896S._mapEditor.setMapTile(i5, i6, null);
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public class _ScrollFocusInputProcessor extends InputAdapter {
        public _ScrollFocusInputProcessor() {
        }

        public /* synthetic */ _ScrollFocusInputProcessor(MapEditorScreen mapEditorScreen, C21231 c21231) {
            this();
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            if (MapEditorScreen.this.cameraController == null) {
                return false;
            }
            Vector2 vector2 = new Vector2(i, i2);
            MapEditorScreen.this.cameraController.screenToStage(vector2);
            if (MapEditorScreen.this.f10907k.isStagePointOnInventory(vector2.f5527x, vector2.f5528y)) {
                if (Game.f8589i.uiManager.stage.getScrollFocus() != MapEditorScreen.this.f10907k.scrollPane) {
                    Game.f8589i.uiManager.stage.setScrollFocus(MapEditorScreen.this.f10907k.scrollPane);
                }
            } else if (Game.f8589i.uiManager.stage.getScrollFocus() != null) {
                Game.f8589i.uiManager.stage.setScrollFocus(null);
            }
            return false;
        }
    }

    public MapEditorScreen(UserMap userMap) {
        this.f10886B = userMap;
        m21218D();
    }

    /* renamed from: C */
    public final float m21219C() {
        return (1.0f / ((float) this.cameraController.zoom)) * (Game.f8589i.settingsManager.getScaledViewportHeight() / Gdx.graphics.getHeight());
    }

    /* renamed from: F */
    public final void m21216F() {
        this.f10896S.updateSystems();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        Gdx.input.setInputProcessor(this.f10905i);
    }

    public void updateEnemyPathTraces() {
        this.f10896S.map.getMap().rebuildPathfindingIfNeeded();
    }

    static {
        ObjectSet<TileType> objectSet = new ObjectSet<>();
        f10884L = objectSet;
        objectSet.add(TileType.ROAD);
        f10884L.add(TileType.SPAWN);
        f10884L.add(TileType.TARGET);
    }

    /* renamed from: D */
    public final void m21218D() {
        Gate.Side[] sideArr;
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        this.f10894J = Game.f8589i.gateManager.getFactory(GateType.values[0]).create();
        GameSystemProvider gameSystemProvider = new GameSystemProvider(new GameSystemProvider.SystemsConfig(GameSystemProvider.SystemsConfig.Setup.MAP_EDITOR, false));
        this.f10896S = gameSystemProvider;
        gameSystemProvider.createSystems();
        this.f10896S.setupSystems();
        Game.f8589i.scriptManager.global.getGlobals().set("SP", CoerceJavaToLua.coerce(this.f10896S));
        UserMap userMap = this.f10886B;
        if (userMap != null) {
            GameSystemProvider gameSystemProvider2 = this.f10896S;
            MapEditorSystem mapEditorSystem = gameSystemProvider2._mapEditor;
            mapEditorSystem.basicLevelEditor = false;
            mapEditorSystem.userMap = userMap;
            gameSystemProvider2._inventory.setItems(Game.f8589i.progressManager.getAllItems());
            this.f10885A = this.f10886B.map.cpy();
            for (int i = 0; i < this.f10885A.heightTiles; i++) {
                int i2 = 0;
                while (true) {
                    Map map = this.f10885A;
                    if (i2 < map.widthTiles) {
                        Tile tile = map.tiles[i][i2];
                        if (tile != null && !this.f10896S._inventory.remove(Item.C1543D.F_TILE.create(tile))) {
                            this.f10885A.setTile(i2, i, null);
                        }
                        i2++;
                    }
                }
            }
            for (int i3 = 0; i3 <= this.f10885A.heightTiles; i3++) {
                for (int i4 = 0; i4 <= this.f10885A.widthTiles; i4++) {
                    for (Gate.Side side : Gate.Side.values) {
                        Gate gate = this.f10885A.getGate(i4, i3, side);
                        if (gate != null && !this.f10896S._inventory.remove(Item.C1543D.F_GATE.create(gate))) {
                            this.f10885A.setGate(i4, i3, side, null);
                        }
                    }
                }
            }
            int intValue = Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.USER_MAP_MAX_SIZE);
            Map map2 = this.f10885A;
            if (map2.widthTiles < intValue || map2.heightTiles < intValue) {
                Map cpy = map2.cpy();
                this.f10885A = cpy;
                cpy.setSize(intValue, intValue);
            }
        } else {
            GameSystemProvider gameSystemProvider3 = this.f10896S;
            MapEditorSystem mapEditorSystem2 = gameSystemProvider3._mapEditor;
            mapEditorSystem2.basicLevelEditor = true;
            mapEditorSystem2.basicLevel = this.f10887C;
            gameSystemProvider3._inventory.setItems(Game.f8589i.progressManager.getAllItems());
            this.f10885A = this.f10887C.getMap().cpy();
        }
        this.f10896S._mapEditor.listeners.add(this.f10889E);
        this.f10896S._inventory.listeners.add(this.f10890F);
        Game.f8589i.progressManager.addListener(this.f10893I);
        Map map3 = this.f10885A;
        map3.throwExceptionOnMissingPath = false;
        this.f10896S.map.setMap(map3);
        this.f10885A.listeners.add(this.f10895K);
        GameSystemProvider gameSystemProvider4 = this.f10896S;
        gameSystemProvider4.map.drawPathTraces = true;
        MapRenderingSystem mapRenderingSystem = gameSystemProvider4._mapRendering;
        mapRenderingSystem.drawMapGrid = true;
        mapRenderingSystem.setDrawMode(MapRenderingSystem.DrawMode.MAP_EDITOR);
        updateEnemyPathTraces();
        this.f10896S.postSetupSystems();
        this.f10897a = new OrthographicCamera(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        CameraController cameraController = new CameraController(this.f10897a, this.f10896S.map.getMap().widthPixels, this.f10896S.map.getMap().heightPixels);
        this.cameraController = cameraController;
        cameraController.setScreenSize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        this.cameraController.lookAt(this.f10896S.map.getMap().widthPixels / 2, this.f10896S.map.getMap().heightPixels / 2);
        MapShiftButtons mapShiftButtons = new MapShiftButtons(this.cameraController);
        this.mapShiftButtons = mapShiftButtons;
        if (this.f10896S._mapEditor.basicLevelEditor) {
            mapShiftButtons.setMapSizeChangesAllowed(true);
        }
        this.mapShiftButtons.addListener(this.f10888D);
        this.screenBorderGradient = new ScreenBorderGradient();
        this.mainUi = new MapEditorUi(this.f10896S);
        SideMenu sideMenu = new SideMenu();
        this.f10906j = sideMenu;
        sideMenu.addOffscreenBackground();
        this.draggingItemHelper = new DraggingItemHelper();
        MapEditorItemInfoMenu mapEditorItemInfoMenu = new MapEditorItemInfoMenu(this);
        this.f10908l = mapEditorItemInfoMenu;
        mapEditorItemInfoMenu.addListener(this.f10892H);
        MapEditorInventoryMenu mapEditorInventoryMenu = new MapEditorInventoryMenu(this.f10906j, this.cameraController, this.f10896S);
        this.f10907k = mapEditorInventoryMenu;
        mapEditorInventoryMenu.addListener(this.f10891G);
        updateSelectedItemMenu();
        this.f10898b = new _HoverSelectInputProcessor(this, null);
        this.f10899c = new _DragInputProcessor(this, null);
        this.f10900d = new _RemoveInputProcessor(this, null);
        this.f10901e = new _InsertInputProcessor(this, null);
        this.f10902f = new _DrawInsertInputProcessor(this, null);
        this.f10903g = new _DrawRemoveInputProcessor(this, null);
        this.f10904h = new _ScrollFocusInputProcessor(this, null);
        InputMultiplexer inputMultiplexer = new InputMultiplexer();
        this.f10905i = inputMultiplexer;
        Gdx.input.setInputProcessor(inputMultiplexer);
        m21215G();
    }

    /* renamed from: E */
    public final void m21217E(boolean z) {
        Gate gate;
        ItemStack itemStack = this.f10917u;
        int i = 1;
        if (itemStack != null) {
            Item item = itemStack.getItem();
            if (z) {
                i = this.f10917u.getCount();
            }
            if (Game.f8589i.progressManager.sellItems(item, i)) {
                this.f10896S._inventory.remove(item, i);
            }
        } else if (this.selectedTile) {
            Tile tile = this.f10896S.map.getMap().getTile(this.selectedTileX, this.selectedTileY);
            if (tile != null && Game.f8589i.progressManager.sellItems(Item.C1543D.F_TILE.create(tile), 1)) {
                this.f10896S._mapEditor.setMapTile(this.selectedTileX, this.selectedTileY, null);
            }
        } else if (this.selectedBarrier && (gate = this.f10896S.map.getMap().getGate(this.selectedGateX, this.selectedGateY, this.f10916t)) != null && Game.f8589i.progressManager.sellItems(Item.C1543D.F_GATE.create(gate), 1)) {
            this.f10896S._mapEditor.setMapGate(this.selectedGateX, this.selectedGateY, this.f10916t, null);
        }
        updateSelectedItemMenu();
    }

    /* renamed from: G */
    public final void m21215G() {
        this.f10905i.clear();
        this.f10905i.addProcessor(Game.f8589i.uiManager.stage);
        this.f10905i.addProcessor(this.f10904h);
        MapEditorSystem.Mode mode = this.f10896S._mapEditor.getMode();
        MapEditorSystem.Mode mode2 = MapEditorSystem.Mode.DRAG;
        if (mode == mode2) {
            this.f10905i.addProcessor(this.f10899c);
        } else if (this.f10896S._mapEditor.getMode() != MapEditorSystem.Mode.DRAW_INSERT && this.f10896S._mapEditor.getMode() != MapEditorSystem.Mode.DRAW_REMOVE) {
            this.f10905i.addProcessor(this.cameraController.getInputProcessor());
        }
        this.f10905i.addProcessor(this.f10898b);
        if (this.f10896S._mapEditor.getMode() != mode2 && this.f10896S._mapEditor.getMode() != MapEditorSystem.Mode.VIEW) {
            if (this.f10896S._mapEditor.getMode() == MapEditorSystem.Mode.REMOVE) {
                this.f10905i.addProcessor(this.f10900d);
                _HoverSelectInputProcessor _hoverselectinputprocessor = this.f10898b;
                _hoverselectinputprocessor.selectTiles = false;
                _hoverselectinputprocessor.selectBarriers = false;
            } else if (this.f10896S._mapEditor.getMode() == MapEditorSystem.Mode.INSERT) {
                this.f10905i.addProcessor(this.f10901e);
                _HoverSelectInputProcessor _hoverselectinputprocessor2 = this.f10898b;
                _hoverselectinputprocessor2.selectTiles = false;
                _hoverselectinputprocessor2.selectBarriers = false;
            } else if (this.f10896S._mapEditor.getMode() == MapEditorSystem.Mode.DRAW_INSERT) {
                this.f10905i.addProcessor(this.f10902f);
                _HoverSelectInputProcessor _hoverselectinputprocessor3 = this.f10898b;
                _hoverselectinputprocessor3.selectTiles = false;
                _hoverselectinputprocessor3.selectBarriers = false;
            } else if (this.f10896S._mapEditor.getMode() == MapEditorSystem.Mode.DRAW_REMOVE) {
                this.f10905i.addProcessor(this.f10903g);
                _HoverSelectInputProcessor _hoverselectinputprocessor4 = this.f10898b;
                _hoverselectinputprocessor4.selectTiles = false;
                _hoverselectinputprocessor4.selectBarriers = false;
            }
        } else {
            _HoverSelectInputProcessor _hoverselectinputprocessor5 = this.f10898b;
            _hoverselectinputprocessor5.selectTiles = true;
            _hoverselectinputprocessor5.selectBarriers = true;
        }
        this.selectedTile = false;
        this.f10909m = false;
        this.selectedBarrier = false;
        this.f10912p = false;
        updateSelectedItemMenu();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.progressManager.removeListener(this.f10893I);
        this.f10907k.removeListener(this.f10891G);
        this.f10908l.removeListener(this.f10892H);
        Map map = this.f10885A;
        if (map != null) {
            map.listeners.remove(this.f10895K);
        }
        this.draggingItemHelper.dispose();
        this.mainUi.dispose();
        this.mapShiftButtons.dispose();
        this.screenBorderGradient.dispose();
        this.f10908l.dispose();
        this.f10906j.dispose();
        Game.f8589i.scriptManager.global.getGlobals().set("SP", LuaValue.NIL);
        this.f10896S = null;
        this.f10897a = null;
        this.cameraController = null;
        this.f10898b = null;
        this.f10899c = null;
        this.f10900d = null;
        this.f10901e = null;
        this.f10902f = null;
        this.f10903g = null;
        this.f10904h = null;
        this.f10905i.clear();
        this.f10905i = null;
        this.screenBorderGradient = null;
        this.mainUi = null;
        this.mapShiftButtons = null;
        this.draggingItemHelper = null;
        this.f10906j = null;
        this.f10907k = null;
        this.f10908l = null;
        this.f10917u = null;
        this.f10886B = null;
        this.f10887C = null;
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Map map;
        int i;
        int i2;
        int i3;
        Tower.Factory<? extends Tower> factory;
        Color color = Game.f8589i.assetManager.getColor("game_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            MapEditorSystem mapEditorSystem = this.f10896S._mapEditor;
            if (!mapEditorSystem.mapChanged) {
                mapEditorSystem.goToPreviousScreen();
                return;
            }
        }
        if (Game.f8589i.uiManager.stage.getKeyboardFocus() == null) {
            if (Gdx.input.isKeyJustPressed(8)) {
                this.f10896S._mapEditor.setMode(MapEditorSystem.Mode.VIEW);
            } else if (Gdx.input.isKeyJustPressed(9)) {
                this.f10896S._mapEditor.setMode(MapEditorSystem.Mode.DRAG);
            } else if (Gdx.input.isKeyJustPressed(10)) {
                this.f10896S._mapEditor.setMode(MapEditorSystem.Mode.INSERT);
            } else if (Gdx.input.isKeyJustPressed(11)) {
                this.f10896S._mapEditor.setMode(MapEditorSystem.Mode.REMOVE);
            } else if (Gdx.input.isKeyJustPressed(33)) {
                this.f10896S._mapEditor.setMode(MapEditorSystem.Mode.DRAW_INSERT);
            } else if (Gdx.input.isKeyJustPressed(46)) {
                this.f10896S._mapEditor.setMode(MapEditorSystem.Mode.DRAW_REMOVE);
            }
        }
        m21216F();
        this.cameraController.realUpdate(f);
        SpriteBatch spriteBatch = Game.f8589i.renderingManager.batch;
        spriteBatch.setProjectionMatrix(this.f10897a.combined);
        long realTickCount = Game.getRealTickCount();
        this.f10896S._mapRendering.drawTiles(this.f10897a);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawTiles", Game.getRealTickCount() - realTickCount);
        long realTickCount2 = Game.getRealTickCount();
        this.f10896S._mapRendering.drawTilesExtras(this.f10897a);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawTilesExtras", Game.getRealTickCount() - realTickCount2);
        spriteBatch.begin();
        long realTickCount3 = Game.getRealTickCount();
        this.f10896S._mapRendering.drawBatch(spriteBatch, f);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawBatch", Game.getRealTickCount() - realTickCount3);
        long realTickCount4 = Game.getRealTickCount();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(21);
        Map map2 = this.f10896S.map.getMap();
        int i4 = 0;
        while (i4 < map2.heightTiles) {
            int i5 = 0;
            while (i5 < map2.widthTiles) {
                Tile tile = map2.getTile(i5, i4);
                if (tile instanceof PlatformTile) {
                    PlatformTile platformTile = (PlatformTile) tile;
                    Building building = platformTile.building;
                    if (building != null && building.buildingType == BuildingType.TOWER) {
                        Tower tower = (Tower) building;
                        Tower.Factory<? extends Tower> factory2 = Game.f8589i.towerManager.getFactory(tower.type);
                        spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
                        Vector2 vector2 = platformTile.center;
                        Tower.Factory<? extends Tower> factory3 = factory2;
                        int i6 = i5;
                        spriteBatch.draw(blankWhiteTextureRegion, vector2.f5527x - 64.0f, vector2.f5528y - 64.0f, 128.0f, 64.0f);
                        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                        Array<TextureRegionConfig> baseTextures = factory3.getBaseTextures();
                        Vector2 vector22 = platformTile.center;
                        TextureRegionConfig.drawBatch(baseTextures, spriteBatch, vector22.f5527x - 32.0f, vector22.f5528y - 64.0f, 64.0f);
                        Array<TextureRegionConfig> weaponTextures = tower.getWeaponTextures();
                        Vector2 vector23 = platformTile.center;
                        TextureRegionConfig.drawBatch(weaponTextures, spriteBatch, vector23.f5527x - 32.0f, vector23.f5528y - 64.0f, 64.0f);
                        int i7 = 0;
                        while (i7 < 6) {
                            if (tower.isAbilityInstalled(i7)) {
                                Tower.Factory<? extends Tower> factory4 = factory3;
                                int i8 = 0;
                                for (Array<TextureRegionConfig> abilityTextures = factory4.getAbilityTextures(i7); i8 < abilityTextures.size; abilityTextures = abilityTextures) {
                                    TextureRegionConfig textureRegionConfig = abilityTextures.items[i8];
                                    Vector2 vector24 = platformTile.center;
                                    textureRegionConfig.drawBatch(spriteBatch, vector24.f5527x - 32.0f, vector24.f5528y - 64.0f, 64.0f);
                                    i8++;
                                    factory4 = factory4;
                                }
                                factory = factory4;
                            } else {
                                factory = factory3;
                            }
                            i7++;
                            factory3 = factory;
                        }
                        Vector2 vector25 = platformTile.center;
                        font.draw(spriteBatch, Tower.getLevelForExperience(tower.experience) + "L", (vector25.f5527x - 64.0f) + 4.0f, vector25.f5528y - 6.0f);
                        Vector2 vector26 = platformTile.center;
                        map = map2;
                        i = i4;
                        font.draw(spriteBatch, tower.getUpgradeLevel() + "U", vector26.f5527x, vector26.f5528y - 6.0f, 60.0f, 16, false);
                        if (tower.canAim()) {
                            spriteBatch.setColor(Game.f8589i.towerManager.getAimStrategyColor(tower.aimStrategy));
                            i2 = i6;
                            float f2 = (((i2 * 128) + 128) - 7.0f) - 24.0f;
                            float f3 = (i * 128) + 7.0f;
                            spriteBatch.draw(Game.f8589i.assetManager.getBlankWhiteTextureRegion(), f2, f3, 24.0f, 24.0f);
                            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                            spriteBatch.draw(Game.f8589i.towerManager.getAimStrategyIcon(tower.aimStrategy), f2, f3, 24.0f, 24.0f);
                        } else {
                            i2 = i6;
                        }
                    } else {
                        map = map2;
                        i = i4;
                        i2 = i5;
                        if (building != null && building.buildingType == BuildingType.MODIFIER) {
                            Modifier modifier = (Modifier) building;
                            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion2 = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
                            Vector2 vector27 = platformTile.center;
                            spriteBatch.draw(blankWhiteTextureRegion2, vector27.f5527x - 64.0f, vector27.f5528y - 64.0f, 128.0f, 64.0f);
                            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                            TextureRegion baseTexture = Game.f8589i.modifierManager.getFactory(modifier.type).getBaseTexture();
                            Vector2 vector28 = platformTile.center;
                            spriteBatch.draw(baseTexture, vector28.f5527x - 32.0f, vector28.f5528y - 64.0f, 64.0f, 64.0f);
                        }
                    }
                } else {
                    map = map2;
                    i = i4;
                    i2 = i5;
                    if (tile instanceof SourceTile) {
                        SourceTile sourceTile = (SourceTile) tile;
                        if (sourceTile.miner != null) {
                            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion3 = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
                            Vector2 vector29 = sourceTile.center;
                            spriteBatch.draw(blankWhiteTextureRegion3, vector29.f5527x - 64.0f, vector29.f5528y - 64.0f, 128.0f, 64.0f);
                            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                            TextureRegion texture = Game.f8589i.minerManager.getFactory(sourceTile.miner.type).getTexture();
                            Vector2 vector210 = sourceTile.center;
                            spriteBatch.draw(texture, vector210.f5527x - 32.0f, vector210.f5528y - 64.0f, 64.0f, 64.0f);
                            Vector2 vector211 = sourceTile.center;
                            i3 = i2;
                            font.draw(spriteBatch, sourceTile.miner.getUpgradeLevel() + "U", vector211.f5527x, vector211.f5528y - 6.0f, 60.0f, 16, false);
                            i5 = i3 + 1;
                            i4 = i;
                            map2 = map;
                        }
                    }
                }
                i3 = i2;
                i5 = i3 + 1;
                i4 = i;
                map2 = map;
            }
            i4++;
            map2 = map2;
        }
        Game.f8589i.debugManager.registerFrameJob("TowersRendering", Game.getRealTickCount() - realTickCount4);
        long realTickCount5 = Game.getRealTickCount();
        this.f10896S._pathRendering.draw(spriteBatch, f);
        Game.f8589i.debugManager.registerFrameJob("PathRendering-draw", Game.getRealTickCount() - realTickCount5);
        spriteBatch.end();
        spriteBatch.begin();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        Color color2 = Config.WHITE_COLOR_CACHED_FLOAT_BITS;
        spriteBatch.setColor(color2);
        long realTickCount6 = Game.getRealTickCount();
        this.f10896S._particle.draw(spriteBatch, f, f);
        Game.f8589i.debugManager.registerFrameJob("Particle-draw", Game.getRealTickCount() - realTickCount6);
        long realTickCount7 = Game.getRealTickCount();
        this.f10896S.map.drawBatch(spriteBatch, f);
        Game.f8589i.debugManager.registerFrameJob("Map-drawBatch", Game.getRealTickCount() - realTickCount7);
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        long realTickCount8 = Game.getRealTickCount();
        this.f10896S._mapRendering.postDrawBatch(spriteBatch, f);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-postDrawBatch", Game.getRealTickCount() - realTickCount8);
        if (this.f10909m && (!this.selectedTile || this.f10910n != this.selectedTileX || this.f10911o != this.selectedTileY)) {
            this.f10896S.map.drawTileHover(spriteBatch, this.f10910n, this.f10911o);
        }
        if (this.selectedTile) {
            this.f10896S.map.drawTileSelection(spriteBatch, this.selectedTileX, this.selectedTileY);
        }
        if (this.f10912p && (!this.selectedBarrier || this.f10913q != this.selectedGateX || this.f10914r != this.selectedGateY || this.f10915s != this.f10916t)) {
            this.f10896S.map.drawGateHover(spriteBatch, this.f10913q, this.f10914r, this.f10915s);
        }
        if (this.selectedBarrier) {
            this.f10896S.map.drawGateSelection(spriteBatch, this.selectedGateX, this.selectedGateY, this.f10916t);
        }
        spriteBatch.setColor(color2);
        spriteBatch.end();
        long realTickCount9 = Game.getRealTickCount();
        if (this.f10907k.isVisible()) {
            this.f10907k.draw(f);
        }
        this.mainUi.draw(f);
        Game.f8589i.debugManager.registerFrameJob("Graphics-draw", Game.getRealTickCount() - realTickCount9);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
        CameraController cameraController;
        if (i > 0 && i2 > 0 && (cameraController = this.cameraController) != null) {
            cameraController.setScreenSize(i, i2);
        }
        super.resize(i, i2);
    }

    public void updateSelectedItemMenu() {
        Gate gate;
        ItemStack itemStack = this.f10917u;
        Item item = null;
        if (itemStack != null) {
            item = itemStack.getItem();
        } else if (this.selectedTile) {
            Tile tile = this.f10896S.map.getMap().getTile(this.selectedTileX, this.selectedTileY);
            if (tile != null) {
                item = Item.C1543D.F_TILE.create(tile);
            }
        } else if (this.selectedBarrier && (gate = this.f10896S.map.getMap().getGate(this.selectedGateX, this.selectedGateY, this.f10916t)) != null) {
            item = Item.C1543D.F_GATE.create(gate);
        }
        if (item != null) {
            this.f10908l.setVisible(true);
            this.f10908l.setItem(item);
            return;
        }
        this.f10908l.setVisible(false);
    }

    public MapEditorScreen(BasicLevel basicLevel) {
        this.f10887C = basicLevel;
        m21218D();
    }
}
