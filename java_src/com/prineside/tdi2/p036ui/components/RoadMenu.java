package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.RoadTile;
import com.prineside.tdi2.utils.NAGS;
/* renamed from: com.prineside.tdi2.ui.components.RoadMenu */
/* loaded from: classes2.dex */
public class RoadMenu implements Disposable {

    /* renamed from: s */
    public static final StringBuilder f13593s = new StringBuilder();

    /* renamed from: a */
    public final SideMenu f13594a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13595b;

    /* renamed from: d */
    public boolean f13596d;

    /* renamed from: k */
    public Group f13597k;

    /* renamed from: p */
    public GameSystemProvider f13598p;

    /* renamed from: q */
    public final _SideMenuListener f13599q;

    /* renamed from: r */
    public final _MapSystemListener f13600r;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.RoadMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = RoadMenu.this.f13598p.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.ROAD) {
                RoadMenu.this.m20389e();
                RoadMenu.this.m20390d(true);
                return;
            }
            RoadMenu.this.m20390d(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.RoadMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            RoadMenu.this.m20389e();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    /* renamed from: d */
    public final void m20390d(boolean z) {
        if (this.f13596d != z) {
            this.f13596d = z;
            if (z) {
                this.f13595b.show();
            } else {
                this.f13595b.hide();
            }
        }
    }

    /* renamed from: e */
    public final void m20389e() {
        Tile selectedTile = this.f13598p.map.getSelectedTile();
        this.f13597k.clear();
        if (selectedTile != null && selectedTile.type == TileType.ROAD) {
            this.f13595b.setLabelOverTitleTilePos(selectedTile);
            RoadTile roadTile = (RoadTile) selectedTile;
        }
    }

    public RoadMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13599q = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13600r = _mapsystemlistener;
        this.f13594a = sideMenu;
        this.f13598p = gameSystemProvider;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13595b = createContainer;
        Actor label = new Label(Game.f8589i.localeManager.i18n.get("tile_name_ROAD").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tile_description_ROAD"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setSize(420.0f, 100.0f);
        label2.setPosition(40.0f, scaledViewportHeight + 884.0f);
        label2.setAlignment(10);
        label2.setWrap(true);
        createContainer.addActor(label2);
        Group group = new Group();
        this.f13597k = group;
        group.setTransform(false);
        this.f13597k.setSize(600.0f, 1080.0f);
        this.f13597k.setTouchable(Touchable.disabled);
        createContainer.addActor(this.f13597k);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        createContainer.hide();
    }
}
