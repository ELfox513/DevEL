package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.ButtonHoldHint;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.RunnableC2486b;
import com.prineside.tdi2.utils.MaterialColor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.prineside.tdi2.ui.components.UpgradeSubmenu */
/* loaded from: classes2.dex */
public class UpgradeSubmenu extends Group {

    /* renamed from: e0 */
    public static final Color f13840e0 = Color.WHITE;

    /* renamed from: f0 */
    public static final Color f13841f0 = new Color(1.0f, 1.0f, 1.0f, 0.14f);

    /* renamed from: g0 */
    public static final Color f13842g0 = MaterialColor.GREEN.P800;

    /* renamed from: h0 */
    public static final Color f13843h0 = MaterialColor.GREEN.P900;

    /* renamed from: i0 */
    public static final Color f13844i0 = MaterialColor.LIGHT_BLUE.P800;

    /* renamed from: j0 */
    public static final Color f13845j0 = MaterialColor.LIGHT_BLUE.P700;

    /* renamed from: k0 */
    public static final Color f13846k0 = MaterialColor.LIGHT_BLUE.P900;

    /* renamed from: l0 */
    public static final Color f13847l0 = new Color(1.0f, 1.0f, 1.0f, 0.14f);

    /* renamed from: m0 */
    public static final StringBuilder f13848m0 = new StringBuilder();

    /* renamed from: M */
    public final Image[] f13849M;

    /* renamed from: N */
    public final Label f13850N;

    /* renamed from: O */
    public final Image f13851O;

    /* renamed from: P */
    public final Label f13852P;

    /* renamed from: Q */
    public final Label f13853Q;

    /* renamed from: R */
    public final Image f13854R;

    /* renamed from: S */
    public final Label f13855S;

    /* renamed from: T */
    public final Label f13856T;

    /* renamed from: V */
    public int f13858V;

    /* renamed from: W */
    public boolean f13859W;

    /* renamed from: X */
    public boolean f13860X;

    /* renamed from: Y */
    public boolean f13861Y;

    /* renamed from: Z */
    public boolean f13862Z;

    /* renamed from: a0 */
    public boolean f13863a0;

    /* renamed from: b0 */
    public float f13864b0;

    /* renamed from: c0 */
    public ButtonHoldHint f13865c0;
    public final Group upgradeButton;

    /* renamed from: U */
    public int f13857U = 10;

    /* renamed from: d0 */
    public final DelayedRemovalArray<UpgradeSubmenuListener> f13866d0 = new DelayedRemovalArray<>(false, 1);

    /* renamed from: com.prineside.tdi2.ui.components.UpgradeSubmenu$UpgradeSubmenuListener */
    /* loaded from: classes2.dex */
    public interface UpgradeSubmenuListener {
        void globalUpgradeButtonConfirmed();

        void upgradeButtonConfirmed();

        void upgradeButtonStateChanged(boolean z);
    }

    /* renamed from: C */
    public void m20303C(int i) {
        if (i < 0) {
            this.f13852P.setVisible(false);
            this.f13853Q.setText("MAX");
            this.f13854R.setVisible(false);
            return;
        }
        this.f13852P.setVisible(true);
        StringBuilder stringBuilder = f13848m0;
        stringBuilder.setLength(0);
        stringBuilder.append(i);
        this.f13853Q.setText(stringBuilder);
        this.f13854R.setVisible(true);
    }

    /* renamed from: E */
    public void m20301E() {
        int i = 0;
        while (true) {
            Image[] imageArr = this.f13849M;
            if (i < imageArr.length) {
                if (i < this.f13858V) {
                    imageArr[i].setVisible(true);
                    this.f13849M[i].setColor(Color.WHITE);
                } else if (i < this.f13857U) {
                    imageArr[i].setVisible(true);
                    this.f13849M[i].setColor(1.0f, 1.0f, 1.0f, 0.14f);
                } else {
                    imageArr[i].setVisible(false);
                }
                i++;
            } else {
                return;
            }
        }
    }

    public boolean isButtonSelected() {
        return this.f13859W && this.f13862Z;
    }

    /* renamed from: y */
    public final boolean m20291y() {
        return (Gdx.app.getType() == Application.ApplicationType.Android || Gdx.app.getType() == Application.ApplicationType.iOS) ? false : true;
    }

    public UpgradeSubmenu() {
        Image[] imageArr = new Image[10];
        this.f13849M = imageArr;
        setSize(600.0f, 116.0f);
        setTransform(false);
        setTouchable(Touchable.childrenOnly);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-upgrade-level-line-start"));
        imageArr[0] = image;
        image.setSize(42.0f, 24.0f);
        imageArr[0].setPosition(40.0f, 92.0f);
        addActor(imageArr[0]);
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("ui-upgrade-level-line");
        for (int i = 1; i < 10; i++) {
            this.f13849M[i] = new Image(drawable);
            this.f13849M[i].setSize(46.0f, 24.0f);
            this.f13849M[i].setPosition(((i - 1) * 44.0f) + 80.0f, 92.0f);
            addActor(this.f13849M[i]);
        }
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f13850N = label;
        label.setSize(80.0f, 24.0f);
        label.setPosition(480.0f, 92.0f);
        label.setAlignment(16);
        addActor(label);
        Group group = new Group();
        this.upgradeButton = group;
        group.setSize(338.0f, 80.0f);
        group.setPosition(40.0f, 0.0f);
        group.setTransform(false);
        group.setTouchable(Touchable.enabled);
        group.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.UpgradeSubmenu.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i2, int i3) {
                if (i3 == 0) {
                    UpgradeSubmenu.this.f13860X = true;
                    UpgradeSubmenu.this.m20302D();
                    UpgradeSubmenu.this.f13863a0 = false;
                    UpgradeSubmenu.this.f13864b0 = 0.0f;
                    UpgradeSubmenu.this.f13865c0 = new ButtonHoldHint(f, f2, 0.75f);
                    UpgradeSubmenu upgradeSubmenu = UpgradeSubmenu.this;
                    upgradeSubmenu.upgradeButton.addActor(upgradeSubmenu.f13865c0);
                } else if (i3 == 1 && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB) == 1.0d) {
                    UpgradeSubmenu.this.f13860X = true;
                    UpgradeSubmenu.this.f13864b0 = 1.0f;
                }
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i2, Actor actor) {
                super.enter(inputEvent, f, f2, i2, actor);
                if (i2 == -1) {
                    UpgradeSubmenu.this.f13861Y = true;
                    if (UpgradeSubmenu.this.m20291y()) {
                        UpgradeSubmenu.this.setButtonSelected(true);
                    }
                    UpgradeSubmenu.this.m20302D();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i2, Actor actor) {
                super.exit(inputEvent, f, f2, i2, actor);
                if (i2 == -1) {
                    UpgradeSubmenu.this.f13861Y = false;
                    if (UpgradeSubmenu.this.m20291y()) {
                        UpgradeSubmenu.this.setButtonSelected(false);
                    }
                    UpgradeSubmenu.this.m20302D();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i2, int i3) {
                super.touchUp(inputEvent, f, f2, i2, i3);
                UpgradeSubmenu.this.f13860X = false;
                if (!UpgradeSubmenu.this.f13863a0) {
                    if (!UpgradeSubmenu.this.m20291y()) {
                        if (UpgradeSubmenu.this.isButtonSelected()) {
                            UpgradeSubmenu.this.m20290z();
                        } else {
                            UpgradeSubmenu.this.setButtonSelected(true);
                        }
                    } else {
                        UpgradeSubmenu.this.m20290z();
                    }
                    if (UpgradeSubmenu.this.f13865c0 != null) {
                        ButtonHoldHint buttonHoldHint = UpgradeSubmenu.this.f13865c0;
                        Application application = Gdx.app;
                        buttonHoldHint.getClass();
                        application.postRunnable(new RunnableC2486b(buttonHoldHint));
                        UpgradeSubmenu.this.f13865c0 = null;
                    }
                }
                UpgradeSubmenu.this.m20302D();
            }
        });
        addActor(group);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-upgrade-button"));
        this.f13851O = image2;
        image2.setSize(338.0f, 80.0f);
        group.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-double-arrow-up"));
        image3.setSize(40.0f, 40.0f);
        image3.setPosition(20.0f, 20.0f);
        group.addActor(image3);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("do_upgrade"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
        this.f13855S = label2;
        label2.setSize(100.0f, 40.0f);
        label2.setPosition(80.0f, 20.0f);
        group.addActor(label2);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("click_to_confirm"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13856T = label3;
        label3.setSize(100.0f, 30.0f);
        label3.setPosition(80.0f, 10.0f);
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group.addActor(label3);
        if (HotKeyHintLabel.isEnabled()) {
            HotKeyHintLabel hotKeyHintLabel = new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.UPGRADE_BUILDING), 12.0f, 59.0f, 8);
            hotKeyHintLabel.addVariant(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.UPGRADE_ALL_BUILDINGS));
            group.addActor(hotKeyHintLabel);
        }
        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("for_price_glue_word"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13852P = label4;
        label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label4.setSize(50.0f, 80.0f);
        label4.setPosition(378.0f, 0.0f);
        label4.setAlignment(1);
        addActor(label4);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("game-ui-coin-icon"));
        this.f13854R = image4;
        image4.setSize(40.0f, 40.0f);
        image4.setPosition(436.0f, 20.0f);
        addActor(image4);
        Label label5 = new Label("32123", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
        this.f13853Q = label5;
        label5.setSize(132.0f, 80.0f);
        label5.setPosition(428.0f, 0.0f);
        label5.setAlignment(16);
        addActor(label5);
        m20304B(1, 1);
        setButtonSelected(false);
        m20301E();
        m20302D();
    }

    /* renamed from: A */
    public void m20305A(boolean z) {
        this.f13859W = z;
        if (!z) {
            this.f13862Z = false;
        }
        m20302D();
    }

    /* renamed from: B */
    public void m20304B(int i, int i2) {
        this.f13858V = i;
        this.f13857U = i2;
        StringBuilder stringBuilder = f13848m0;
        stringBuilder.setLength(0);
        stringBuilder.append(i).append(" LVL");
        this.f13850N.setText(stringBuilder);
        m20301E();
    }

    /* renamed from: D */
    public void m20302D() {
        if (this.f13859W) {
            if (this.f13862Z) {
                if (this.f13860X) {
                    this.f13851O.setColor(f13843h0);
                } else {
                    this.f13851O.setColor(f13842g0);
                }
            } else if (this.f13860X) {
                this.f13851O.setColor(f13846k0);
            } else if (this.f13861Y) {
                this.f13851O.setColor(f13845j0);
            } else {
                this.f13851O.setColor(f13844i0);
            }
        } else {
            this.f13851O.setColor(f13847l0);
        }
        if (this.f13859W && this.f13862Z) {
            this.f13856T.setVisible(true);
            this.f13855S.setY(30.0f);
            return;
        }
        this.f13856T.setVisible(false);
        this.f13855S.setY(20.0f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        if (this.f13860X) {
            float f2 = this.f13864b0 + f;
            this.f13864b0 = f2;
            if (f2 > 0.75f) {
                this.f13863a0 = true;
                this.f13866d0.begin();
                int i = this.f13866d0.size;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f13866d0.get(i2).globalUpgradeButtonConfirmed();
                }
                this.f13866d0.end();
                ButtonHoldHint buttonHoldHint = this.f13865c0;
                if (buttonHoldHint != null) {
                    buttonHoldHint.disappearing = true;
                    this.f13865c0 = null;
                }
                this.f13860X = false;
            }
        }
        super.act(f);
    }

    public void addListener(UpgradeSubmenuListener upgradeSubmenuListener) {
        if (upgradeSubmenuListener != null) {
            if (!this.f13866d0.contains(upgradeSubmenuListener, true)) {
                this.f13866d0.add(upgradeSubmenuListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void removeListener(UpgradeSubmenuListener upgradeSubmenuListener) {
        if (upgradeSubmenuListener != null) {
            this.f13866d0.removeValue(upgradeSubmenuListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void setButtonSelected(boolean z) {
        this.f13862Z = z;
        this.f13866d0.begin();
        int i = this.f13866d0.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13866d0.get(i2).upgradeButtonStateChanged(z);
        }
        this.f13866d0.end();
        m20302D();
    }

    /* renamed from: z */
    public final void m20290z() {
        this.f13866d0.begin();
        int i = this.f13866d0.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13866d0.get(i2).upgradeButtonConfirmed();
        }
        this.f13866d0.end();
    }
}
