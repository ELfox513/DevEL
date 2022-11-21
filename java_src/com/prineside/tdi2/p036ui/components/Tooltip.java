package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.QuadActor;
/* renamed from: com.prineside.tdi2.ui.components.Tooltip */
/* loaded from: classes2.dex */
public class Tooltip implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13706a;

    /* renamed from: b */
    public final Label f13707b;

    /* renamed from: d */
    public final Group f13708d;

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13706a);
    }

    public Tooltip() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 106, "Tooltip");
        this.f13706a = addLayer;
        Group group = new Group();
        this.f13708d = group;
        group.setOrigin(240.0f, 48.0f);
        addLayer.getTable().add((Table) group).size(480.0f, 96.0f).expand().top().padTop(175.0f);
        group.addActor(new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.56f), new float[]{16.0f, 0.0f, 0.0f, 96.0f, 480.0f, 96.0f, 464.0f, 0.0f}));
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f13707b = label;
        label.setSize(440.0f, 96.0f);
        label.setAlignment(1);
        label.setWrap(true);
        group.addActor(label);
        group.addAction(Actions.alpha(0.0f));
        group.setVisible(false);
    }

    public void show(CharSequence charSequence) {
        if (charSequence.length() > 30) {
            this.f13707b.setStyle(Game.f8589i.assetManager.getLabelStyle(24));
        } else {
            this.f13707b.setStyle(Game.f8589i.assetManager.getLabelStyle(30));
        }
        this.f13707b.setText(charSequence);
        this.f13708d.clearActions();
        this.f13708d.addAction(Actions.sequence(Actions.show(), Actions.parallel(Actions.sequence(Actions.scaleTo(1.1f, 1.1f, 0.1f), Actions.scaleTo(1.0f, 1.0f, 0.1f)), Actions.alpha(1.0f, 0.3f)), Actions.delay(3.5f), Actions.alpha(0.0f, 0.3f), Actions.hide()));
    }
}
