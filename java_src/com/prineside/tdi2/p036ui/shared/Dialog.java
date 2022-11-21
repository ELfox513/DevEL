package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.shared.Dialog */
/* loaded from: classes2.dex */
public class Dialog {

    /* renamed from: v */
    public static final Color f14182v = new Color(218959247);

    /* renamed from: w */
    public static final Color f14183w = MaterialColor.LIGHT_BLUE.P700;

    /* renamed from: x */
    public static final Color f14184x = MaterialColor.LIGHT_BLUE.P600;

    /* renamed from: y */
    public static final Color f14185y = MaterialColor.LIGHT_BLUE.P800;

    /* renamed from: z */
    public static final Color f14186z = MaterialColor.GREY.P800;

    /* renamed from: a */
    public final UiManager.UiLayer f14187a;

    /* renamed from: b */
    public final Label f14188b;

    /* renamed from: c */
    public final Group f14189c;

    /* renamed from: d */
    public final Image f14190d;

    /* renamed from: e */
    public final Image f14191e;

    /* renamed from: f */
    public final Label f14192f;

    /* renamed from: g */
    public Runnable f14193g;

    /* renamed from: h */
    public final Group f14194h;

    /* renamed from: i */
    public final Image f14195i;
    public boolean ignoreEscForFrame;

    /* renamed from: j */
    public final Image f14196j;

    /* renamed from: k */
    public final Label f14197k;

    /* renamed from: l */
    public Runnable f14198l;

    /* renamed from: m */
    public final Image f14199m;

    /* renamed from: n */
    public final Image f14200n;

    /* renamed from: o */
    public final Image f14201o;

    /* renamed from: p */
    public final Table f14202p;

    /* renamed from: q */
    public String f14203q;

    /* renamed from: r */
    public float f14204r;

    /* renamed from: s */
    public boolean f14205s;

    /* renamed from: t */
    public boolean f14206t;

    /* renamed from: u */
    public final Runnable f14207u;

    /* renamed from: n */
    public static /* synthetic */ void m20174n() {
        Game.f8589i.uiManager.darkOverlay.cancelCurrentClick();
    }

    public Table getHintTable() {
        return this.f14202p;
    }

    public String getLastConfirmId() {
        return this.f14203q;
    }

    public boolean isVisible() {
        return this.f14187a.getTable().isVisible();
    }

    /* renamed from: m */
    public final boolean m20175m() {
        return this.f14204r > 0.0f;
    }

    public void showAlert(CharSequence charSequence) {
        this.f14188b.setText(charSequence);
        this.f14193g = null;
        this.f14196j.setDrawable(Game.f8589i.assetManager.getDrawable("icon-check"));
        this.f14198l = this.f14207u;
        m20173o();
    }

    public void showConfirm(CharSequence charSequence, Runnable runnable) {
        showConfirm(charSequence, runnable, "default");
    }

    public Dialog() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, HttpStatus.SC_CREATED, "Dialog main");
        this.f14187a = addLayer;
        this.f14203q = "default";
        this.f14204r = 0.0f;
        this.f14207u = new Runnable() { // from class: com.prineside.tdi2.ui.shared.Dialog.1
            @Override // java.lang.Runnable
            public void run() {
                Dialog.this.hide();
            }
        };
        Table table = addLayer.getTable();
        Group group = new Group();
        group.setTransform(false);
        Touchable touchable = Touchable.enabled;
        group.setTouchable(touchable);
        group.addListener(new InputVoid());
        table.add((Table) group).expand().bottom().right().padBottom(293.0f).size(651.0f, 456.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-dialog-background-1"));
        this.f14199m = image;
        image.setPosition(115.0f, 87.0f);
        image.setSize(566.0f, 179.0f);
        group.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-dialog-background-2"));
        this.f14200n = image2;
        image2.setPosition(115.0f, 106.0f);
        image2.setSize(514.0f, 320.0f);
        group.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("ui-dialog-background-3"));
        this.f14201o = image3;
        image3.setPosition(0.0f, 136.0f);
        image3.setSize(611.0f, 320.0f);
        group.addActor(image3);
        Table table2 = new Table();
        this.f14202p = table2;
        table2.setPosition(-691.0f, 0.0f);
        table2.setSize(651.0f, 456.0f);
        group.addActor(table2);
        Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE));
        this.f14188b = label;
        label.setWrap(true);
        label.setAlignment(1);
        label.setPosition(78.0f, 185.0f);
        label.setSize(489.0f, 240.0f);
        group.addActor(label);
        Group group2 = new Group();
        this.f14189c = group2;
        group2.setName("dialog_left_button");
        group2.setTransform(false);
        group2.setPosition(65.0f, 0.0f);
        group2.setSize(265.0f, 139.0f);
        group.addActor(group2);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("ui-dialog-button-left"));
        this.f14190d = image4;
        Color color = f14183w;
        image4.setColor(color);
        image4.setSize(265.0f, 139.0f);
        group2.addActor(image4);
        group2.setTouchable(touchable);
        group2.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.Dialog.2

            /* renamed from: o */
            public boolean f14209o = false;

            /* renamed from: p */
            public boolean f14210p = false;

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f14210p = true;
                    m20170a();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f14210p = false;
                    m20170a();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f14209o = true;
                m20170a();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f14209o = false;
                m20170a();
                super.touchUp(inputEvent, f, f2, i, i2);
            }

            /* renamed from: a */
            public final void m20170a() {
                if (Dialog.this.f14205s) {
                    Dialog.this.f14190d.setColor(Dialog.f14186z);
                } else if (this.f14209o) {
                    Dialog.this.f14190d.setColor(Dialog.f14185y);
                } else if (this.f14210p) {
                    Dialog.this.f14190d.setColor(Dialog.f14184x);
                } else {
                    Dialog.this.f14190d.setColor(Dialog.f14183w);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (Dialog.this.f14205s) {
                    return;
                }
                Runnable runnable = Dialog.this.f14193g;
                Dialog.this.hide();
                if (runnable != null) {
                    runnable.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }
        });
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("icon-times"));
        this.f14191e = image5;
        image5.setPosition(100.0f, 46.0f);
        image5.setSize(64.0f, 64.0f);
        group2.addActor(image5);
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14192f = label2;
        label2.setPosition(100.0f, 46.0f);
        label2.setSize(64.0f, 64.0f);
        label2.setAlignment(1);
        label2.setVisible(false);
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group2.addActor(label2);
        Group group3 = new Group();
        this.f14194h = group3;
        group3.setName("dialog_right_button");
        group3.setPosition(344.0f, 14.0f);
        group3.setSize(259.0f, 141.0f);
        group.addActor(group3);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("ui-dialog-button-right"));
        this.f14195i = image6;
        image6.setColor(color);
        image6.setSize(259.0f, 141.0f);
        group3.addActor(image6);
        group3.setTouchable(touchable);
        group3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.Dialog.3

            /* renamed from: o */
            public boolean f14212o = false;

            /* renamed from: p */
            public boolean f14213p = false;

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f14213p = true;
                    m20169a();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    this.f14213p = false;
                    m20169a();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f14212o = true;
                m20169a();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                this.f14212o = false;
                m20169a();
                super.touchUp(inputEvent, f, f2, i, i2);
            }

            /* renamed from: a */
            public final void m20169a() {
                if (Dialog.this.f14206t) {
                    Dialog.this.f14195i.setColor(Dialog.f14186z);
                } else if (this.f14212o) {
                    Dialog.this.f14195i.setColor(Dialog.f14185y);
                } else if (this.f14213p) {
                    Dialog.this.f14195i.setColor(Dialog.f14184x);
                } else {
                    Dialog.this.f14195i.setColor(Dialog.f14183w);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (Dialog.this.f14206t) {
                    return;
                }
                Runnable runnable = Dialog.this.f14198l;
                Dialog.this.hide();
                if (runnable != null) {
                    runnable.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }
        });
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-times"));
        this.f14196j = image7;
        image7.setPosition(81.0f, 42.0f);
        image7.setSize(64.0f, 64.0f);
        group3.addActor(image7);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14197k = label3;
        label3.setPosition(81.0f, 42.0f);
        label3.setSize(64.0f, 64.0f);
        label3.setAlignment(1);
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label3.setVisible(false);
        group3.addActor(label3);
        addLayer.getTable().setVisible(false);
    }

    /* renamed from: l */
    public final void m20176l() {
        this.f14199m.setVisible(false);
        this.f14200n.setVisible(false);
        this.f14201o.setVisible(false);
        this.f14188b.setVisible(false);
        this.f14189c.setVisible(false);
        this.f14194h.setVisible(false);
    }

    public void makeConfirmButtonDisabled(int i) {
        if (i < 0) {
            i = 0;
        }
        this.f14204r = i;
        m20171q();
    }

    /* renamed from: p */
    public final void m20172p() {
        this.f14199m.clearActions();
        this.f14200n.clearActions();
        this.f14201o.clearActions();
        this.f14188b.clearActions();
        this.f14189c.clearActions();
        this.f14194h.clearActions();
        this.f14187a.getTable().clearActions();
    }

    public void setItemsHintForVisibleDialog(Array<ItemStack> array) {
        this.f14202p.clear();
        Array.ArrayIterator<ItemStack> it = array.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            final ItemStack next = it.next();
            ItemCell itemCell = new ItemCell();
            itemCell.setItem(next);
            itemCell.setColRow(i, i2);
            itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.Dialog.4
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Game.f8589i.uiManager.itemDescriptionDialog.show(next.getItem(), next.getCount());
                }
            });
            this.f14202p.add((Table) itemCell);
            i++;
            if (i == 5) {
                i2++;
                this.f14202p.row();
                i = 0;
            }
        }
    }

    public void showConfirm(CharSequence charSequence, Runnable runnable, String str) {
        this.f14188b.setText(charSequence);
        this.f14191e.setDrawable(Game.f8589i.assetManager.getDrawable("icon-check"));
        this.f14193g = runnable;
        this.f14196j.setDrawable(Game.f8589i.assetManager.getDrawable("icon-times"));
        this.f14198l = this.f14207u;
        this.f14203q = str;
        m20173o();
    }

    public void hide() {
        m20172p();
        this.f14193g = null;
        this.f14198l = null;
        this.f14202p.clear();
        this.f14189c.setVisible(false);
        this.f14194h.setVisible(false);
        this.f14188b.setVisible(false);
        this.f14201o.setVisible(false);
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            this.f14200n.addAction(Actions.sequence(Actions.delay(0.05f), Actions.visible(false)));
            this.f14199m.addAction(Actions.sequence(Actions.delay(0.1f), Actions.visible(false)));
            this.f14187a.getTable().addAction(Actions.sequence(Actions.delay(0.1f), Actions.visible(false)));
        } else {
            this.f14200n.setVisible(false);
            this.f14199m.setVisible(false);
            this.f14187a.getTable().setVisible(false);
        }
        Game.f8589i.uiManager.darkOverlay.removeCaller("Dialog");
    }

    /* renamed from: o */
    public final void m20173o() {
        m20172p();
        m20176l();
        this.f14199m.setVisible(true);
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            this.f14200n.addAction(Actions.sequence(Actions.delay(0.05f), Actions.visible(true)));
            this.f14201o.addAction(Actions.sequence(Actions.delay(0.1f), Actions.visible(true)));
            this.f14188b.addAction(Actions.sequence(Actions.delay(0.1f), Actions.visible(true)));
            if (this.f14193g != null) {
                this.f14189c.addAction(Actions.sequence(Actions.delay(0.1f), Actions.visible(true)));
            }
            if (this.f14198l != null) {
                this.f14194h.addAction(Actions.sequence(Actions.delay(0.1f), Actions.visible(true)));
            }
        } else {
            this.f14200n.setVisible(true);
            this.f14201o.setVisible(true);
            this.f14188b.setVisible(true);
            if (this.f14193g != null) {
                this.f14189c.setVisible(true);
            }
            if (this.f14198l != null) {
                this.f14194h.setVisible(true);
            }
        }
        Game.f8589i.uiManager.darkOverlay.addCaller("Dialog", this.f14187a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.f
            @Override // java.lang.Runnable
            public final void run() {
                Dialog.m20174n();
            }
        });
        this.f14187a.getTable().setVisible(true);
        m20171q();
    }

    public void postRender(float f) {
        if (isVisible()) {
            float f2 = this.f14204r;
            if (f2 != 0.0f) {
                float f3 = f2 - f;
                this.f14204r = f3;
                if (f3 < 0.0f) {
                    this.f14204r = 0.0f;
                }
                m20171q();
            }
            if (!this.ignoreEscForFrame && (Gdx.input.isKeyJustPressed(4) || Gdx.input.isKeyJustPressed(111))) {
                Runnable runnable = this.f14198l;
                hide();
                if (runnable != null) {
                    runnable.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            } else if ((Gdx.input.isKeyJustPressed(66) || Gdx.input.isKeyJustPressed(160)) && !m20175m()) {
                Runnable runnable2 = this.f14193g;
                hide();
                if (runnable2 != null) {
                    runnable2.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }
        }
        this.ignoreEscForFrame = false;
    }

    /* renamed from: q */
    public final void m20171q() {
        if (m20175m()) {
            String str = MathUtils.floor(this.f14204r) + "." + (MathUtils.ceil(this.f14204r * 10.0f) % 10) + Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND");
            if (this.f14193g == null) {
                this.f14205s = false;
                this.f14206t = true;
                this.f14197k.setText(str);
            } else {
                this.f14205s = true;
                this.f14206t = false;
                this.f14192f.setText(str);
            }
        } else {
            this.f14205s = false;
            this.f14206t = false;
        }
        if (!this.f14205s) {
            this.f14190d.setColor(f14183w);
            this.f14192f.setVisible(false);
            this.f14191e.setVisible(true);
        } else {
            this.f14190d.setColor(f14186z);
            this.f14192f.setVisible(true);
            this.f14191e.setVisible(false);
        }
        if (!this.f14206t) {
            this.f14195i.setColor(f14183w);
            this.f14197k.setVisible(false);
            this.f14196j.setVisible(true);
            return;
        }
        this.f14195i.setColor(f14186z);
        this.f14197k.setVisible(true);
        this.f14196j.setVisible(false);
    }

    public void showAlert(CharSequence charSequence, Runnable runnable) {
        this.f14188b.setText(charSequence);
        this.f14193g = null;
        this.f14196j.setDrawable(Game.f8589i.assetManager.getDrawable("icon-check"));
        this.f14198l = runnable;
        m20173o();
    }

    public void showConfirm(CharSequence charSequence, Runnable runnable, Runnable runnable2) {
        showConfirm(charSequence, runnable, runnable2, "default");
    }

    public void showConfirm(CharSequence charSequence, Runnable runnable, Runnable runnable2, String str) {
        this.f14188b.setText(charSequence);
        this.f14191e.setDrawable(Game.f8589i.assetManager.getDrawable("icon-check"));
        this.f14193g = runnable;
        this.f14196j.setDrawable(Game.f8589i.assetManager.getDrawable("icon-times"));
        this.f14198l = runnable2;
        this.f14203q = str;
        m20173o();
    }
}
