package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.List;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.screens.MapEditorScreen;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
/* renamed from: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu */
/* loaded from: classes2.dex */
public class MapEditorItemInfoMenu implements Disposable {

    /* renamed from: B */
    public static final Color f13242B = new Color(623191551);

    /* renamed from: C */
    public static final Color f13243C = new Color();

    /* renamed from: D */
    public static final StringBuilder f13244D = new StringBuilder();

    /* renamed from: A */
    public final DelayedRemovalArray<MapEditorTileInfoMenuListener> f13245A;

    /* renamed from: a */
    public final UiManager.UiLayer f13246a;

    /* renamed from: b */
    public Group f13247b;
    public Item currentItem;

    /* renamed from: d */
    public Group f13248d;
    public boolean expandCodeEditor;

    /* renamed from: k */
    public Label f13249k;

    /* renamed from: p */
    public Label f13250p;

    /* renamed from: q */
    public Label f13251q;

    /* renamed from: r */
    public Group f13252r;

    /* renamed from: s */
    public Group f13253s;
    public SelectBox.SelectBoxStyle selectBoxStyle;

    /* renamed from: t */
    public Group f13254t;
    public TextField.TextFieldStyle textFieldStyle;

    /* renamed from: u */
    public Table f13255u;

    /* renamed from: v */
    public PaddedImageButton f13256v;

    /* renamed from: w */
    public boolean f13257w;

    /* renamed from: x */
    public int f13258x;

    /* renamed from: y */
    public int f13259y;

    /* renamed from: z */
    public MapEditorScreen f13260z;

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu$MapEditorTileInfoMenuListener */
    /* loaded from: classes2.dex */
    public interface MapEditorTileInfoMenuListener {

        /* renamed from: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu$MapEditorTileInfoMenuListener$MapEditorTileInfoMenuListenerAdapter */
        /* loaded from: classes2.dex */
        public static class MapEditorTileInfoMenuListenerAdapter implements MapEditorTileInfoMenuListener {
            @Override // com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener
            public void selectedTileModified() {
            }

            @Override // com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener
            public void sellButtonHeld() {
            }

            @Override // com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.MapEditorTileInfoMenuListener
            public void sellButtonPressed() {
            }
        }

        void selectedTileModified();

        void sellButtonHeld();

        void sellButtonPressed();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13246a);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x1132  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x11ac  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0251  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setItem(com.prineside.tdi2.Item r23) {
        /*
            Method dump skipped, instructions count: 4568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu.setItem(com.prineside.tdi2.Item):void");
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu$18 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C255118 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13287a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f13288b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f13289c;

        static {
            int[] iArr = new int[ItemType.values().length];
            f13289c = iArr;
            try {
                iArr[ItemType.TILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13289c[ItemType.GATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[TileType.values().length];
            f13288b = iArr2;
            try {
                iArr2[TileType.PLATFORM.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13288b[TileType.GAME_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13288b[TileType.TARGET.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13288b[TileType.BOSS.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13288b[TileType.XM_MUSIC_TRACK.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13288b[TileType.CORE.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[CoreTile.LinkDirection.values().length];
            f13287a = iArr3;
            try {
                iArr3[CoreTile.LinkDirection.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f13287a[CoreTile.LinkDirection.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13287a[CoreTile.LinkDirection.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f13287a[CoreTile.LinkDirection.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f13287a[CoreTile.LinkDirection.TOP_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f13287a[CoreTile.LinkDirection.TOP_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f13287a[CoreTile.LinkDirection.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f13287a[CoreTile.LinkDirection.BOTTOM_RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MapEditorItemInfoMenu(MapEditorScreen mapEditorScreen) {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 102, "MapEditorItemInfoMenu");
        this.f13246a = addLayer;
        this.f13258x = -1;
        this.f13259y = -1;
        this.expandCodeEditor = false;
        this.f13245A = new DelayedRemovalArray<>();
        this.f13260z = mapEditorScreen;
        Group group = new Group();
        group.setTransform(false);
        group.setTouchable(Touchable.childrenOnly);
        addLayer.getTable().add((Table) group).size(520.0f, 936.0f).expand().bottom().left().padLeft(160.0f);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        List.ListStyle listStyle = new List.ListStyle(font, color, color, Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.LIGHT_BLUE.P800));
        Drawable drawable = listStyle.selection;
        drawable.setLeftWidth(drawable.getLeftWidth() + 10.0f);
        Drawable drawable2 = listStyle.selection;
        drawable2.setRightWidth(drawable2.getRightWidth() + 10.0f);
        ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(24);
        TextureRegionDrawable drawable3 = Game.f8589i.assetManager.getDrawable("blank");
        Color color2 = MaterialColor.GREY.P900;
        SelectBox.SelectBoxStyle selectBoxStyle = new SelectBox.SelectBoxStyle(font2, color, drawable3.tint(color2), new ScrollPane.ScrollPaneStyle(Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.GREY.P800), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank"), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank")), listStyle);
        this.selectBoxStyle = selectBoxStyle;
        Drawable drawable4 = selectBoxStyle.background;
        drawable4.setLeftWidth(drawable4.getLeftWidth() + 10.0f);
        Drawable drawable5 = this.selectBoxStyle.background;
        drawable5.setRightWidth(drawable5.getRightWidth() + 10.0f);
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(24, false), color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(color2));
        this.textFieldStyle = textFieldStyle;
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable6 = this.textFieldStyle.background;
        drawable6.setLeftWidth(drawable6.getLeftWidth() + 10.0f);
        Drawable drawable7 = this.textFieldStyle.background;
        drawable7.setRightWidth(drawable7.getRightWidth() + 10.0f);
        Group group2 = new Group();
        this.f13248d = group2;
        group2.setTransform(false);
        Group group3 = this.f13248d;
        Touchable touchable = Touchable.enabled;
        group3.setTouchable(touchable);
        this.f13248d.addListener(new InputVoid());
        this.f13248d.setSize(520.0f, 936.0f);
        group.addActor(this.f13248d);
        this.f13248d.addActor(new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 936.0f, 520.0f, 925.0f, 520.0f, 0.0f}));
        Group group4 = new Group();
        this.f13252r = group4;
        group4.setTransform(false);
        this.f13252r.setSize(64.0f, 64.0f);
        this.f13252r.setPosition(40.0f, 835.0f);
        this.f13248d.addActor(this.f13252r);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f13249k = label;
        label.setPosition(124.0f, 835.0f);
        this.f13249k.setSize(100.0f, 64.0f);
        this.f13248d.addActor(this.f13249k);
        if (Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.PRESTIGE_MODE)) {
            Label label2 = this.f13249k;
            label2.setPosition(label2.getX(), 847.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
            image.setPosition(124.0f, 837.0f);
            image.setSize(24.0f, 24.0f);
            Color color3 = MaterialColor.LIGHT_BLUE.P400;
            image.setColor(color3);
            this.f13248d.addActor(image);
            Label label3 = new Label("350 mP", Game.f8589i.assetManager.getLabelStyle(21));
            this.f13251q = label3;
            label3.setPosition(156.0f, 817.0f);
            this.f13251q.setColor(color3);
            this.f13251q.setSize(100.0f, 64.0f);
            this.f13248d.addActor(this.f13251q);
        }
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-edit"), new Runnable() { // from class: com.prineside.tdi2.ui.components.f
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorItemInfoMenu.this.m20488h();
            }
        }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P300, MaterialColor.LIGHT_BLUE.P700);
        this.f13256v = paddedImageButton;
        paddedImageButton.setIconSize(48.0f, 48.0f);
        this.f13256v.setIconPosition(8.0f, 8.0f);
        this.f13256v.setSize(64.0f, 64.0f);
        this.f13256v.setPosition(332.0f, 835.0f);
        this.f13256v.setTouchable(touchable);
        this.f13256v.setVisible(false);
        this.f13248d.addActor(this.f13256v);
        Label label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f13250p = label4;
        label4.setPosition(380.0f, 835.0f);
        this.f13250p.setSize(100.0f, 64.0f);
        this.f13250p.setColor(MaterialColor.AMBER.P500);
        this.f13250p.setAlignment(16);
        this.f13250p.setTouchable(Touchable.disabled);
        this.f13248d.addActor(this.f13250p);
        Group group5 = new Group();
        this.f13253s = group5;
        group5.setTransform(false);
        this.f13253s.setSize(520.0f, 820.0f);
        this.f13248d.addActor(this.f13253s);
        final boolean[] zArr = {false};
        final float[] fArr = {0.0f};
        final boolean[] zArr2 = {false};
        Group group6 = new Group() { // from class: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu.1
            @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
            public void act(float f) {
                super.act(f);
                if (zArr[0]) {
                    float[] fArr2 = fArr;
                    float f2 = fArr2[0] + f;
                    fArr2[0] = f2;
                    if (f2 > 0.75f) {
                        zArr2[0] = true;
                        MapEditorItemInfoMenu.this.f13245A.begin();
                        for (int i = 0; i < MapEditorItemInfoMenu.this.f13245A.size; i++) {
                            ((MapEditorTileInfoMenuListener) MapEditorItemInfoMenu.this.f13245A.get(i)).sellButtonHeld();
                        }
                        MapEditorItemInfoMenu.this.f13245A.end();
                        zArr[0] = false;
                    }
                }
            }
        };
        this.f13254t = group6;
        group6.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu.2
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                zArr[0] = true;
                zArr2[0] = false;
                fArr[0] = 0.0f;
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                super.touchUp(inputEvent, f, f2, i, i2);
                zArr[0] = false;
                if (!zArr2[0]) {
                    MapEditorItemInfoMenu.this.f13245A.begin();
                    for (int i3 = 0; i3 < MapEditorItemInfoMenu.this.f13245A.size; i3++) {
                        ((MapEditorTileInfoMenuListener) MapEditorItemInfoMenu.this.f13245A.get(i3)).sellButtonPressed();
                    }
                    MapEditorItemInfoMenu.this.f13245A.end();
                }
            }
        });
        this.f13254t.setTransform(false);
        this.f13254t.setSize(440.0f, 96.0f);
        this.f13254t.setPosition(40.0f, 196.0f);
        this.f13248d.addActor(this.f13254t);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setSize(440.0f, 96.0f);
        image2.setColor(new Color(623191551));
        this.f13254t.addActor(image2);
        this.f13254t.addActor(new QuadActor(MaterialColor.RED.P800, new float[]{0.0f, 0.0f, 0.0f, 96.0f, 128.0f, 96.0f, 118.0f, 0.0f}));
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-dollar"));
        image3.setSize(64.0f, 64.0f);
        image3.setPosition(32.0f, 16.0f);
        this.f13254t.addActor(image3);
        Table table = new Table();
        this.f13255u = table;
        table.setPosition(140.0f, 0.0f);
        this.f13255u.setSize(300.0f, 96.0f);
        this.f13254t.addActor(this.f13255u);
        Group group7 = new Group();
        group7.setTransform(false);
        group7.setTouchable(touchable);
        group7.setSize(520.0f, 160.0f);
        this.f13248d.addActor(group7);
        group7.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                MapEditorItemInfoMenu.this.setMinimized(true);
            }
        });
        group7.addActor(new QuadActor(new Color(623191551), new float[]{0.0f, 0.0f, 0.0f, 149.0f, 520.0f, 160.0f, 520.0f, 0.0f}));
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
        image4.setSize(64.0f, 64.0f);
        image4.setPosition(228.0f, 50.0f);
        group7.addActor(image4);
        Group group8 = new Group();
        this.f13247b = group8;
        group8.setTransform(false);
        this.f13247b.setTouchable(touchable);
        this.f13247b.setSize(196.0f, 131.0f);
        group.addActor(this.f13247b);
        this.f13247b.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.MapEditorItemInfoMenu.4
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                MapEditorItemInfoMenu.this.setMinimized(false);
            }
        });
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("ui-map-editor-tile-info-menu-tab"));
        image5.setSize(196.0f, 131.0f);
        this.f13247b.addActor(image5);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("icon-info-square"));
        image6.setSize(64.0f, 64.0f);
        image6.setPosition(55.0f, 39.0f);
        this.f13247b.addActor(image6);
        setMinimized(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m20489g(Item item) {
        Logger.log("MapEditorItemInfoMenu", "item changed: " + item);
        notifySelectedTileChanged();
        setItem(this.currentItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m20488h() {
        if (this.currentItem.getType() == ItemType.TILE && ((TileItem) this.currentItem).tile.getMap() != null) {
            Game.f8589i.uiManager.itemCreationOverlay.show(this.currentItem, new ObjectRetriever() { // from class: com.prineside.tdi2.ui.components.g
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    MapEditorItemInfoMenu.this.m20489g((Item) obj);
                }
            }, false);
        } else {
            Game.f8589i.uiManager.itemCreationOverlay.show(this.currentItem);
        }
    }

    public void addListener(MapEditorTileInfoMenuListener mapEditorTileInfoMenuListener) {
        if (mapEditorTileInfoMenuListener != null) {
            if (!this.f13245A.contains(mapEditorTileInfoMenuListener, true)) {
                this.f13245A.add(mapEditorTileInfoMenuListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: i */
    public final void m20487i(PlatformTile platformTile, int i, int i2) {
        if (i >= 0 && i < platformTile.getMap().widthTiles && i2 >= 0 && i2 < platformTile.getMap().heightTiles) {
            Tile tile = platformTile.getMap().getTile(i, i2);
            if (tile != null && tile.type == TileType.PLATFORM) {
                PlatformTile platformTile2 = (PlatformTile) tile;
                platformTile2.building = platformTile.building.cloneBuilding();
                setItem(Item.C1543D.F_TILE.create(platformTile2));
                MapEditorScreen mapEditorScreen = this.f13260z;
                mapEditorScreen.selectedTile = true;
                mapEditorScreen.selectedBarrier = false;
                mapEditorScreen.selectedTileX = i;
                mapEditorScreen.selectedTileY = i2;
                mapEditorScreen.f10896S._mapEditor.mapChanged = true;
                return;
            }
            Logger.log("MapEditorItemInfoMenu", "no tile or not a platform");
            return;
        }
        Logger.log("MapEditorItemInfoMenu", "out of map: " + i + ", " + i2 + " (" + platformTile.getMap().widthTiles + " x " + platformTile.getMap().heightTiles + ")");
    }

    public void notifySelectedTileChanged() {
        this.f13245A.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<MapEditorTileInfoMenuListener> delayedRemovalArray = this.f13245A;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.get(i).selectedTileModified();
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    public void removeListener(MapEditorTileInfoMenuListener mapEditorTileInfoMenuListener) {
        if (mapEditorTileInfoMenuListener != null) {
            this.f13245A.removeValue(mapEditorTileInfoMenuListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void setMinimized(boolean z) {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.f13257w = z;
        if (z) {
            this.f13247b.clearActions();
            this.f13247b.setVisible(true);
            Group group = this.f13247b;
            float f2 = f * 0.2f;
            Interpolation.PowOut powOut = Interpolation.pow2Out;
            group.addAction(Actions.moveTo(0.0f, 0.0f, f2, powOut));
            this.f13248d.clearActions();
            this.f13248d.addAction(Actions.sequence(Actions.moveTo(0.0f, -936.0f, f2, powOut), Actions.hide()));
            Game.f8589i.uiManager.stage.setKeyboardFocus(null);
            return;
        }
        this.f13247b.clearActions();
        Group group2 = this.f13247b;
        float f3 = f * 0.2f;
        Interpolation.PowOut powOut2 = Interpolation.pow2Out;
        group2.addAction(Actions.sequence(Actions.moveTo(0.0f, -131.0f, f3, powOut2), Actions.hide()));
        this.f13248d.clearActions();
        this.f13248d.setVisible(true);
        this.f13248d.addAction(Actions.moveTo(0.0f, 0.0f, f3, powOut2));
    }

    public void setVisible(boolean z) {
        this.f13246a.getTable().setVisible(z);
        if (!z) {
            Game.f8589i.uiManager.stage.setKeyboardFocus(null);
        }
    }
}
