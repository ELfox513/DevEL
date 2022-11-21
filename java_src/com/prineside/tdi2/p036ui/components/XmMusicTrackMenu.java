package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.XmMusicTrackTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
/* renamed from: com.prineside.tdi2.ui.components.XmMusicTrackMenu */
/* loaded from: classes2.dex */
public class XmMusicTrackMenu implements Disposable {

    /* renamed from: s */
    public static final StringBuilder f13868s = new StringBuilder();

    /* renamed from: a */
    public final SideMenu f13869a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13870b;

    /* renamed from: d */
    public boolean f13871d;

    /* renamed from: k */
    public Group f13872k;

    /* renamed from: p */
    public GameSystemProvider f13873p;

    /* renamed from: q */
    public final _SideMenuListener f13874q;

    /* renamed from: r */
    public final _MapSystemListener f13875r;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.XmMusicTrackMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = XmMusicTrackMenu.this.f13873p.map.getSelectedTile();
            if (selectedTile != null && selectedTile.type == TileType.XM_MUSIC_TRACK) {
                XmMusicTrackMenu.this.m20285e();
                XmMusicTrackMenu.this.m20286d(true);
                return;
            }
            XmMusicTrackMenu.this.m20286d(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.XmMusicTrackMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            XmMusicTrackMenu.this.m20285e();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    /* renamed from: d */
    public final void m20286d(boolean z) {
        if (this.f13871d != z) {
            this.f13871d = z;
            if (z) {
                this.f13870b.show();
            } else {
                this.f13870b.hide();
            }
        }
    }

    /* renamed from: e */
    public final void m20285e() {
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        Tile selectedTile = this.f13873p.map.getSelectedTile();
        this.f13872k.clear();
        if (selectedTile != null && selectedTile.type == TileType.XM_MUSIC_TRACK) {
            this.f13870b.setLabelOverTitleTilePos(selectedTile);
            XmMusicTrackTile xmMusicTrackTile = (XmMusicTrackTile) selectedTile;
            Table table = new Table();
            float f = scaledViewportHeight;
            table.setPosition(0.0f, 900.0f + f);
            table.setSize(600.0f, 32.0f);
            this.f13872k.addActor(table);
            Color[] idColors = xmMusicTrackTile.getIdColors();
            float length = 600.0f / idColors.length;
            for (Color color : idColors) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image.setColor(color);
                table.add((Table) image).size(length, 8.0f);
            }
            table.row();
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image2.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            table.add((Table) image2).colspan(idColors.length).width(600.0f).height(4.0f);
            String titleCached = xmMusicTrackTile.getTitleCached();
            if (titleCached != null) {
                Label label = new Label(titleCached, Game.f8589i.assetManager.getLabelStyle(30));
                label.setColor(MaterialColor.AMBER.P500);
                label.setPosition(40.0f, 840.0f + f);
                this.f13872k.addActor(label);
                String descriptionCached = xmMusicTrackTile.getDescriptionCached();
                if (descriptionCached != null) {
                    Label label2 = new Label(descriptionCached, Game.f8589i.assetManager.getLabelStyle(24));
                    label2.setPosition(40.0f, f + 800.0f);
                    label2.setSize(520.0f, 32.0f);
                    label2.setAlignment(10);
                    this.f13872k.addActor(label2);
                }
            }
        }
    }

    public XmMusicTrackMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13874q = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13875r = _mapsystemlistener;
        this.f13869a = sideMenu;
        this.f13873p = gameSystemProvider;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13870b = createContainer;
        Actor label = new Label(Game.f8589i.localeManager.i18n.get("tile_name_XM_MUSIC_TRACK").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        label.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tile_description_XM_MUSIC_TRACK"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setSize(420.0f, 100.0f);
        label2.setPosition(40.0f, scaledViewportHeight + 884.0f);
        label2.setAlignment(10);
        label2.setWrap(true);
        createContainer.addActor(label2);
        Group group = new Group();
        this.f13872k = group;
        group.setTransform(false);
        this.f13872k.setSize(600.0f, 1080.0f);
        this.f13872k.setTouchable(Touchable.disabled);
        createContainer.addActor(this.f13872k);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        createContainer.hide();
    }
}
