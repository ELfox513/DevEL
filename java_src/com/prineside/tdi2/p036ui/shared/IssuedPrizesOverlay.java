package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.prineside.tdi2.ui.shared.IssuedPrizesOverlay */
/* loaded from: classes2.dex */
public class IssuedPrizesOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14381a;

    /* renamed from: b */
    public Table f14382b;

    /* renamed from: c */
    public ScrollPane f14383c;

    /* renamed from: d */
    public Label f14384d;

    /* renamed from: e */
    public Label f14385e;

    /* renamed from: f */
    public Label f14386f;

    /* renamed from: g */
    public Actor f14387g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m20107b() {
        this.f14381a.getTable().setVisible(false);
    }

    public IssuedPrizesOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 151, "IssuedPrizes main");
        this.f14381a = addLayer;
        Table table = new Table();
        Touchable touchable = Touchable.childrenOnly;
        table.setTouchable(touchable);
        ScrollPane scrollPane = new ScrollPane(table);
        this.f14383c = scrollPane;
        scrollPane.setTransform(true);
        this.f14383c.setOrigin(607.0f, Game.f8589i.settingsManager.getScaledViewportHeight() / 2.0f);
        this.f14383c.setTouchable(touchable);
        addLayer.getTable().add((Table) this.f14383c).width(1214.0f).expandY().fillY();
        Group group = new Group();
        group.setTransform(false);
        QuadActor quadActor = new QuadActor(new Color(555819519), new float[]{0.0f, 0.0f, 0.0f, 110.0f, 1060.0f, 95.0f, 1060.0f, 0.0f});
        quadActor.setSize(1160.0f, 110.0f);
        group.addActor(quadActor);
        table.add((Table) group).height(110.0f).padTop(160.0f).padLeft(26.0f).padRight(26.0f).width(1160.0f).row();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f14384d = label;
        label.setSize(1000.0f, 26.0f);
        this.f14384d.setPosition(40.0f, 26.0f);
        this.f14384d.setAlignment(12);
        group.addActor(this.f14384d);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f14385e = label2;
        label2.setPosition(40.0f, 26.0f);
        this.f14385e.setSize(1080.0f, 26.0f);
        this.f14385e.setAlignment(20);
        this.f14385e.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group.addActor(this.f14385e);
        Table table2 = new Table();
        this.f14382b = table2;
        table.add(table2).expandX().fillX().row();
        Group group2 = new Group();
        group2.setTransform(false);
        QuadActor quadActor2 = new QuadActor(new Color(555819519), new float[]{0.0f, 0.0f, 0.0f, 30.0f, 1060.0f, 30.0f, 1060.0f, 15.0f});
        quadActor2.setSize(1160.0f, 30.0f);
        group2.addActor(quadActor2);
        Label label3 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f14386f = label3;
        label3.addAction(Actions.forever(Actions.sequence(Actions.color(color, 0.4f), Actions.color(new Color(1.0f, 1.0f, 1.0f, 0.56f), 0.8f), Actions.delay(0.5f))));
        this.f14386f.setTouchable(Touchable.disabled);
        this.f14386f.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14386f.setSize(1160.0f, 20.0f);
        this.f14386f.setPosition(0.0f, -60.0f);
        this.f14386f.setAlignment(1);
        group2.addActor(this.f14386f);
        table.add((Table) group2).height(30.0f).padBottom(160.0f).padLeft(26.0f).padRight(26.0f).width(1160.0f).row();
        addLayer.getTable().setVisible(false);
    }

    public void hide() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        Game.f8589i.uiManager.darkOverlay.removeCaller("IssuedPrizesOverlay");
        this.f14383c.clearActions();
        ScrollPane scrollPane = this.f14383c;
        DelayAction delay = Actions.delay(0.07f * f);
        float f2 = f * 0.3f;
        Interpolation.SwingIn swingIn = Interpolation.swingIn;
        scrollPane.addAction(Actions.sequence(Actions.parallel(Actions.sequence(delay, Actions.scaleBy(0.0f, -this.f14383c.getScaleY(), f2, swingIn)), Actions.scaleBy(-this.f14383c.getScaleX(), 0.0f, f2, swingIn)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.j
            @Override // java.lang.Runnable
            public final void run() {
                IssuedPrizesOverlay.this.m20107b();
            }
        })));
        Actor actor = this.f14387g;
        if (actor == null || actor.getStage() != null) {
            Game.f8589i.uiManager.stage.setScrollFocus(this.f14387g);
            this.f14387g = null;
        }
    }

    public void show(Array<IssuedItems> array) {
        float f;
        IssuedItems issuedItems;
        float f2;
        float f3;
        final Group group;
        if (array.size == 0) {
            return;
        }
        this.f14384d.setText(Game.f8589i.localeManager.i18n.get("earned_items").toUpperCase());
        this.f14385e.setText(Game.f8589i.localeManager.i18n.get("tap_icons_for_more_info"));
        this.f14386f.setText(Game.f8589i.localeManager.i18n.get("tap_outside_list_to_hide"));
        this.f14382b.clear();
        Label.LabelStyle labelStyle = Game.f8589i.assetManager.getLabelStyle(24);
        float f4 = 0.0f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        boolean z = false;
        int i = 0;
        float f5 = 0.0f;
        while (i < array.size) {
            try {
                issuedItems = array.get(i);
                int ceil = MathUtils.ceil(issuedItems.items.size / 8.0f);
                Group group2 = new Group();
                group2.setTransform(z);
                f2 = ceil * 142.0f;
                f3 = 127.0f + f2;
                this.f14382b.add((Table) group2).size(1212.0f, f3).padTop(-12.0f).row();
                Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image.setColor(new Color(555819519));
                image.setSize(1160.0f, f3 - 12.0f);
                image.setPosition(26.0f, f4);
                group2.addActor(image);
                group = new Group();
                group.setTransform(true);
                group.setSize(1212.0f, f3);
                group2.addActor(group);
                if (i % 2 == 0) {
                    group.setOrigin(f4, f3 / 2.0f);
                } else {
                    group.setOrigin(1212.0f, f3 / 2.0f);
                }
                f5 += StrictMath.max(0.2f - (i * 0.02f), f4);
            } catch (Exception e) {
                e = e;
            }
            try {
                group.addAction(Actions.sequence(Actions.scaleTo(f4, 1.0f), Actions.delay(f5 * f), Actions.scaleTo(1.0f, 1.0f, f * 0.3f, Interpolation.exp5Out), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.IssuedPrizesOverlay.1
                    @Override // java.lang.Runnable
                    public void run() {
                        group.setTransform(false);
                    }
                })));
                if (i % 2 == 0) {
                    QuadActor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{26.0f, 19.0f, 26.0f, 60.0f, 1186.0f, 85.0f, 1186.0f, 0.0f});
                    quadActor.setSize(1186.0f, 85.0f);
                    group.addActor(quadActor);
                    QuadActor quadActor2 = new QuadActor(new Color(791621631), new float[]{6.0f, 26.0f, 0.0f, f3 - 13.0f, 1212.0f, f3, 1206.0f, 13.0f});
                    quadActor2.setSize(1212.0f, f3);
                    group.addActor(quadActor2);
                } else {
                    Color color = new Color(0.0f, 0.0f, 0.0f, 0.28f);
                    float[] fArr = new float[8];
                    try {
                        fArr[0] = 26.0f;
                        fArr[1] = 0.0f;
                        fArr[2] = 26.0f;
                        fArr[3] = 60.0f;
                        fArr[4] = 1186.0f;
                        fArr[5] = 60.0f;
                        fArr[6] = 1186.0f;
                        fArr[7] = 18.0f;
                        QuadActor quadActor3 = new QuadActor(color, fArr);
                        quadActor3.setSize(1186.0f, 60.0f);
                        group.addActor(quadActor3);
                        Color color2 = new Color(791621631);
                        float[] fArr2 = new float[8];
                        fArr2[0] = 6.0f;
                        fArr2[1] = 12.0f;
                        fArr2[2] = 0.0f;
                        fArr2[3] = f3;
                        fArr2[4] = 1212.0f;
                        fArr2[5] = f3 - 13.0f;
                        fArr2[6] = 1206.0f;
                        fArr2[7] = 25.0f;
                        QuadActor quadActor4 = new QuadActor(color2, fArr2);
                        quadActor4.setSize(1212.0f, f3);
                        group.addActor(quadActor4);
                    } catch (Exception e2) {
                        e = e2;
                        Logger.error("IssuedPrizesOverlay", "Can't add earnings row", e);
                        i++;
                        f4 = 0.0f;
                        z = false;
                    }
                }
                Label label = new Label(issuedItems.getReasonDescription(), labelStyle);
                float f6 = f3 - 59.0f;
                label.setPosition(66.0f, f6);
                label.setSize(300.0f, 18.0f);
                group.addActor(label);
                try {
                    Label label2 = new Label(new SimpleDateFormat("MMMM dd, HH:mm", Game.f8589i.localeManager.i18n.getLocale()).format(new Date(issuedItems.issueTimestamp * 1000)), labelStyle);
                    label2.setAlignment(16);
                    label2.setPosition(0.0f, f6);
                    label2.setSize(1146.0f, 18.0f);
                    group.addActor(label2);
                    Table table = new Table();
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        Array<ItemStack> array2 = issuedItems.items;
                        if (i2 >= array2.size) {
                            break;
                        }
                        final ItemStack itemStack = array2.get(i2);
                        ItemCell itemCell = new ItemCell();
                        itemCell.setColRow(i4, i3);
                        itemCell.setItem(itemStack);
                        IssuedItems issuedItems2 = issuedItems;
                        itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.IssuedPrizesOverlay.2
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                            public void clicked(InputEvent inputEvent, float f7, float f8) {
                                Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem(), itemStack.getCount());
                                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                            }
                        });
                        Cell add = table.add((Table) itemCell);
                        i4++;
                        if (i4 == 8) {
                            i3++;
                            table.add().height(1.0f).fillX().expandX();
                            add.row();
                            i4 = 0;
                        }
                        i2++;
                        issuedItems = issuedItems2;
                    }
                    if (i3 == 0) {
                        table.add().height(1.0f).fillX().expandX();
                    }
                    table.setPosition(66.0f, 50.0f);
                    table.setSize(1146.0f, f2);
                    group.addActor(table);
                    f5 = f5;
                } catch (Exception e3) {
                    e = e3;
                    f5 = f5;
                    Logger.error("IssuedPrizesOverlay", "Can't add earnings row", e);
                    i++;
                    f4 = 0.0f;
                    z = false;
                }
            } catch (Exception e4) {
                e = e4;
                Logger.error("IssuedPrizesOverlay", "Can't add earnings row", e);
                i++;
                f4 = 0.0f;
                z = false;
            }
            i++;
            f4 = 0.0f;
            z = false;
        }
        this.f14381a.getTable().setVisible(true);
        Game.f8589i.uiManager.darkOverlay.addCaller("IssuedPrizesOverlay", this.f14381a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.i
            @Override // java.lang.Runnable
            public final void run() {
                IssuedPrizesOverlay.this.hide();
            }
        });
        this.f14383c.clearActions();
        ScrollPane scrollPane = this.f14383c;
        ScaleToAction scaleTo = Actions.scaleTo(0.0f, 0.0f);
        DelayAction delay = Actions.delay(0.1f * f);
        float f7 = f * 0.3f;
        Interpolation.SwingOut swingOut = Interpolation.swingOut;
        scrollPane.addAction(Actions.sequence(scaleTo, Actions.parallel(Actions.sequence(delay, Actions.scaleBy(1.0f, 0.0f, f7, swingOut)), Actions.scaleBy(0.0f, 1.0f, f7, swingOut))));
        if (Game.f8589i.uiManager.stage.getScrollFocus() != this.f14383c) {
            this.f14387g = Game.f8589i.uiManager.stage.getScrollFocus();
            Game.f8589i.uiManager.stage.setScrollFocus(this.f14383c);
        }
    }
}
