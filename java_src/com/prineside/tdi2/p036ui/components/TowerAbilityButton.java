package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.ButtonHoldHint;
import com.prineside.tdi2.p036ui.actors.RunnableC2486b;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.TextureRegionConfig;
/* renamed from: com.prineside.tdi2.ui.components.TowerAbilityButton */
/* loaded from: classes2.dex */
class TowerAbilityButton extends Group {

    /* renamed from: d0 */
    public static final Color f13709d0 = new Color(0.0f, 0.0f, 0.0f, 0.14f);

    /* renamed from: e0 */
    public static final Color f13710e0 = MaterialColor.LIGHT_BLUE.P800;

    /* renamed from: f0 */
    public static final Color f13711f0 = MaterialColor.LIGHT_BLUE.P700;

    /* renamed from: g0 */
    public static final Color f13712g0 = MaterialColor.LIGHT_BLUE.P900;

    /* renamed from: h0 */
    public static final Color f13713h0 = MaterialColor.GREEN.P500.cpy().mul(1.0f, 1.0f, 1.0f, 0.21f);

    /* renamed from: M */
    public final int f13714M;

    /* renamed from: N */
    public final Image f13715N;

    /* renamed from: O */
    public final Image f13716O;

    /* renamed from: P */
    public final Image f13717P;

    /* renamed from: Q */
    public final Group f13718Q;

    /* renamed from: R */
    public final Group f13719R;

    /* renamed from: S */
    public final Group f13720S;

    /* renamed from: T */
    public boolean f13721T;

    /* renamed from: U */
    public boolean f13722U;

    /* renamed from: V */
    public boolean f13723V;

    /* renamed from: W */
    public boolean f13724W;

    /* renamed from: X */
    public boolean f13725X;

    /* renamed from: Y */
    public boolean f13726Y;

    /* renamed from: Z */
    public boolean f13727Z;

    /* renamed from: a0 */
    public float f13728a0;

    /* renamed from: b0 */
    public ButtonHoldHint f13729b0;

    /* renamed from: c0 */
    public final DelayedRemovalArray<AbilityButtonListener> f13730c0 = new DelayedRemovalArray<>(false, 1);

    /* renamed from: com.prineside.tdi2.ui.components.TowerAbilityButton$AbilityButtonListener */
    /* loaded from: classes2.dex */
    public interface AbilityButtonListener {
        void abilityConfirmed();

        void globalAbilityConfirmed();
    }

    /* renamed from: C */
    public final boolean m20356C() {
        return (Gdx.app.getType() == Application.ApplicationType.Android || Gdx.app.getType() == Application.ApplicationType.iOS) ? false : true;
    }

    /* renamed from: E */
    public void m20354E(Array<TextureRegionConfig> array, Array<TextureRegionConfig> array2, Array<TextureRegionConfig> array3) {
        if (array != null) {
            this.f13718Q.clearChildren();
            for (int i = 0; i < array.size; i++) {
                Image createImage = array.items[i].createImage(0.0f, 0.0f, this.f13718Q.getWidth());
                createImage.setColor(0.0f, 0.0f, 0.0f, 0.21f);
                this.f13718Q.addActor(createImage);
            }
            this.f13718Q.setVisible(true);
        } else {
            this.f13718Q.setVisible(false);
        }
        if (array2 != null) {
            this.f13719R.clearChildren();
            for (int i2 = 0; i2 < array2.size; i2++) {
                Image createImage2 = array2.items[i2].createImage(0.0f, 0.0f, this.f13719R.getWidth());
                createImage2.setColor(0.78f, 0.78f, 0.78f, 1.0f);
                this.f13719R.addActor(createImage2);
            }
            this.f13719R.setVisible(true);
        } else {
            this.f13719R.setVisible(false);
        }
        if (array3 != null) {
            this.f13720S.clear();
            for (int i3 = 0; i3 < array3.size; i3++) {
                this.f13720S.addActor(array3.items[i3].createImage(0.0f, 0.0f, 86.0f));
            }
            this.f13720S.setVisible(true);
            return;
        }
        this.f13720S.setVisible(false);
    }

    public boolean isSelected() {
        return this.f13722U && this.f13725X;
    }

    /* renamed from: D */
    public final void m20355D() {
        this.f13730c0.begin();
        int i = this.f13730c0.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13730c0.get(i2).abilityConfirmed();
        }
        this.f13730c0.end();
    }

    /* renamed from: F */
    public void m20353F(boolean z) {
        this.f13721T = z;
        updateColors();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        if (this.f13726Y) {
            float f2 = this.f13728a0 + f;
            this.f13728a0 = f2;
            if (f2 > 0.75f) {
                if (this.f13714M != 3) {
                    this.f13727Z = true;
                    ButtonHoldHint buttonHoldHint = this.f13729b0;
                    if (buttonHoldHint != null) {
                        buttonHoldHint.disappearing = true;
                        this.f13729b0 = null;
                    }
                    Game game = Game.f8589i;
                    game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("select_ability_for_all_towers_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.components.TowerAbilityButton.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TowerAbilityButton.this.f13730c0.begin();
                            int i = TowerAbilityButton.this.f13730c0.size;
                            for (int i2 = 0; i2 < i; i2++) {
                                ((AbilityButtonListener) TowerAbilityButton.this.f13730c0.get(i2)).globalAbilityConfirmed();
                            }
                            TowerAbilityButton.this.f13730c0.end();
                        }
                    });
                }
                this.f13726Y = false;
            }
        }
        super.act(f);
    }

    public void addListener(AbilityButtonListener abilityButtonListener) {
        if (abilityButtonListener != null) {
            if (!this.f13730c0.contains(abilityButtonListener, true)) {
                this.f13730c0.add(abilityButtonListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void removeListener(AbilityButtonListener abilityButtonListener) {
        if (abilityButtonListener != null) {
            this.f13730c0.removeValue(abilityButtonListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void setEnabled(boolean z) {
        this.f13722U = z;
        updateColors();
    }

    public void setSelected(boolean z) {
        this.f13725X = z;
        updateColors();
    }

    public void updateColors() {
        this.f13716O.setVisible(this.f13725X);
        if (this.f13721T) {
            this.f13717P.setVisible(true);
            this.f13715N.setColor(f13713h0);
            this.f13715N.clearActions();
            return;
        }
        this.f13717P.setVisible(false);
        if (this.f13722U) {
            if (this.f13725X) {
                this.f13715N.setColor(f13712g0);
                this.f13715N.clearActions();
                return;
            } else if (this.f13723V) {
                this.f13715N.setColor(f13712g0);
                this.f13715N.clearActions();
                return;
            } else if (this.f13724W) {
                this.f13715N.setColor(f13711f0);
                this.f13715N.clearActions();
                return;
            } else if (!this.f13715N.hasActions()) {
                Image image = this.f13715N;
                Color color = f13710e0;
                image.setColor(color);
                this.f13715N.addAction(Actions.forever(Actions.sequence(Actions.color(color, 0.5f), Actions.color(f13712g0, 0.7f))));
                return;
            } else {
                return;
            }
        }
        this.f13715N.setColor(f13709d0);
        this.f13715N.clearActions();
    }

    public TowerAbilityButton(final int i) {
        this.f13714M = i;
        setSize(80.0f, 80.0f);
        setTransform(false);
        setTouchable(Touchable.enabled);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f13715N = image;
        image.setSize(80.0f, 80.0f);
        Touchable touchable = Touchable.disabled;
        image.setTouchable(touchable);
        addActor(image);
        Group group = new Group();
        this.f13718Q = group;
        group.setTransform(false);
        group.setSize(86.0f, 86.0f);
        group.setPosition(-3.0f, -3.0f);
        group.setTouchable(touchable);
        addActor(group);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-tower-ability-outline"));
        this.f13716O = image2;
        image2.setSize(86.0f, 86.0f);
        image2.setPosition(-3.0f, -3.0f);
        image2.setVisible(false);
        image2.setTouchable(touchable);
        addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
        this.f13717P = image3;
        image3.setSize(21.0f, 21.0f);
        image3.setPosition(64.0f, -4.0f);
        image3.setColor(MaterialColor.GREEN.P500);
        image3.setVisible(false);
        image3.setTouchable(touchable);
        addActor(image3);
        Group group2 = new Group();
        this.f13719R = group2;
        group2.setTransform(false);
        group2.setSize(86.0f, 86.0f);
        group2.setPosition(-3.0f, -3.0f);
        group2.setTouchable(touchable);
        addActor(group2);
        Group group3 = new Group();
        this.f13720S = group3;
        group3.setTransform(false);
        group3.setTouchable(touchable);
        group3.setVisible(false);
        group3.setSize(86.0f, 86.0f);
        group3.setPosition(-3.0f, -3.0f);
        addActor(group3);
        addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.TowerAbilityButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i2, int i3) {
                if (i3 == 0) {
                    TowerAbilityButton.this.f13723V = true;
                    TowerAbilityButton.this.updateColors();
                    TowerAbilityButton.this.f13726Y = true;
                    TowerAbilityButton.this.f13727Z = false;
                    TowerAbilityButton.this.f13728a0 = 0.0f;
                    if (i != 3) {
                        TowerAbilityButton.this.f13729b0 = new ButtonHoldHint(f, f2, 0.75f);
                        TowerAbilityButton towerAbilityButton = TowerAbilityButton.this;
                        towerAbilityButton.addActor(towerAbilityButton.f13729b0);
                    }
                } else if (i3 == 1 && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB) == 1.0d) {
                    TowerAbilityButton.this.f13726Y = true;
                    TowerAbilityButton.this.f13728a0 = 1.0f;
                }
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i2, Actor actor) {
                super.enter(inputEvent, f, f2, i2, actor);
                if (i2 == -1) {
                    TowerAbilityButton.this.f13724W = true;
                    if (TowerAbilityButton.this.m20356C()) {
                        TowerAbilityButton.this.setSelected(true);
                    }
                    TowerAbilityButton.this.updateColors();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i2, Actor actor) {
                super.exit(inputEvent, f, f2, i2, actor);
                if (i2 == -1) {
                    TowerAbilityButton.this.f13724W = false;
                    if (TowerAbilityButton.this.m20356C()) {
                        TowerAbilityButton.this.setSelected(false);
                    }
                    TowerAbilityButton.this.updateColors();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i2, int i3) {
                super.touchUp(inputEvent, f, f2, i2, i3);
                TowerAbilityButton.this.f13723V = false;
                if (!TowerAbilityButton.this.f13721T && TowerAbilityButton.this.f13722U && !TowerAbilityButton.this.f13727Z) {
                    if (TowerAbilityButton.this.m20356C()) {
                        TowerAbilityButton.this.m20355D();
                    } else if (TowerAbilityButton.this.isSelected()) {
                        TowerAbilityButton.this.m20355D();
                    } else {
                        TowerAbilityButton.this.setSelected(true);
                    }
                }
                if (TowerAbilityButton.this.f13729b0 != null) {
                    ButtonHoldHint buttonHoldHint = TowerAbilityButton.this.f13729b0;
                    Application application = Gdx.app;
                    buttonHoldHint.getClass();
                    application.postRunnable(new RunnableC2486b(buttonHoldHint));
                    TowerAbilityButton.this.f13729b0 = null;
                }
                TowerAbilityButton.this.f13726Y = false;
                TowerAbilityButton.this.updateColors();
            }
        });
        m20354E(null, null, null);
        updateColors();
    }
}
