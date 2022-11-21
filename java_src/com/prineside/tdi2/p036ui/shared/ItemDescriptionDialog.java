package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.shared.ItemDescriptionDialog */
/* loaded from: classes2.dex */
public class ItemDescriptionDialog {

    /* renamed from: a */
    public final UiManager.UiLayer f14528a;

    /* renamed from: b */
    public Group f14529b;

    /* renamed from: c */
    public ItemCell f14530c;

    /* renamed from: d */
    public Table f14531d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m20099b() {
        this.f14528a.getTable().setVisible(false);
    }

    public void show(Item item) {
        show(item, 0);
    }

    public void hide() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        Game.f8589i.uiManager.darkOverlay.removeCaller("ItemDescriptionDialog");
        this.f14529b.clearActions();
        Group group = this.f14529b;
        DelayAction delay = Actions.delay(0.07f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingIn swingIn = Interpolation.swingIn;
        group.addAction(Actions.sequence(Actions.parallel(Actions.sequence(delay, Actions.scaleBy(0.0f, -this.f14529b.getScaleY(), f2, swingIn)), Actions.scaleBy(-this.f14529b.getScaleX(), 0.0f, f2, swingIn)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.n
            @Override // java.lang.Runnable
            public final void run() {
                ItemDescriptionDialog.this.m20099b();
            }
        })));
    }

    public void show(Item item, int i) {
        this.f14530c.setItem(item, i);
        this.f14531d.clear();
        CharSequence title = item.getTitle();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        this.f14531d.add((Table) new Label(title, new Label.LabelStyle(font, color))).top().left().width(650.0f).row();
        Label label = new Label(item.getDescription(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
        label.setColor(1.0f, 1.0f, 1.0f, 0.78f);
        label.setWrap(true);
        this.f14531d.add((Table) label).top().left().width(650.0f).row();
        this.f14528a.getTable().setVisible(true);
        Game.f8589i.uiManager.darkOverlay.addCaller("ItemDescriptionDialog", this.f14528a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.m
            @Override // java.lang.Runnable
            public final void run() {
                ItemDescriptionDialog.this.hide();
            }
        });
        float f = Game.f8589i.settingsManager.isUiAnimationsEnabled() ? 1.0f : 0.0f;
        this.f14529b.clearActions();
        Group group = this.f14529b;
        ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
        DelayAction delay = Actions.delay(0.1f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingOut swingOut = Interpolation.swingOut;
        group.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, f2, swingOut)), Actions.scaleBy(0.0f, 1.0f, f2, swingOut))));
    }

    public ItemDescriptionDialog() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, "ItemDescriptionDialog main");
        this.f14528a = addLayer;
        Group group = new Group();
        this.f14529b = group;
        group.setOrigin(487.5f, 118.5f);
        addLayer.getTable().add((Table) this.f14529b).size(975.0f, 237.0f);
        this.f14529b.addActor(new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{6.0f, 19.0f, 6.0f, 220.0f, 966.0f, 231.0f, 975.0f, 0.0f}));
        this.f14529b.addActor(new QuadActor(MaterialColor.BLUE_GREY.P800, new float[]{0.0f, 25.0f, 0.0f, 226.0f, 960.0f, 237.0f, 960.0f, 15.0f}));
        ItemCell itemCell = new ItemCell();
        this.f14530c = itemCell;
        itemCell.setPosition(40.0f, 56.0f);
        this.f14529b.addActor(this.f14530c);
        Table table = new Table();
        this.f14531d = table;
        table.setPosition(210.0f, 56.0f);
        this.f14531d.setSize(650.0f, 140.0f);
        this.f14529b.addActor(this.f14531d);
        addLayer.getTable().setVisible(false);
    }
}
