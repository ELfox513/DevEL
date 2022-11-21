package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay */
/* loaded from: classes2.dex */
public class ItemCountSelectionOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14392a;

    /* renamed from: b */
    public Group f14393b;

    /* renamed from: c */
    public Table f14394c;

    /* renamed from: d */
    public ItemCell f14395d;

    /* renamed from: e */
    public Label f14396e;

    /* renamed from: f */
    public ComplexButton f14397f;

    /* renamed from: g */
    public Image f14398g;

    /* renamed from: h */
    public ComplexButton f14399h;

    /* renamed from: i */
    public ComplexButton f14400i;

    /* renamed from: j */
    public ComplexButton f14401j;

    /* renamed from: k */
    public ComplexButton f14402k;

    /* renamed from: l */
    public Group f14403l;

    /* renamed from: m */
    public int f14404m;

    /* renamed from: n */
    public int f14405n;

    /* renamed from: o */
    public int f14406o;

    /* renamed from: p */
    public ItemCountSelectionListener f14407p;

    /* renamed from: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay$ItemCountSelectionListener */
    /* loaded from: classes2.dex */
    public interface ItemCountSelectionListener {
        void countChanged(int i);

        void selectionCanceled();

        void selectionConfirmed(int i);
    }

    public Table getInfoContainer() {
        return this.f14394c;
    }

    public int getMaxCount() {
        return this.f14405n;
    }

    public int getMinCount() {
        return this.f14404m;
    }

    public int getSelectedCount() {
        return this.f14406o;
    }

    public void hide() {
        this.f14407p = null;
        this.f14394c.clear();
        UiUtils.bouncyHideOverlay(null, this.f14392a.getTable(), this.f14393b);
        Game.f8589i.uiManager.darkOverlay.removeCaller("ItemCountSelectionOverlay");
    }

    public void setConfirmButtonEnabled(boolean z) {
        this.f14402k.setEnabled(z);
    }

    public void show(CharSequence charSequence, int i, int i2, Item item, ItemCountSelectionListener itemCountSelectionListener) {
        setConfirmButtonEnabled(true);
        this.f14395d.setItem(item, 0);
        this.f14396e.setText(charSequence);
        this.f14406o = i;
        setMinMaxCount(i, i2);
        Game.f8589i.uiManager.darkOverlay.addCaller("ItemCountSelectionOverlay", this.f14392a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.k
            @Override // java.lang.Runnable
            public final void run() {
                ItemCountSelectionOverlay.this.hide();
            }
        });
        UiUtils.bouncyShowOverlay(null, this.f14392a.getTable(), this.f14393b);
        m20102e();
        this.f14407p = itemCountSelectionListener;
    }

    public ItemCountSelectionOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 292, "ItemCountSelectionOverlay main");
        this.f14392a = addLayer;
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(400.0f, 142.0f);
        addLayer.getTable().add().expand().fill().row();
        addLayer.getTable().add((Table) group).size(800.0f, 284.0f).padBottom(128.0f);
        Group group2 = new Group();
        this.f14393b = group2;
        group2.setTransform(false);
        this.f14393b.setSize(800.0f, 284.0f);
        this.f14393b.setOrigin(400.0f, 142.0f);
        group.addActor(this.f14393b);
        QuadActor quadActor = new QuadActor(new Color(72), new float[]{9.0f, 0.0f, 0.0f, 284.0f, 800.0f, 275.0f, 793.0f, 7.0f});
        quadActor.setPosition(10.0f, -10.0f);
        this.f14393b.addActor(quadActor);
        this.f14393b.addActor(new QuadActor(new Color(791621631), new float[]{9.0f, 0.0f, 0.0f, 284.0f, 800.0f, 275.0f, 793.0f, 7.0f}));
        ItemCell itemCell = new ItemCell();
        this.f14395d = itemCell;
        itemCell.setPosition(31.0f, 114.0f);
        this.f14393b.addActor(this.f14395d);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14396e = label;
        label.setPosition(190.0f, 212.0f);
        this.f14396e.setSize(100.0f, 25.0f);
        this.f14396e.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14393b.addActor(this.f14396e);
        Group group3 = new Group();
        this.f14403l = group3;
        group3.setTransform(false);
        this.f14403l.setPosition(160.0f, 141.0f);
        this.f14403l.setSize(620.0f, 72.0f);
        this.f14403l.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                m20101a(f);
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
                m20101a(f);
            }

            /* renamed from: a */
            public final void m20101a(float f) {
                float f2 = (f - 30.0f) / 560.0f;
                if (f2 <= 0.0f) {
                    ItemCountSelectionOverlay itemCountSelectionOverlay = ItemCountSelectionOverlay.this;
                    itemCountSelectionOverlay.setSelectedCount(itemCountSelectionOverlay.f14404m);
                } else if (f2 >= 1.0f) {
                    ItemCountSelectionOverlay itemCountSelectionOverlay2 = ItemCountSelectionOverlay.this;
                    itemCountSelectionOverlay2.setSelectedCount(itemCountSelectionOverlay2.f14405n);
                } else {
                    int round = MathUtils.round((f2 * (ItemCountSelectionOverlay.this.f14405n - ItemCountSelectionOverlay.this.f14404m)) + ItemCountSelectionOverlay.this.f14404m);
                    if (round > 10000) {
                        round = MathUtils.round(round / 50.0f) * 50;
                    } else if (round > 1000) {
                        round = MathUtils.round(round / 10.0f) * 10;
                    }
                    ItemCountSelectionOverlay.this.setSelectedCount(round);
                }
            }
        });
        this.f14393b.addActor(this.f14403l);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(560.0f, 12.0f);
        image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        image.setPosition(30.0f, 30.0f);
        this.f14403l.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-item-count-selector-scroll-button"));
        this.f14398g = image2;
        image2.setSize(41.0f, 25.0f);
        this.f14403l.addActor(this.f14398g);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(36), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.2
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.getTextInput(new Input.TextInputListener() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.2.1
                    @Override // com.badlogic.gdx.Input.TextInputListener
                    public void canceled() {
                    }

                    @Override // com.badlogic.gdx.Input.TextInputListener
                    public void input(String str) {
                        try {
                            ItemCountSelectionOverlay.this.setSelectedCount(Integer.valueOf(str).intValue());
                        } catch (Exception e) {
                            Logger.error("ItemCountSelectionOverlay", "invalid value", e);
                        }
                    }
                }, ItemCountSelectionOverlay.this.f14404m + " <=> " + ItemCountSelectionOverlay.this.f14405n, ItemCountSelectionOverlay.this.f14406o + "", "");
            }
        });
        this.f14397f = complexButton;
        complexButton.setLabel(0.0f, 0.0f, 156.0f, 40.0f, 16);
        this.f14397f.setSize(156.0f, 40.0f);
        this.f14397f.setPosition(594.0f, 208.0f);
        ComplexButton complexButton2 = this.f14397f;
        Color color = MaterialColor.LIGHT_BLUE.P500;
        Color color2 = MaterialColor.LIGHT_BLUE.P400;
        Color color3 = MaterialColor.LIGHT_BLUE.P600;
        complexButton2.setLabelColors(color, color2, color3, Color.GRAY);
        this.f14393b.addActor(this.f14397f);
        ComplexButton complexButton3 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(36), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                ItemCountSelectionOverlay itemCountSelectionOverlay = ItemCountSelectionOverlay.this;
                itemCountSelectionOverlay.setSelectedCount(itemCountSelectionOverlay.f14406o - 1);
            }
        });
        complexButton3.setBackground(Game.f8589i.assetManager.getDrawable("ui-item-count-selector-minus-button"), 0.0f, 0.0f, 48.0f, 53.0f);
        complexButton3.setSize(48.0f, 53.0f);
        Color color4 = MaterialColor.BLUE_GREY.P700;
        Color color5 = MaterialColor.BLUE_GREY.P800;
        Color color6 = MaterialColor.BLUE_GREY.P600;
        Color color7 = MaterialColor.GREY.P700;
        complexButton3.setBackgroundColors(color4, color5, color6, color7);
        complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-minus"), 9.0f, 13.0f, 32.0f, 32.0f);
        complexButton3.setPosition(766.0f, 149.0f);
        this.f14393b.addActor(complexButton3);
        ComplexButton complexButton4 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(36), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.4
            @Override // java.lang.Runnable
            public void run() {
                ItemCountSelectionOverlay itemCountSelectionOverlay = ItemCountSelectionOverlay.this;
                itemCountSelectionOverlay.setSelectedCount(itemCountSelectionOverlay.f14406o + 1);
            }
        });
        complexButton4.setBackground(Game.f8589i.assetManager.getDrawable("ui-item-count-selector-plus-button"), 0.0f, 0.0f, 51.0f, 57.0f);
        complexButton4.setSize(51.0f, 57.0f);
        complexButton4.setBackgroundColors(color4, color5, color6, color7);
        complexButton4.setIcon(Game.f8589i.assetManager.getDrawable("icon-plus"), 10.0f, 17.0f, 32.0f, 32.0f);
        complexButton4.setPosition(768.0f, 202.0f);
        this.f14393b.addActor(complexButton4);
        ComplexButton complexButton5 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.5
            @Override // java.lang.Runnable
            public void run() {
                ItemCountSelectionOverlay itemCountSelectionOverlay = ItemCountSelectionOverlay.this;
                itemCountSelectionOverlay.setSelectedCount(itemCountSelectionOverlay.f14404m);
            }
        });
        this.f14399h = complexButton5;
        complexButton5.setPosition(160.0f, 121.0f);
        this.f14399h.setLabel(32.0f, 16.0f, 50.0f, 18.0f, 8);
        this.f14399h.setSize(60.0f, 40.0f);
        this.f14399h.setLabelColors(color, color2, color3, color7);
        this.f14393b.addActor(this.f14399h);
        ComplexButton complexButton6 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.6
            @Override // java.lang.Runnable
            public void run() {
                ItemCountSelectionOverlay itemCountSelectionOverlay = ItemCountSelectionOverlay.this;
                itemCountSelectionOverlay.setSelectedCount(itemCountSelectionOverlay.f14405n);
            }
        });
        this.f14400i = complexButton6;
        complexButton6.setPosition(654.0f, 121.0f);
        this.f14400i.setLabel(0.0f, 16.0f, 96.0f, 18.0f, 16);
        this.f14400i.setSize(96.0f, 40.0f);
        this.f14400i.setLabelColors(color, color2, color3, color7);
        this.f14393b.addActor(this.f14400i);
        ComplexButton complexButton7 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.7
            @Override // java.lang.Runnable
            public void run() {
                ItemCountSelectionOverlay itemCountSelectionOverlay = ItemCountSelectionOverlay.this;
                itemCountSelectionOverlay.setSelectedCount(((itemCountSelectionOverlay.f14405n - ItemCountSelectionOverlay.this.f14404m) / 2) + ItemCountSelectionOverlay.this.f14404m);
            }
        });
        this.f14401j = complexButton7;
        complexButton7.setPosition(423.0f, 121.0f);
        this.f14401j.setLabel(0.0f, 16.0f, 96.0f, 18.0f, 1);
        this.f14401j.setSize(96.0f, 40.0f);
        this.f14401j.setLabelColors(color, color2, color3, color7);
        this.f14393b.addActor(this.f14401j);
        Table table = new Table();
        this.f14394c = table;
        table.setSize(470.0f, 80.0f);
        this.f14394c.setPosition(35.0f, 25.0f);
        this.f14393b.addActor(this.f14394c);
        ComplexButton complexButton8 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(36), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.8
            @Override // java.lang.Runnable
            public void run() {
                if (ItemCountSelectionOverlay.this.f14407p != null) {
                    ItemCountSelectionOverlay.this.f14407p.selectionConfirmed(ItemCountSelectionOverlay.this.f14406o);
                }
                ItemCountSelectionOverlay.this.hide();
            }
        });
        this.f14402k = complexButton8;
        complexButton8.setBackground(Game.f8589i.assetManager.getDrawable("ui-item-count-selector-cancel-button"), 0.0f, 0.0f, 146.0f, 99.0f);
        this.f14402k.setSize(146.0f, 99.0f);
        this.f14402k.setBackgroundColors(MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P900, MaterialColor.LIGHT_BLUE.P700, color7);
        this.f14402k.setIcon(Game.f8589i.assetManager.getDrawable("icon-check"), 40.0f, 18.0f, 64.0f, 64.0f);
        this.f14402k.setPosition(523.0f, -11.0f);
        this.f14393b.addActor(this.f14402k);
        ComplexButton complexButton9 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(36), new Runnable() { // from class: com.prineside.tdi2.ui.shared.ItemCountSelectionOverlay.9
            @Override // java.lang.Runnable
            public void run() {
                if (ItemCountSelectionOverlay.this.f14407p != null) {
                    ItemCountSelectionOverlay.this.f14407p.selectionCanceled();
                }
                ItemCountSelectionOverlay.this.hide();
            }
        });
        complexButton9.setBackground(Game.f8589i.assetManager.getDrawable("ui-item-count-selector-confirm-button"), 0.0f, 0.0f, 146.0f, 99.0f);
        complexButton9.setSize(138.0f, 99.0f);
        complexButton9.setBackgroundColors(color4, color5, color6, color7);
        complexButton9.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 40.0f, 16.0f, 64.0f, 64.0f);
        complexButton9.setPosition(669.0f, -7.0f);
        this.f14393b.addActor(complexButton9);
        addLayer.getTable().setVisible(false);
    }

    /* renamed from: e */
    public final void m20102e() {
        int i = this.f14404m;
        int i2 = this.f14405n;
        if (i == i2) {
            this.f14403l.setVisible(false);
            this.f14399h.setVisible(false);
            this.f14400i.setVisible(false);
            this.f14401j.setVisible(false);
            return;
        }
        this.f14398g.setPosition((((this.f14406o - i) / (i2 - i)) * 519.0f) + 30.0f, 24.0f);
        this.f14403l.setVisible(true);
        if (this.f14405n - this.f14404m > 2) {
            this.f14401j.setVisible(true);
        } else {
            this.f14401j.setVisible(false);
        }
        this.f14399h.setVisible(true);
        this.f14400i.setVisible(true);
    }

    public void setMinMaxCount(int i, int i2) {
        this.f14404m = i;
        this.f14405n = i2;
        this.f14399h.setText(i);
        this.f14400i.setText(i2);
        int i3 = i2 - i;
        if (i3 > 2) {
            this.f14401j.setText((i3 / 2) + i);
        }
        int i4 = this.f14406o;
        int i5 = this.f14404m;
        if (i4 < i5) {
            this.f14406o = i5;
        }
        int i6 = this.f14406o;
        int i7 = this.f14405n;
        if (i6 > i7) {
            this.f14406o = i7;
        }
        ComplexButton complexButton = this.f14397f;
        complexButton.setText("x" + ((Object) StringFormatter.commaSeparatedNumber(this.f14406o)));
        m20102e();
    }

    public void setSelectedCount(int i) {
        int i2 = this.f14406o;
        int i3 = this.f14404m;
        if (i < i3) {
            i = i3;
        }
        int i4 = this.f14405n;
        if (i > i4) {
            i = i4;
        }
        this.f14406o = i;
        ComplexButton complexButton = this.f14397f;
        complexButton.setText("x" + ((Object) StringFormatter.commaSeparatedNumber(i)));
        m20102e();
        ItemCountSelectionListener itemCountSelectionListener = this.f14407p;
        if (itemCountSelectionListener != null && i2 != i) {
            itemCountSelectionListener.countChanged(this.f14406o);
        }
    }
}
