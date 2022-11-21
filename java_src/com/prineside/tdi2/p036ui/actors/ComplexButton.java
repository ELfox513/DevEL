package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.ComplexButton */
/* loaded from: classes2.dex */
public class ComplexButton extends Group {

    /* renamed from: M */
    public boolean f12492M;

    /* renamed from: N */
    public boolean f12493N;

    /* renamed from: O */
    public boolean f12494O;

    /* renamed from: P */
    public boolean f12495P;

    /* renamed from: Q */
    public boolean f12496Q;

    /* renamed from: R */
    public final Color f12497R;

    /* renamed from: S */
    public final Color f12498S;

    /* renamed from: T */
    public final Color f12499T;

    /* renamed from: U */
    public final Color f12500U;

    /* renamed from: V */
    public final Color f12501V;

    /* renamed from: W */
    public final Color f12502W;

    /* renamed from: X */
    public final Color f12503X;

    /* renamed from: Y */
    public final Color f12504Y;

    /* renamed from: Z */
    public final Color f12505Z;

    /* renamed from: a0 */
    public final Color f12506a0;

    /* renamed from: b0 */
    public final Color f12507b0;
    public final Image background;
    public final Image backgroundShadow;

    /* renamed from: c0 */
    public final Color f12508c0;

    /* renamed from: d0 */
    public Runnable f12509d0;

    /* renamed from: e0 */
    public Runnable f12510e0;
    public final Image icon;
    public final Image iconShadow;
    public final Label label;
    public final Label labelShadow;

    public ComplexButton(CharSequence charSequence, Label.LabelStyle labelStyle, Runnable runnable, Runnable runnable2) {
        this.f12492M = false;
        this.f12493N = false;
        this.f12494O = true;
        this.f12495P = false;
        this.f12497R = MaterialColor.LIGHT_BLUE.P800.cpy();
        this.f12498S = MaterialColor.LIGHT_BLUE.P700.cpy();
        this.f12499T = MaterialColor.LIGHT_BLUE.P900.cpy();
        this.f12500U = MaterialColor.GREY.P800.cpy();
        Color color = Color.WHITE;
        this.f12501V = color.cpy();
        this.f12502W = color.cpy();
        this.f12503X = color.cpy();
        Color color2 = MaterialColor.GREY.P500;
        this.f12504Y = color2.cpy();
        this.f12505Z = color.cpy();
        this.f12506a0 = color.cpy();
        this.f12507b0 = color.cpy();
        this.f12508c0 = color2.cpy();
        this.f12509d0 = runnable;
        this.f12510e0 = runnable2;
        setTransform(false);
        Image image = new Image();
        this.backgroundShadow = image;
        image.setVisible(false);
        addActor(image);
        Image image2 = new Image();
        this.background = image2;
        addActor(image2);
        Image image3 = new Image();
        this.iconShadow = image3;
        image3.setVisible(false);
        image3.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        addActor(image3);
        Image image4 = new Image();
        this.icon = image4;
        addActor(image4);
        Label label = new Label(charSequence, labelStyle);
        this.labelShadow = label;
        label.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        label.setVisible(false);
        addActor(label);
        Label label2 = new Label(charSequence, labelStyle);
        this.label = label2;
        addActor(label2);
        setTouchable(Touchable.enabled);
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.ComplexButton.1

            /* renamed from: o */
            public final Timer.Task f12511o = new Timer.Task() { // from class: com.prineside.tdi2.ui.actors.ComplexButton.1.1
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    if (C24481.this.f12512p != null) {
                        C24481.this.f12512p.disappearing = true;
                        C24481.this.f12512p = null;
                    }
                    if (ComplexButton.this.f12510e0 != null) {
                        ComplexButton.this.f12510e0.run();
                    }
                }
            };

            /* renamed from: p */
            public ButtonHoldHint f12512p;

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    ComplexButton.this.f12493N = true;
                    ComplexButton.this.updateColors();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    ComplexButton.this.f12493N = false;
                    ComplexButton.this.updateColors();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if (i2 == 0) {
                    ComplexButton.this.f12492M = true;
                    ComplexButton.this.updateColors();
                    if (this.f12511o.isScheduled()) {
                        this.f12511o.cancel();
                    }
                    if (ComplexButton.this.f12510e0 != null) {
                        Timer.schedule(this.f12511o, 0.5f);
                        ButtonHoldHint buttonHoldHint = new ButtonHoldHint(f, f2, 0.5f);
                        this.f12512p = buttonHoldHint;
                        ComplexButton.this.addActor(buttonHoldHint);
                    }
                } else if (i2 == 1 && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.INSTANT_HOLD_BUTTON_ON_RMB) == 1.0d) {
                    if (this.f12511o.isScheduled()) {
                        this.f12511o.cancel();
                    }
                    this.f12511o.run();
                }
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (ComplexButton.this.f12494O && ComplexButton.this.f12509d0 != null) {
                    ComplexButton.this.f12509d0.run();
                    if (!ComplexButton.this.f12495P) {
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                    }
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                ComplexButton.this.f12492M = false;
                ComplexButton.this.updateColors();
                if (ComplexButton.this.f12510e0 != null && !this.f12511o.isScheduled()) {
                    cancel();
                }
                this.f12511o.cancel();
                ButtonHoldHint buttonHoldHint = this.f12512p;
                if (buttonHoldHint != null) {
                    Application application = Gdx.app;
                    buttonHoldHint.getClass();
                    application.postRunnable(new RunnableC2486b(buttonHoldHint));
                    this.f12512p = null;
                }
                super.touchUp(inputEvent, f, f2, i, i2);
            }
        });
        updateColors();
    }

    public void setClickHandler(Runnable runnable) {
        this.f12509d0 = runnable;
    }

    public ComplexButton setIcon(Drawable drawable, float f, float f2, float f3, float f4) {
        this.icon.setDrawable(drawable);
        this.icon.setPosition(f, f2);
        this.icon.setSize(f3, f4);
        this.iconShadow.setDrawable(drawable);
        this.iconShadow.setPosition(f, f2 - 3.0f);
        this.iconShadow.setSize(f3, f4);
        return this;
    }

    public void setMuted(boolean z) {
        this.f12495P = z;
    }

    public ComplexButton setText(CharSequence charSequence) {
        this.label.setText(charSequence);
        return this;
    }

    public ComplexButton setBackground(Drawable drawable, float f, float f2, float f3, float f4) {
        this.background.setDrawable(drawable);
        this.background.setPosition(f, f2);
        this.background.setSize(f3, f4);
        return this;
    }

    public ComplexButton setBackgroundColors(Color color, Color color2, Color color3, Color color4) {
        if (color != null) {
            this.f12497R.set(color);
        }
        if (color3 != null) {
            this.f12498S.set(color3);
        }
        if (color2 != null) {
            this.f12499T.set(color2);
        }
        if (color4 != null) {
            this.f12500U.set(color4);
        }
        updateColors();
        return this;
    }

    public ComplexButton setEnabled(boolean z) {
        this.f12494O = z;
        updateColors();
        return this;
    }

    public ComplexButton setIconColors(Color color, Color color2, Color color3, Color color4) {
        if (color != null) {
            this.f12505Z.set(color);
        }
        if (color3 != null) {
            this.f12507b0.set(color3);
        }
        if (color2 != null) {
            this.f12506a0.set(color2);
        }
        if (color4 != null) {
            this.f12508c0.set(color4);
        }
        updateColors();
        return this;
    }

    public void setIconLabelShadowEnabled(boolean z) {
        this.iconShadow.setVisible(z);
        this.labelShadow.setVisible(z);
    }

    public ComplexButton setLabel(float f, float f2, float f3, float f4, int i) {
        this.label.setPosition(f, f2);
        this.label.setSize(f3, f4);
        this.label.setAlignment(i);
        this.labelShadow.setPosition(f, f2 - 2.0f);
        this.labelShadow.setSize(f3, f4);
        this.labelShadow.setAlignment(i);
        this.f12496Q = true;
        return this;
    }

    public ComplexButton setLabelColors(Color color, Color color2, Color color3, Color color4) {
        if (color != null) {
            this.f12501V.set(color);
        }
        if (color3 != null) {
            this.f12503X.set(color3);
        }
        if (color2 != null) {
            this.f12502W.set(color2);
        }
        if (color4 != null) {
            this.f12504Y.set(color4);
        }
        updateColors();
        return this;
    }

    public ComplexButton setText(int i) {
        this.label.setText(i);
        this.labelShadow.setText(i);
        return this;
    }

    public final void updateColors() {
        if (this.f12494O) {
            if (this.f12492M) {
                this.label.setColor(this.f12503X);
                this.icon.setColor(this.f12507b0);
                this.background.setColor(this.f12499T);
                return;
            } else if (this.f12493N) {
                this.label.setColor(this.f12502W);
                this.icon.setColor(this.f12506a0);
                this.background.setColor(this.f12498S);
                return;
            } else {
                this.label.setColor(this.f12501V);
                this.icon.setColor(this.f12505Z);
                this.background.setColor(this.f12497R);
                return;
            }
        }
        this.background.setColor(this.f12500U);
        this.label.setColor(this.f12504Y);
        this.icon.setColor(this.f12508c0);
    }

    public ComplexButton setIconLabelColors(Color color, Color color2, Color color3, Color color4) {
        setIconColors(color, color2, color3, color4);
        setLabelColors(color, color2, color3, color4);
        return this;
    }

    public ComplexButton setIcon(Drawable drawable) {
        this.icon.setDrawable(drawable);
        this.iconShadow.setDrawable(drawable);
        return this;
    }

    public ComplexButton(CharSequence charSequence, Label.LabelStyle labelStyle, Runnable runnable) {
        this(charSequence, labelStyle, runnable, null);
    }
}
