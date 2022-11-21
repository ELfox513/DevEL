package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.shared.LoadingOverlay */
/* loaded from: classes2.dex */
public class LoadingOverlay {

    /* renamed from: i */
    public static final StringBuffer f14658i = new StringBuffer();

    /* renamed from: a */
    public final UiManager.UiLayer f14659a;

    /* renamed from: b */
    public final UiManager.UiLayer f14660b;

    /* renamed from: c */
    public final Label f14661c;

    /* renamed from: d */
    public final Label f14662d;

    /* renamed from: e */
    public final Image f14663e;

    /* renamed from: f */
    public final Image f14664f;

    /* renamed from: g */
    public final Image f14665g;

    /* renamed from: h */
    public boolean f14666h;

    public void show() {
        if (this.f14666h) {
            return;
        }
        StringBuffer stringBuffer = f14658i;
        stringBuffer.setLength(0);
        stringBuffer.append(Game.f8589i.localeManager.i18n.get("loading"));
        stringBuffer.append("...");
        this.f14661c.setText(stringBuffer);
        this.f14663e.clearActions();
        this.f14663e.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
        this.f14659a.getTable().setVisible(true);
        this.f14660b.getTable().setVisible(true);
        this.f14666h = true;
    }

    public void hide() {
        if (this.f14666h) {
            this.f14659a.getTable().setVisible(false);
            this.f14660b.getTable().setVisible(false);
            this.f14664f.setVisible(false);
            this.f14665g.setVisible(false);
            this.f14662d.setVisible(false);
            this.f14666h = false;
        }
    }

    public LoadingOverlay() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.OVERLAY;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 150, "LoadingOverlay overlay", true);
        this.f14659a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 151, "LoadingOverlay main");
        this.f14660b = addLayer2;
        Image image = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        image.setColor(Config.BACKGROUND_COLOR);
        image.setTouchable(Touchable.enabled);
        addLayer.getTable().add((Table) image).expand().fill();
        Group group = new Group();
        addLayer2.getTable().add((Table) group).expand().bottom().left().size(320.0f, 64.0f).padLeft(40.0f).padBottom(40.0f);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        this.f14663e = image2;
        image2.setOrigin(1);
        group.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f14664f = image3;
        image3.setColor(0.0f, 0.0f, 0.0f, 0.56f);
        image3.setPosition(0.0f, -16.0f);
        image3.setSize(320.0f, 5.0f);
        group.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f14665g = image4;
        image4.setColor(MaterialColor.CYAN.P500);
        image4.setPosition(0.0f, -16.0f);
        group.addActor(image4);
        Label label = new Label("Loading...", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14661c = label;
        label.setPosition(80.0f, 8.0f);
        label.setSize(200.0f, 64.0f);
        group.addActor(label);
        Label label2 = new Label("Tip", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE));
        this.f14662d = label2;
        label2.setPosition(80.0f, -24.0f);
        label2.setSize(200.0f, 64.0f);
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group.addActor(label2);
        this.f14666h = true;
        hide();
    }

    public void show(float f, CharSequence charSequence) {
        show();
        this.f14664f.setVisible(true);
        this.f14665g.setVisible(true);
        this.f14665g.setSize(f * 320.0f, 5.0f);
        this.f14662d.setVisible(true);
        this.f14662d.setText(charSequence);
    }
}
