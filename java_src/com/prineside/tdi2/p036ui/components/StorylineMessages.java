package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.RightSideMenuButton;
import com.prineside.tdi2.utils.InputVoid;
/* renamed from: com.prineside.tdi2.ui.components.StorylineMessages */
/* loaded from: classes2.dex */
public class StorylineMessages implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13662a;

    /* renamed from: b */
    public final UiManager.UiLayer f13663b;

    /* renamed from: d */
    public final UiManager.UiLayer f13664d;

    /* renamed from: k */
    public final UiManager.UiLayer[] f13665k;

    /* renamed from: p */
    public boolean f13666p;

    /* renamed from: q */
    public float f13667q;

    /* renamed from: r */
    public Group f13668r;

    /* renamed from: s */
    public Array<String> f13669s;

    /* renamed from: t */
    public Array<Label> f13670t;

    /* renamed from: u */
    public Runnable f13671u;

    /* renamed from: v */
    public GameSystemProvider f13672v;

    public void queue(String[] strArr) {
        if (strArr.length == 0) {
            return;
        }
        this.f13669s.addAll(strArr);
        if (!this.f13666p) {
            m20367b(this.f13669s.removeIndex(0));
            show();
        }
    }

    public void runOnContinue(Runnable runnable) {
        this.f13671u = runnable;
    }

    /* renamed from: b */
    public final void m20367b(String str) {
        Label label = new Label(str, new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE));
        label.setWrap(true);
        label.setWidth(1060.0f);
        label.layout();
        label.pack();
        label.setWidth(1060.0f);
        this.f13670t.add(label);
        label.addAction(Actions.alpha(0.0f));
        this.f13668r.clearChildren();
        float f = 0.0f;
        for (int i = this.f13670t.size - 1; i >= 0; i--) {
            Label label2 = this.f13670t.get(i);
            label2.setPosition(0.0f, f);
            this.f13668r.addActor(label2);
            if (i == this.f13670t.size - 1) {
                label2.addAction(Actions.alpha(1.0f, 0.3f));
                f += 16.0f;
            } else {
                label2.addAction(Actions.alpha(0.56f));
            }
            f += label2.getHeight();
        }
    }

    /* renamed from: c */
    public final void m20366c() {
        Array<String> array = this.f13669s;
        if (array.size > 0) {
            m20367b(array.removeIndex(0));
            return;
        }
        hide();
        Runnable runnable = this.f13671u;
        if (runnable != null) {
            this.f13671u = null;
            runnable.run();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13662a);
        Game.f8589i.uiManager.removeLayer(this.f13663b);
        Game.f8589i.uiManager.removeLayer(this.f13664d);
    }

    public void flushQueue() {
        while (true) {
            Array<String> array = this.f13669s;
            if (array.size > 0) {
                m20367b(array.removeIndex(0));
            } else {
                return;
            }
        }
    }

    public void hide() {
        UiManager.UiLayer[] uiLayerArr;
        if (this.f13666p) {
            this.f13672v.gameState.setGameSpeed(this.f13667q);
            for (final UiManager.UiLayer uiLayer : this.f13665k) {
                uiLayer.getTable().clearActions();
                uiLayer.getTable().addAction(Actions.sequence(Actions.alpha(0.0f, 0.3f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.StorylineMessages.2
                    @Override // java.lang.Runnable
                    public void run() {
                        uiLayer.getTable().setVisible(false);
                    }
                })));
            }
            this.f13666p = false;
        }
    }

    public void show() {
        UiManager.UiLayer[] uiLayerArr;
        if (!this.f13666p) {
            this.f13667q = this.f13672v.gameState.getGameSpeed();
            this.f13672v.gameState.setGameSpeed(0.0f);
            for (UiManager.UiLayer uiLayer : this.f13665k) {
                uiLayer.getTable().setVisible(true);
                uiLayer.getTable().clearActions();
                uiLayer.getTable().addAction(Actions.sequence(Actions.alpha(1.0f, 0.3f)));
            }
            this.f13666p = true;
        }
    }

    public StorylineMessages(GameSystemProvider gameSystemProvider) {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 113, "StorylineMessages main");
        this.f13662a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 114, "StorylineMessages overlay");
        this.f13663b = addLayer2;
        UiManager.UiLayer addLayer3 = Game.f8589i.uiManager.addLayer(mainUiLayer, 115, "StorylineMessages button");
        this.f13664d = addLayer3;
        UiManager.UiLayer[] uiLayerArr = {addLayer, addLayer2, addLayer3};
        this.f13665k = uiLayerArr;
        this.f13669s = new Array<>();
        this.f13670t = new Array<>();
        this.f13672v = gameSystemProvider;
        addLayer.getTable().setBackground(Game.f8589i.assetManager.getOverlayBackground());
        Group group = new Group();
        this.f13668r = group;
        group.setWidth(1060.0f);
        this.f13668r.setHeight(1.0f);
        addLayer.getTable().add((Table) this.f13668r).expand().bottom().left().padLeft(40.0f).padRight(40.0f).padBottom(160.0f);
        addLayer2.getTable().setTouchable(Touchable.enabled);
        addLayer2.getTable().addListener(new InputVoid());
        Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        Color color = Config.BACKGROUND_COLOR;
        image.setColor(color);
        addLayer2.getTable().add((Table) image).expand().fillX().height(760.0f).top().row();
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image2.setColor(color);
        addLayer2.getTable().add((Table) image2).expand().fillX().height(160.0f).bottom();
        Table table = new Table();
        addLayer3.getTable().add(table).expand().bottom().right().padBottom(40.0f);
        table.add((Table) new RightSideMenuButton(Game.f8589i.localeManager.i18n.get("continue"), "icon-triangle-right", new Runnable() { // from class: com.prineside.tdi2.ui.components.StorylineMessages.1
            @Override // java.lang.Runnable
            public void run() {
                StorylineMessages.this.m20366c();
            }
        }));
        for (UiManager.UiLayer uiLayer : uiLayerArr) {
            uiLayer.getTable().setVisible(false);
        }
    }

    public void add(String str) {
        flushQueue();
        m20367b(str);
        show();
    }
}
