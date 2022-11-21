package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.gates.BarrierTypeGate;
import com.prineside.tdi2.gates.TeleportGate;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.utils.NAGS;
/* renamed from: com.prineside.tdi2.ui.components.GateMenu */
/* loaded from: classes2.dex */
public class GateMenu implements Disposable {

    /* renamed from: x */
    public static final Color f13052x = new Color(623191551);

    /* renamed from: y */
    public static final StringBuilder f13053y = new StringBuilder();

    /* renamed from: a */
    public final SideMenu f13054a;

    /* renamed from: b */
    public final SideMenu.SideMenuContainer f13055b;

    /* renamed from: d */
    public boolean f13056d;

    /* renamed from: k */
    public Table f13057k;

    /* renamed from: p */
    public Label f13058p;

    /* renamed from: q */
    public Label f13059q;

    /* renamed from: r */
    public Group f13060r;

    /* renamed from: s */
    public Group f13061s;

    /* renamed from: t */
    public Group f13062t;

    /* renamed from: u */
    public final GameSystemProvider f13063u;

    /* renamed from: v */
    public final _SideMenuListener f13064v;

    /* renamed from: w */
    public final _MapSystemListener f13065w;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.GateMenu$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedGateChanged(Gate gate) {
            if (GateMenu.this.f13063u.map.getSelectedGate() != null) {
                GateMenu.this.m20557e();
                GateMenu.this.m20558d(true);
                return;
            }
            GateMenu.this.m20558d(false);
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.GateMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            GateMenu.this.m20557e();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    /* renamed from: d */
    public final void m20558d(boolean z) {
        String str;
        if (this.f13056d != z) {
            this.f13056d = z;
            if (z) {
                this.f13055b.show();
            } else {
                this.f13055b.hide();
            }
            if (z) {
                str = "shown";
            } else {
                str = "hidden";
            }
            Logger.log("GateMenu", str);
        }
    }

    /* renamed from: e */
    public final void m20557e() {
        this.f13057k.clearChildren();
        this.f13061s.setVisible(false);
        this.f13060r.setVisible(false);
        this.f13062t.setVisible(false);
        int scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        Gate selectedGate = this.f13063u.map.getSelectedGate();
        if (selectedGate != null) {
            this.f13058p.setText(Game.f8589i.gateManager.getFactory(selectedGate.getType()).getTitle(selectedGate));
            this.f13059q.setText(Game.f8589i.gateManager.getFactory(selectedGate.getType()).getDescription(selectedGate));
            if (selectedGate.getType() == GateType.BARRIER_TYPE) {
                this.f13060r.setVisible(true);
                ObjectSet.ObjectSetIterator<EnemyType> it = ((BarrierTypeGate) selectedGate).blockedEnemies.iterator();
                while (it.hasNext()) {
                    EnemyType next = it.next();
                    Group group = new Group();
                    group.setTransform(false);
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                    image.setSize(600.0f, 52.0f);
                    image.setColor(f13052x);
                    group.addActor(image);
                    Image image2 = new Image(Game.f8589i.enemyManager.getFactory(next).getTexture());
                    image2.setPosition(48.0f, 6.0f);
                    image2.setSize(40.0f, 40.0f);
                    group.addActor(image2);
                    Label label = new Label(Game.f8589i.enemyManager.getFactory(next).getTitle(), Game.f8589i.assetManager.getLabelStyle(24));
                    label.setSize(100.0f, 52.0f);
                    label.setPosition(100.0f, 0.0f);
                    group.addActor(label);
                    this.f13057k.add((Table) group).size(600.0f, 52.0f).padBottom(4.0f).row();
                }
            } else if (selectedGate.getType() == GateType.TELEPORT) {
                this.f13062t.setVisible(true);
                this.f13062t.clearChildren();
                TeleportGate teleportGate = (TeleportGate) selectedGate;
                StringBuilder stringBuilder = f13053y;
                stringBuilder.setLength(0);
                stringBuilder.append(TeleportGate.INDEX_NAMES[teleportGate.index]).append(" (").append(teleportGate.index).append(")");
                Label label2 = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(24));
                label2.setPosition(40.0f, scaledViewportHeight + 880.0f);
                label2.setSize(520.0f, 17.0f);
                label2.setWrap(true);
                this.f13062t.addActor(label2);
            }
        }
        this.f13057k.add().expandX().fillX().height(40.0f).row();
        this.f13057k.add().expand().fill();
    }

    public GateMenu(SideMenu sideMenu, GameSystemProvider gameSystemProvider) {
        _SideMenuListener _sidemenulistener = new _SideMenuListener();
        this.f13064v = _sidemenulistener;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13065w = _mapsystemlistener;
        this.f13063u = gameSystemProvider;
        this.f13054a = sideMenu;
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13055b = createContainer;
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f13058p = label;
        label.setSize(460.0f, 26.0f);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() - 1080;
        this.f13058p.setPosition(40.0f, 994.0f + scaledViewportHeight);
        createContainer.addActor(this.f13058p);
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13059q = label2;
        label2.setSize(520.0f, 100.0f);
        this.f13059q.setPosition(40.0f, 884.0f + scaledViewportHeight);
        this.f13059q.setAlignment(10);
        this.f13059q.setWrap(true);
        createContainer.addActor(this.f13059q);
        Group group = new Group();
        this.f13060r = group;
        group.setTransform(false);
        float f = 940.0f + scaledViewportHeight;
        this.f13060r.setSize(600.0f, f);
        createContainer.addActor(this.f13060r);
        Group group2 = new Group();
        this.f13061s = group2;
        group2.setTransform(false);
        this.f13061s.setSize(600.0f, f);
        createContainer.addActor(this.f13061s);
        Group group3 = new Group();
        this.f13062t = group3;
        group3.setTransform(false);
        this.f13062t.setSize(600.0f, f);
        createContainer.addActor(this.f13062t);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("blocked_enemies").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(21));
        label3.setSize(100.0f, 16.0f);
        label3.setPosition(40.0f, 906.0f + scaledViewportHeight);
        label3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        this.f13060r.addActor(label3);
        this.f13057k = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f13057k);
        scrollPane.setSize(600.0f, scaledViewportHeight + 890.0f);
        this.f13060r.addActor(scrollPane);
        sideMenu.addListener(_sidemenulistener);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
        createContainer.hide();
    }
}
