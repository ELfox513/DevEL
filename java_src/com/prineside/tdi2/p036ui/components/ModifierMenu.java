package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.ModifierSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.ModifierMenu */
/* loaded from: classes2.dex */
public class ModifierMenu implements Disposable {

    /* renamed from: C */
    public static final Vector2 f13420C = new Vector2();

    /* renamed from: A */
    public final _MapSystemListener f13421A;

    /* renamed from: B */
    public final _ModifierSystemListener f13422B;

    /* renamed from: a */
    public final SideMenu f13423a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13424b;

    /* renamed from: d */
    public boolean f13425d;

    /* renamed from: k */
    public final Label f13426k;

    /* renamed from: p */
    public final Label f13427p;

    /* renamed from: q */
    public final Group f13428q;

    /* renamed from: s */
    public final SellButton f13430s;

    /* renamed from: t */
    public ComplexButton f13431t;

    /* renamed from: u */
    public InputAdapter f13432u;

    /* renamed from: v */
    public Label f13433v;

    /* renamed from: x */
    public boolean f13435x;

    /* renamed from: y */
    public final GameSystemProvider f13436y;

    /* renamed from: z */
    public final _SideMenuListener f13437z;

    /* renamed from: r */
    public ObjectMap<String, Object> f13429r = new ObjectMap<>();

    /* renamed from: w */
    public int f13434w = -1;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.ModifierMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            if (building.buildingType == BuildingType.MODIFIER && platformTile == ModifierMenu.this.f13436y.map.getSelectedTile()) {
                ModifierMenu.this.m20445h(false);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Building building;
            Tile selectedTile = ModifierMenu.this.f13436y.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.PLATFORM && (building = ((PlatformTile) selectedTile).building) != null && building.buildingType == BuildingType.MODIFIER) {
                ModifierMenu.this.m20444i();
                ModifierMenu.this.m20445h(true);
                return;
            }
            ModifierMenu.this.m20445h(false);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void modifierPlacedOnMap(Modifier modifier) {
            if (modifier.getTile() == ModifierMenu.this.f13436y.map.getSelectedTile()) {
                ModifierMenu.this.m20444i();
                ModifierMenu.this.m20445h(true);
            }
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.ModifierMenu$_ModifierSystemListener */
    /* loaded from: classes2.dex */
    public class _ModifierSystemListener extends ModifierSystem.ModifierSystemListener.ModifierSystemListenerAdapter {
        public _ModifierSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener.ModifierSystemListenerAdapter, com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener
        public void customButtonPressed(Modifier modifier) {
            ModifierMenu.this.updateCustomButton();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.ModifierMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            ModifierMenu.this.m20444i();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    /* renamed from: i */
    public final void m20444i() {
        PlatformTile platformTile;
        Building building;
        this.f13434w = -1;
        this.f13429r.clear();
        this.f13428q.clearChildren();
        Tile selectedTile = this.f13436y.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.PLATFORM && (building = (platformTile = (PlatformTile) selectedTile).building) != null && building.buildingType == BuildingType.MODIFIER) {
            this.f13424b.setLabelOverTitleTilePos(selectedTile);
            Modifier modifier = (Modifier) platformTile.building;
            this.f13426k.setText(Game.f8589i.modifierManager.getFactory(modifier.type).getTitle());
            this.f13427p.setText(Game.f8589i.modifierManager.getFactory(modifier.type).getDescription(this.f13436y.gameValue));
        }
        updateCustomButton();
    }

    public boolean isVisible() {
        return this.f13425d;
    }

    public ModifierMenu(SideMenu sideMenu, final GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13437z = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13421A = _mapsystemlistener;
        _ModifierSystemListener _modifiersystemlistener = new _ModifierSystemListener();
        this.f13422B = _modifiersystemlistener;
        this.f13436y = gameSystemProvider;
        this.f13423a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13424b = createContainer;
        createContainer.setName("modifier_menu_container");
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f13426k = label;
        label.setSize(520.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13427p = label2;
        label2.setSize(520.0f, 100.0f);
        label2.setPosition(40.0f, scaledViewportHeight + 884.0f);
        label2.setAlignment(10);
        label2.setWrap(true);
        createContainer.addActor(label2);
        Group group = new Group();
        this.f13428q = group;
        group.setTransform(false);
        group.setSize(600.0f, 400.0f);
        group.setPosition(0.0f, 160.0f);
        createContainer.addActor(group);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.ModifierMenu.1
            @Override // java.lang.Runnable
            public void run() {
                if (ModifierMenu.this.f13435x) {
                    ModifierMenu.this.cancelUsingCustomButton();
                    return;
                }
                Modifier m20446g = ModifierMenu.this.m20446g();
                if (m20446g != null && m20446g.hasCustomButton()) {
                    if (m20446g.isCustomButtonNeedMapPoint()) {
                        ModifierMenu.this.startUsingCustomButton();
                        return;
                    }
                    gameSystemProvider.modifier.customModifierButtonAction(m20446g, 0, 0);
                    ModifierMenu.this.updateCustomButton();
                }
            }
        });
        this.f13431t = complexButton;
        complexButton.setLabel(80.0f, 20.0f, 200.0f, 40.0f, 8);
        this.f13431t.label.setWrap(true);
        this.f13431t.icon.setSize(40.0f, 40.0f);
        this.f13431t.icon.setPosition(20.0f, 20.0f);
        this.f13431t.setPosition(40.0f, 40.0f);
        this.f13431t.setSize(309.0f, 80.0f);
        this.f13431t.setBackground(new QuadDrawable(new QuadActor(color, new float[]{0.0f, 0.0f, 0.0f, 80.0f, 309.0f, 80.0f, 283.0f, 0.0f})), 0.0f, 0.0f, 309.0f, 80.0f);
        createContainer.addActor(this.f13431t);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13433v = label3;
        label3.setSize(192.0f, 16.0f);
        this.f13433v.setPosition(368.0f, 132.0f);
        this.f13433v.setAlignment(16);
        this.f13433v.setColor(MaterialColor.RED.P500);
        this.f13433v.setVisible(false);
        createContainer.addActor(this.f13433v);
        SellButton sellButton = new SellButton(new Runnable() { // from class: com.prineside.tdi2.ui.components.ModifierMenu.2
            @Override // java.lang.Runnable
            public void run() {
                Modifier m20446g = ModifierMenu.this.m20446g();
                if (m20446g != null) {
                    gameSystemProvider.modifier.sellModifierAction(m20446g);
                }
            }
        });
        this.f13430s = sellButton;
        sellButton.setPosition(368.0f, 40.0f);
        createContainer.addActor(sellButton);
        this.f13432u = new InputAdapter() { // from class: com.prineside.tdi2.ui.components.ModifierMenu.3
            @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean touchUp(int i, int i2, int i3, int i4) {
                if (gameSystemProvider._input == null) {
                    return false;
                }
                if (ModifierMenu.this.m20446g() != null && ModifierMenu.this.f13435x) {
                    ModifierMenu.f13420C.set(i, i2);
                    gameSystemProvider._input.getCameraController().screenToMap(ModifierMenu.f13420C);
                    if (ModifierMenu.this.f13435x) {
                        gameSystemProvider.modifier.customModifierButtonAction(ModifierMenu.this.m20446g(), (int) ModifierMenu.f13420C.f5527x, (int) ModifierMenu.f13420C.f5528y);
                        ModifierMenu.this.updateCustomButton();
                    }
                }
                ModifierMenu.this.cancelUsingCustomButton();
                return false;
            }
        };
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        gameSystemProvider.modifier.listeners.add(_modifiersystemlistener);
    }

    public void cancelUsingCustomButton() {
        this.f13436y._input.enableAllInput();
        this.f13435x = false;
        updateCustomButton();
    }

    public void draw(float f) {
        Modifier m20446g;
        if (this.f13425d && (m20446g = m20446g()) != null) {
            m20446g.fillModifierMenu(this.f13428q, this.f13429r);
            int ceil = MathUtils.ceil(m20446g.getTimeTillSellAvailable());
            int i = (((m20446g.isSellAvailable() ? 1 : 0) + 31) * 31) + ceil;
            if (i != this.f13434w) {
                this.f13434w = i;
                int sellPrice = m20446g.getSellPrice();
                if (m20446g.isSellAvailable()) {
                    this.f13430s.setPrice(sellPrice);
                    this.f13430s.setColors(MaterialColor.RED.P800, MaterialColor.RED.P900, MaterialColor.RED.P700);
                    this.f13433v.setVisible(false);
                    return;
                }
                this.f13430s.setPrice((int) (sellPrice * 0.75f));
                this.f13430s.setColors(MaterialColor.GREY.P800, MaterialColor.GREY.P900, MaterialColor.GREY.P700);
                this.f13433v.setText(StringFormatter.digestTime(ceil));
                this.f13433v.setVisible(true);
            }
        }
    }

    /* renamed from: g */
    public final Modifier m20446g() {
        Building building;
        Tile selectedTile = this.f13436y.map.getSelectedTile();
        if (selectedTile == null || selectedTile.type != TileType.PLATFORM || (building = ((PlatformTile) selectedTile).building) == null || building.buildingType != BuildingType.MODIFIER) {
            return null;
        }
        return (Modifier) building;
    }

    /* renamed from: h */
    public final void m20445h(boolean z) {
        if (this.f13425d != z) {
            this.f13425d = z;
            if (z) {
                this.f13424b.show();
                m20444i();
                return;
            }
            this.f13429r.clear();
            this.f13424b.hide();
        }
    }

    public void startUsingCustomButton() {
        if (this.f13435x) {
            Logger.error("ModifierMenu", "been using custom button, canceling");
            cancelUsingCustomButton();
        }
        this.f13435x = true;
        this.f13436y._input.setCustomMapInputProcessor(this.f13432u);
        updateCustomButton();
    }

    public void updateCustomButton() {
        Modifier m20446g = m20446g();
        this.f13431t.setVisible(false);
        if (m20446g != null && m20446g.hasCustomButton()) {
            this.f13431t.setVisible(true);
            m20446g.updateCustomButton(this.f13431t, this.f13435x);
        }
    }
}
