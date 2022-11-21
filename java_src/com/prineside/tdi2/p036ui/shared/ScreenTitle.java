package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.UiManager;
/* renamed from: com.prineside.tdi2.ui.shared.ScreenTitle */
/* loaded from: classes2.dex */
public class ScreenTitle {

    /* renamed from: a */
    public final UiManager.UiLayer f14891a;

    /* renamed from: b */
    public final Image f14892b;

    /* renamed from: c */
    public final Label f14893c;

    public ScreenTitle setIcon(Drawable drawable) {
        this.f14892b.setDrawable(drawable);
        return this;
    }

    public ScreenTitle setText(CharSequence charSequence) {
        this.f14893c.setText(charSequence);
        return this;
    }

    public ScreenTitle setVisible(boolean z) {
        this.f14891a.getTable().setVisible(z);
        return this;
    }

    public ScreenTitle() {
        Label.LabelStyle labelStyle = new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), Color.WHITE);
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SHARED_COMPONENTS, 100, "ScreenTitle");
        this.f14891a = addLayer;
        Table table = addLayer.getTable();
        Group group = new Group();
        group.setTouchable(Touchable.disabled);
        table.add((Table) group).expand().top().left().size(300.0f, 64.0f).padTop(48.0f).padLeft(40.0f);
        Image image = new Image();
        this.f14892b = image;
        image.setSize(64.0f, 64.0f);
        group.addActor(image);
        Label label = new Label("", labelStyle);
        this.f14893c = label;
        label.setSize(204.0f, 64.0f);
        label.setPosition(96.0f, 0.0f);
        group.addActor(label);
        setVisible(false);
    }
}
