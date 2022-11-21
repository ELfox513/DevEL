package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.managers.UiManager;
/* renamed from: com.prineside.tdi2.ui.components.DraggingItemHelper */
/* loaded from: classes2.dex */
public class DraggingItemHelper implements Disposable {
    public static final float ICON_SIZE = 128.0f;

    /* renamed from: a */
    public final UiManager.UiLayer f12960a;

    /* renamed from: b */
    public Group f12961b;

    /* renamed from: d */
    public float f12962d;

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f12960a);
    }

    public void hide() {
        this.f12961b.setVisible(false);
    }

    public void setPosition(float f, float f2) {
        this.f12961b.setPosition(f - 64.0f, f2 - 64.0f);
    }

    public void setScale(float f) {
        setScale(f, false);
    }

    public void setScale(float f, boolean z) {
        if (this.f12962d != f) {
            this.f12961b.clearActions();
            if (z) {
                this.f12961b.addAction(Actions.scaleTo(f, f));
            } else {
                this.f12961b.addAction(Actions.scaleTo(f, f, 0.2f));
            }
            this.f12962d = f;
        }
    }

    public void show(Item item) {
        this.f12961b.setVisible(true);
        this.f12961b.clearChildren();
        this.f12961b.addActor(item.generateIcon(128.0f, true));
        Group group = this.f12961b;
        float f = this.f12962d;
        group.addAction(Actions.scaleTo(f, f));
    }

    public DraggingItemHelper() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 113, "DraggingItemHelper", true);
        this.f12960a = addLayer;
        this.f12962d = 1.0f;
        Group group = new Group();
        group.setTransform(false);
        group.setTouchable(Touchable.disabled);
        addLayer.getTable().add((Table) group).expand().bottom().left().size(100.0f);
        Group group2 = new Group();
        this.f12961b = group2;
        group2.setTransform(true);
        this.f12961b.setSize(128.0f, 128.0f);
        this.f12961b.setOrigin(64.0f, 64.0f);
        group.addActor(this.f12961b);
        this.f12961b.setVisible(false);
    }
}
