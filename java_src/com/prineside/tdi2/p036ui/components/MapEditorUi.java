package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.systems.MapEditorSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.MapEditorUi */
/* loaded from: classes2.dex */
public class MapEditorUi implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13308a;

    /* renamed from: b */
    public ComplexButton[] f13309b;

    /* renamed from: d */
    public ComplexButton f13310d;

    /* renamed from: k */
    public ComplexButton f13311k;
    public MapEditorHints mapEditorHints;

    /* renamed from: p */
    public ComplexButton f13312p;

    /* renamed from: q */
    public ComplexButton f13313q;

    /* renamed from: r */
    public Label f13314r;

    /* renamed from: s */
    public Label[] f13315s;

    /* renamed from: t */
    public Label f13316t;

    /* renamed from: u */
    public Label f13317u;

    /* renamed from: v */
    public GameSystemProvider f13318v;

    /* renamed from: w */
    public final _MapEditorSystemListener f13319w;

    /* renamed from: x */
    public final _ProgressManagerListener f13320x;

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorUi$4 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C25634 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13326a;

        static {
            int[] iArr = new int[MapEditorSystem.Mode.values().length];
            f13326a = iArr;
            try {
                iArr[MapEditorSystem.Mode.VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13326a[MapEditorSystem.Mode.DRAG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13326a[MapEditorSystem.Mode.INSERT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13326a[MapEditorSystem.Mode.DRAW_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13326a[MapEditorSystem.Mode.REMOVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13326a[MapEditorSystem.Mode.DRAW_REMOVE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorUi$_MapEditorSystemListener */
    /* loaded from: classes2.dex */
    public class _MapEditorSystemListener extends MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter {
        public _MapEditorSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void mapGateChanged(int i, int i2, Gate.Side side, Gate gate) {
            MapEditorUi.this.m20470q();
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void mapTileChanged(int i, int i2, Tile tile) {
            MapEditorUi.this.m20470q();
        }

        @Override // com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener.MapEditorSystemListenerAdapter, com.prineside.tdi2.systems.MapEditorSystem.MapEditorSystemListener
        public void modeChanged(MapEditorSystem.Mode mode) {
            MapEditorUi.this.m20471p();
        }
    }

    /* renamed from: j */
    public static /* synthetic */ void m20477j(GameSystemProvider gameSystemProvider) {
        gameSystemProvider._mapEditor.setMode(MapEditorSystem.Mode.VIEW);
    }

    /* renamed from: k */
    public static /* synthetic */ void m20476k(GameSystemProvider gameSystemProvider) {
        gameSystemProvider._mapEditor.setMode(MapEditorSystem.Mode.DRAG);
    }

    /* renamed from: l */
    public static /* synthetic */ void m20475l(GameSystemProvider gameSystemProvider) {
        gameSystemProvider._mapEditor.setMode(MapEditorSystem.Mode.INSERT);
    }

    /* renamed from: m */
    public static /* synthetic */ void m20474m(GameSystemProvider gameSystemProvider) {
        gameSystemProvider._mapEditor.setMode(MapEditorSystem.Mode.DRAW_INSERT);
    }

    /* renamed from: n */
    public static /* synthetic */ void m20473n(GameSystemProvider gameSystemProvider) {
        gameSystemProvider._mapEditor.setMode(MapEditorSystem.Mode.REMOVE);
    }

    /* renamed from: o */
    public static /* synthetic */ void m20472o(GameSystemProvider gameSystemProvider) {
        gameSystemProvider._mapEditor.setMode(MapEditorSystem.Mode.DRAW_REMOVE);
    }

    public void draw(float f) {
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapEditorUi$_ProgressManagerListener */
    /* loaded from: classes2.dex */
    public class _ProgressManagerListener extends ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter {
        public _ProgressManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
        public void itemsChanged(Item item, int i, int i2) {
            if (item.getType() == ItemType.RESOURCE || item.getType() == ItemType.GREEN_PAPER || item.getType() == ItemType.ACCELERATOR) {
                MapEditorUi.this.m20469r();
            }
        }
    }

    public MapEditorUi(final GameSystemProvider gameSystemProvider) {
        int i;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 102, "MapEditorUi");
        this.f13308a = addLayer;
        this.f13309b = new ComplexButton[4];
        ResourceType[] resourceTypeArr = ResourceType.values;
        this.f13315s = new Label[resourceTypeArr.length];
        _MapEditorSystemListener _mapeditorsystemlistener = new _MapEditorSystemListener();
        this.f13319w = _mapeditorsystemlistener;
        _ProgressManagerListener _progressmanagerlistener = new _ProgressManagerListener();
        this.f13320x = _progressmanagerlistener;
        this.f13318v = gameSystemProvider;
        gameSystemProvider._mapEditor.listeners.add(_mapeditorsystemlistener);
        Game.f8589i.progressManager.addListener(_progressmanagerlistener);
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        this.mapEditorHints = new MapEditorHints();
        Table table = addLayer.getTable();
        table.setName("main_map_editor_ui");
        Group group = new Group();
        group.setTransform(false);
        group.setSize(144.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        group.setTouchable(Touchable.childrenOnly);
        table.add((Table) group).expand().top().left().row();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-money"));
        float f = 72.0f;
        float f2 = 170.0f;
        image.setPosition(170.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 72.0f);
        float f3 = 32.0f;
        image.setSize(32.0f, 32.0f);
        group.addActor(image);
        Label label = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13314r = label;
        label.setPosition(210.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 72.0f);
        this.f13314r.setSize(170.0f, 32.0f);
        group.addActor(this.f13314r);
        int length = resourceTypeArr.length;
        int i2 = 0;
        int i3 = 1;
        while (i2 < length) {
            ResourceType resourceType = resourceTypeArr[i2];
            if (Game.f8589i.progressManager.isResourceOpened(resourceType)) {
                float f4 = ((i3 % 3) * 150.0f) + f2;
                float scaledViewportHeight2 = (Game.f8589i.settingsManager.getScaledViewportHeight() - ((i3 / 3) * 40.0f)) - f;
                Image image2 = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[resourceType.ordinal()]));
                image2.setPosition(f4, scaledViewportHeight2);
                image2.setColor(Game.f8589i.resourceManager.getColor(resourceType));
                image2.setSize(f3, f3);
                group.addActor(image2);
                i = length;
                this.f13315s[resourceType.ordinal()] = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
                this.f13315s[resourceType.ordinal()].setPosition(f4 + 32.0f + 12.0f, scaledViewportHeight2);
                this.f13315s[resourceType.ordinal()].setSize(170.0f, 32.0f);
                group.addActor(this.f13315s[resourceType.ordinal()]);
                i3++;
            } else {
                i = length;
            }
            i2++;
            length = i;
            f3 = 32.0f;
            f = 72.0f;
            f2 = 170.0f;
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-time-accelerator"));
        image3.setPosition(620.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 72.0f);
        image3.setColor(MaterialColor.YELLOW.P500);
        image3.setSize(32.0f, 32.0f);
        group.addActor(image3);
        Label label2 = new Label("0", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13316t = label2;
        label2.setPosition(664.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 72.0f);
        this.f13316t.setSize(170.0f, 32.0f);
        group.addActor(this.f13316t);
        if (Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.PRESTIGE_MODE)) {
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
            image4.setPosition(170.0f, (Game.f8589i.settingsManager.getScaledViewportHeight() - 80.0f) - 72.0f);
            image4.setSize(32.0f, 32.0f);
            Color color = MaterialColor.AMBER.P500;
            image4.setColor(color);
            group.addActor(image4);
            Label label3 = new Label("0 mP", Game.f8589i.assetManager.getLabelStyle(24));
            this.f13317u = label3;
            label3.setPosition(214.0f, (Game.f8589i.settingsManager.getScaledViewportHeight() - 80.0f) - 72.0f);
            this.f13317u.setColor(color);
            group.addActor(this.f13317u);
        }
        m20469r();
        m20470q();
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-house");
        Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.components.MapEditorUi.1
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider._mapEditor.goToPreviousScreen();
            }
        };
        Color color2 = Color.WHITE;
        Color color3 = MaterialColor.LIGHT_BLUE.P500;
        Color color4 = MaterialColor.LIGHT_BLUE.P600;
        PaddedImageButton iconSize = new PaddedImageButton(drawable, runnable, color2, color3, color4).setIconPosition(32.0f, 16.0f).setIconSize(96.0f, 96.0f);
        iconSize.setSize(144.0f, 144.0f);
        float f5 = scaledViewportHeight;
        iconSize.setPosition(0.0f, 936.0f + f5);
        group.addActor(iconSize);
        PaddedImageButton iconSize2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-right"), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapEditorUi.2
            @Override // java.lang.Runnable
            public void run() {
                gameSystemProvider._mapEditor.startMap();
            }
        }, color2, color3, color4).setIconPosition(32.0f, 16.0f).setIconSize(96.0f, 96.0f);
        iconSize2.setSize(144.0f, 128.0f);
        iconSize2.setPosition(0.0f, 808.0f + f5);
        group.addActor(iconSize2);
        PaddedImageButton iconSize3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-info-circle"), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapEditorUi.3
            @Override // java.lang.Runnable
            public void run() {
                MapEditorUi.this.mapEditorHints.show();
            }
        }, color2, color3, color4).setIconPosition(32.0f, 16.0f).setIconSize(96.0f, 96.0f);
        iconSize3.setSize(144.0f, 128.0f);
        iconSize3.setPosition(0.0f, f5 + 680.0f);
        group.addActor(iconSize3);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.components.h
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorUi.m20477j(GameSystemProvider.this);
            }
        });
        this.f13310d = complexButton;
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-pan-zoom"), 32.0f, 16.0f, 96.0f, 96.0f);
        this.f13310d.setSize(144.0f, 144.0f);
        this.f13310d.setPosition(0.0f, 0.0f);
        ComplexButton[] complexButtonArr = this.f13309b;
        ComplexButton complexButton2 = this.f13310d;
        complexButtonArr[0] = complexButton2;
        group.addActor(complexButton2);
        ComplexButton complexButton3 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.components.i
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorUi.m20476k(GameSystemProvider.this);
            }
        });
        this.f13311k = complexButton3;
        complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-drag-tile"), 32.0f, 16.0f, 96.0f, 96.0f);
        this.f13311k.setSize(144.0f, 128.0f);
        this.f13311k.setPosition(0.0f, 144.0f);
        ComplexButton[] complexButtonArr2 = this.f13309b;
        ComplexButton complexButton4 = this.f13311k;
        complexButtonArr2[1] = complexButton4;
        group.addActor(complexButton4);
        ComplexButton complexButton5 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.components.j
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorUi.m20475l(GameSystemProvider.this);
            }
        }, new Runnable() { // from class: com.prineside.tdi2.ui.components.k
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorUi.m20474m(GameSystemProvider.this);
            }
        });
        this.f13312p = complexButton5;
        complexButton5.setIcon(Game.f8589i.assetManager.getDrawable("icon-insert-tile"), 32.0f, 16.0f, 96.0f, 96.0f);
        this.f13312p.setSize(144.0f, 128.0f);
        this.f13312p.setPosition(0.0f, 272.0f);
        ComplexButton[] complexButtonArr3 = this.f13309b;
        ComplexButton complexButton6 = this.f13312p;
        complexButtonArr3[2] = complexButton6;
        group.addActor(complexButton6);
        ComplexButton complexButton7 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.components.l
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorUi.m20473n(GameSystemProvider.this);
            }
        }, new Runnable() { // from class: com.prineside.tdi2.ui.components.m
            @Override // java.lang.Runnable
            public final void run() {
                MapEditorUi.m20472o(GameSystemProvider.this);
            }
        });
        this.f13313q = complexButton7;
        complexButton7.setIcon(Game.f8589i.assetManager.getDrawable("icon-remove-tile"), 32.0f, 16.0f, 96.0f, 96.0f);
        this.f13313q.setSize(144.0f, 128.0f);
        this.f13313q.setPosition(0.0f, 400.0f);
        ComplexButton[] complexButtonArr4 = this.f13309b;
        ComplexButton complexButton8 = this.f13313q;
        complexButtonArr4[3] = complexButton8;
        group.addActor(complexButton8);
        m20471p();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.mapEditorHints.dispose();
        Game.f8589i.progressManager.removeListener(this.f13320x);
        Game.f8589i.uiManager.removeLayer(this.f13308a);
    }

    /* renamed from: p */
    public final void m20471p() {
        for (ComplexButton complexButton : this.f13309b) {
            complexButton.setIconColors(Color.WHITE, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P600, Color.GRAY);
        }
        switch (C25634.f13326a[this.f13318v._mapEditor.getMode().ordinal()]) {
            case 1:
                ComplexButton complexButton2 = this.f13310d;
                Color color = MaterialColor.GREEN.P500;
                complexButton2.setIconColors(color, color, color, Color.GRAY);
                return;
            case 2:
                ComplexButton complexButton3 = this.f13311k;
                Color color2 = MaterialColor.GREEN.P500;
                complexButton3.setIconColors(color2, color2, color2, Color.GRAY);
                return;
            case 3:
                ComplexButton complexButton4 = this.f13312p;
                Color color3 = MaterialColor.GREEN.P500;
                complexButton4.setIconColors(color3, color3, color3, Color.GRAY);
                return;
            case 4:
                ComplexButton complexButton5 = this.f13312p;
                Color color4 = MaterialColor.YELLOW.P500;
                complexButton5.setIconColors(color4, color4, color4, Color.GRAY);
                return;
            case 5:
                ComplexButton complexButton6 = this.f13313q;
                Color color5 = MaterialColor.GREEN.P500;
                complexButton6.setIconColors(color5, color5, color5, Color.GRAY);
                return;
            case 6:
                ComplexButton complexButton7 = this.f13313q;
                Color color6 = MaterialColor.YELLOW.P500;
                complexButton7.setIconColors(color6, color6, color6, Color.GRAY);
                return;
            default:
                return;
        }
    }

    /* renamed from: q */
    public final void m20470q() {
        double percentValueAsMultiplier;
        if (this.f13317u != null) {
            String str = ((Object) StringFormatter.commaSeparatedNumber(StrictMath.round(this.f13318v.map.getMap().getPrestigeScore() * percentValueAsMultiplier * 1000.0d))) + " mP";
            if (Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.PRESTIGE_DUST_DROP_RATE) > 1.0d) {
                str = str + " [#808080](x" + ((Object) StringFormatter.compactNumber(percentValueAsMultiplier, 2)) + ")[]";
            }
            this.f13317u.setText(str);
        }
    }

    /* renamed from: r */
    public final void m20469r() {
        ResourceType[] resourceTypeArr;
        this.f13314r.setText(StringFormatter.commaSeparatedNumber(Game.f8589i.progressManager.getGreenPapers()));
        for (ResourceType resourceType : ResourceType.values) {
            if (this.f13315s[resourceType.ordinal()] != null) {
                this.f13315s[resourceType.ordinal()].setText(StringFormatter.commaSeparatedNumber(Game.f8589i.progressManager.getResources(resourceType)));
            }
        }
        this.f13316t.setText(StringFormatter.commaSeparatedNumber(Game.f8589i.progressManager.getAccelerators()));
    }
}
