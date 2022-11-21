package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.OpenedPackOverlay */
/* loaded from: classes2.dex */
public class OpenedPackOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14810a;

    /* renamed from: b */
    public final Group f14811b;

    /* renamed from: c */
    public final Group f14812c;

    /* renamed from: d */
    public final Table f14813d;

    /* renamed from: e */
    public final ScrollPane f14814e;

    /* renamed from: f */
    public boolean f14815f;

    /* renamed from: g */
    public long f14816g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m19912f() {
        this.f14812c.setTouchable(Touchable.childrenOnly);
    }

    public void hide() {
        Game.f8589i.uiManager.darkOverlay.removeCaller("OpenedPackOverlay");
        UiUtils.bouncyHideOverlay(null, this.f14810a.getTable(), this.f14812c);
        this.f14815f = false;
        this.f14813d.clear();
    }

    public void show(Array<ItemStack> array, boolean z) {
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight();
        float f = 0.5f * scaledViewportHeight;
        this.f14811b.setOrigin(640.0f, f);
        this.f14810a.getTable().clear();
        this.f14810a.getTable().add((Table) this.f14811b).size(1280.0f, scaledViewportHeight);
        this.f14812c.setSize(1280.0f, scaledViewportHeight);
        this.f14812c.setOrigin(640.0f, f);
        this.f14813d.setSize(1280.0f, scaledViewportHeight);
        this.f14814e.setSize(1280.0f, scaledViewportHeight);
        boolean z2 = true;
        this.f14815f = true;
        this.f14816g = Game.getTimestampMillis();
        this.f14813d.clear();
        this.f14813d.add().width(1.0f).height(40.0f).row();
        if (z) {
            Table table = new Table();
            this.f14813d.add(table).width(1.0f).padBottom(16.0f).colspan(10).row();
            Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-cubes-stacked-tall"));
            Color color = MaterialColor.LIGHT_GREEN.P500;
            image.setColor(color);
            table.add((Table) image).size(48.0f);
            Label label = new Label(Game.f8589i.localeManager.i18n.get("items_were_stacked_hint"), Game.f8589i.assetManager.getLabelStyle(30));
            label.setColor(color);
            label.setTouchable(Touchable.disabled);
            label.setAlignment(1);
            table.add((Table) label).height(48.0f).padLeft(16.0f);
        }
        float f2 = 0.1f;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < array.size) {
            final ItemStack itemStack = array.get(i);
            final ItemCell itemCell = new ItemCell();
            itemCell.setItem(itemStack);
            itemCell.setColRow(i2, i3);
            itemCell.setCovered(z2);
            itemCell.addAction(Actions.sequence(Actions.delay(f2), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.OpenedPackOverlay.1
                @Override // java.lang.Runnable
                public void run() {
                    itemCell.reveal();
                }
            }), Actions.delay(0.3f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.m1
                @Override // java.lang.Runnable
                public final void run() {
                    OpenedPackOverlay.m19914d(ItemCell.this);
                }
            })));
            itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.OpenedPackOverlay.2
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f3, float f4) {
                    Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem(), itemStack.getCount());
                }
            });
            float f3 = 0.05f;
            float f4 = 0.3f - (i4 * 0.05f);
            if (f4 >= 0.05f) {
                f3 = f4;
            }
            f2 += f3;
            i4++;
            this.f14813d.add((Table) itemCell);
            i2++;
            if (i2 == 10) {
                i3++;
                this.f14813d.row();
                i2 = 0;
            }
            i++;
            z2 = true;
        }
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tap_outside_list_to_hide"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label2.setTouchable(Touchable.disabled);
        label2.setAlignment(1);
        this.f14813d.row();
        this.f14813d.add((Table) label2).width(1.0f).padTop(16.0f).colspan(10);
        label2.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.delay(0.75f), Actions.fadeIn(0.3f)));
        Game.f8589i.uiManager.darkOverlay.addCaller("OpenedPackOverlay", this.f14810a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.n1
            @Override // java.lang.Runnable
            public final void run() {
                OpenedPackOverlay.this.m19913e();
            }
        });
        UiUtils.bouncyShowOverlay(null, this.f14810a.getTable(), this.f14812c, new Runnable() { // from class: com.prineside.tdi2.ui.shared.o1
            @Override // java.lang.Runnable
            public final void run() {
                OpenedPackOverlay.this.m19912f();
            }
        });
        this.f14813d.row();
        this.f14813d.add().width(1.0f).height(40.0f);
    }

    public OpenedPackOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 194, "OpenedPackOverlay main");
        this.f14810a = addLayer;
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight();
        Group group = new Group();
        this.f14811b = group;
        group.setName("OpenedPackOverlay mainContainerWrap");
        group.setTransform(false);
        Touchable touchable = Touchable.childrenOnly;
        group.setTouchable(touchable);
        float f = 0.5f * scaledViewportHeight;
        group.setOrigin(640.0f, f);
        addLayer.getTable().add((Table) group).size(1280.0f, scaledViewportHeight);
        Group group2 = new Group();
        this.f14812c = group2;
        group2.setName("OpenedPackOverlay mainContainer");
        group2.setTransform(false);
        group2.setSize(1280.0f, scaledViewportHeight);
        group2.setOrigin(640.0f, f);
        group2.setTouchable(touchable);
        group.addActor(group2);
        Table table = new Table();
        this.f14813d = table;
        table.setName("OpenedPackOverlay cells");
        table.setSize(1280.0f, scaledViewportHeight);
        table.setTouchable(touchable);
        ScrollPane scrollPane = new ScrollPane(table, Game.f8589i.assetManager.getScrollPaneStyle(0.0f));
        this.f14814e = scrollPane;
        scrollPane.setName("OpenedPackOverlay scrollPane");
        scrollPane.setSize(1280.0f, scaledViewportHeight);
        scrollPane.setTouchable(touchable);
        scrollPane.setScrollingDisabled(true, false);
        group2.addActor(scrollPane);
        this.f14815f = true;
        hide();
    }

    /* renamed from: d */
    public static /* synthetic */ void m19914d(ItemCell itemCell) {
        if (itemCell.getItem().getRarity().ordinal() >= RarityType.LEGENDARY.ordinal()) {
            itemCell.showRays(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m19913e() {
        if (Game.getTimestampMillis() - this.f14816g > 500) {
            hide();
        } else {
            Game.f8589i.uiManager.darkOverlay.cancelCurrentClick();
        }
    }
}
