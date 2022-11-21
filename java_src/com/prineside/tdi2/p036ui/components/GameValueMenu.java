package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.GameValueTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
/* renamed from: com.prineside.tdi2.ui.components.GameValueMenu */
/* loaded from: classes2.dex */
public class GameValueMenu {

    /* renamed from: i */
    public static final StringBuilder f13041i = new StringBuilder();

    /* renamed from: a */
    public final SideMenu f13042a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13043b;

    /* renamed from: c */
    public Label f13044c;

    /* renamed from: d */
    public Label f13045d;

    /* renamed from: e */
    public Label f13046e;

    /* renamed from: f */
    public GameSystemProvider f13047f;

    /* renamed from: g */
    public final _MapSystemListener f13048g;

    /* renamed from: h */
    public final _SideMenuListener f13049h;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.GameValueMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = GameValueMenu.this.f13047f.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.GAME_VALUE && ((GameValueTile) selectedTile).getGameValueType() != GameValueType.DUMMY) {
                GameValueMenu.this.m20562e();
                GameValueMenu.this.m20563d(true);
                return;
            }
            GameValueMenu.this.m20563d(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.GameValueMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            GameValueMenu.this.m20562e();
        }
    }

    /* renamed from: d */
    public final void m20563d(boolean z) {
        if (z) {
            this.f13043b.show();
            m20562e();
            return;
        }
        this.f13043b.hide();
        this.f13042a.hideSideTooltip();
    }

    /* renamed from: e */
    public final void m20562e() {
        Tile selectedTile = this.f13047f.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.GAME_VALUE) {
            this.f13043b.setLabelOverTitleTilePos(selectedTile);
            GameValueTile gameValueTile = (GameValueTile) selectedTile;
            this.f13044c.setText(Game.f8589i.gameValueManager.getTitle(gameValueTile.getGameValueType()));
            this.f13045d.setText(Game.f8589i.gameValueManager.formatEffectValue(gameValueTile.getDelta(), Game.f8589i.gameValueManager.getUnits(gameValueTile.getGameValueType())));
            this.f13046e.setVisible(gameValueTile.isOverwrite());
        }
    }

    public GameValueMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13048g = _mapsystemlistener;
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13049h = _sidemenulistener;
        this.f13047f = gameSystemProvider;
        this.f13042a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13043b = createContainer;
        Actor label = new Label(Game.f8589i.localeManager.i18n.get("tile_name_GAME_VALUE").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tile_description_GAME_VALUE"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setSize(420.0f, 100.0f);
        label2.setPosition(40.0f, 884.0f + scaledViewportHeight);
        label2.setAlignment(10);
        label2.setWrap(true);
        createContainer.addActor(label2);
        Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(600.0f, 52.0f);
        image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        float f = 872.0f + scaledViewportHeight;
        image.setPosition(0.0f, f);
        createContainer.addActor(image);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13044c = label3;
        label3.setPosition(40.0f, f);
        this.f13044c.setSize(100.0f, 52.0f);
        createContainer.addActor(this.f13044c);
        Label label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13045d = label4;
        label4.setPosition(0.0f, f);
        this.f13045d.setAlignment(16);
        this.f13045d.setSize(560.0f, 52.0f);
        createContainer.addActor(this.f13045d);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("overwrites_other_effects"), Game.f8589i.assetManager.getLabelStyle(21));
        this.f13046e = label5;
        label5.setPosition(40.0f, scaledViewportHeight + 816.0f);
        this.f13046e.setAlignment(8);
        this.f13046e.setSize(560.0f, 52.0f);
        this.f13046e.setColor(MaterialColor.ORANGE.P500);
        createContainer.addActor(this.f13046e);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        sideMenu.addListener(_sidemenulistener);
        createContainer.hide();
    }
}
