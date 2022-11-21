package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.RightSideMenuButton */
/* loaded from: classes2.dex */
public class RightSideMenuButton extends Group {
    public static final float HEIGHT = 108.0f;
    public static final float WIDTH = 388.0f;

    /* renamed from: Y */
    public static final Color f12699Y = new Color(1.0f, 1.0f, 1.0f, 0.56f);

    /* renamed from: P */
    public Image f12703P;

    /* renamed from: Q */
    public Image f12704Q;

    /* renamed from: R */
    public Label f12705R;

    /* renamed from: X */
    public Runnable f12711X;

    /* renamed from: M */
    public boolean f12700M = true;

    /* renamed from: N */
    public boolean f12701N = false;

    /* renamed from: O */
    public boolean f12702O = false;

    /* renamed from: S */
    public Color f12706S = MaterialColor.LIGHT_BLUE.P800.cpy();

    /* renamed from: T */
    public Color f12707T = MaterialColor.LIGHT_BLUE.P700.cpy();

    /* renamed from: U */
    public Color f12708U = MaterialColor.LIGHT_BLUE.P900.cpy();

    /* renamed from: V */
    public Color f12709V = MaterialColor.GREY.P800.cpy();

    /* renamed from: W */
    public Color f12710W = Color.WHITE.cpy();

    public void setClickHandler(Runnable runnable) {
        this.f12711X = runnable;
    }

    public void setText(CharSequence charSequence) {
        this.f12705R.setText(charSequence);
    }

    public void setColors(Color color, Color color2, Color color3, Color color4) {
        this.f12706S.set(color);
        this.f12707T.set(color2);
        this.f12708U.set(color3);
        this.f12710W.set(color4);
        updateColors();
    }

    public void setEnabled(boolean z) {
        if (z != this.f12700M) {
            this.f12700M = z;
            updateColors();
        }
    }

    public final void updateColors() {
        if (this.f12700M) {
            if (this.f12701N) {
                this.f12703P.setColor(this.f12708U);
            } else if (this.f12702O) {
                this.f12703P.setColor(this.f12707T);
            } else {
                this.f12703P.setColor(this.f12706S);
            }
            this.f12704Q.setColor(this.f12710W);
            this.f12705R.setColor(this.f12710W);
            return;
        }
        Image image = this.f12704Q;
        Color color = f12699Y;
        image.setColor(color);
        this.f12705R.setColor(color);
        this.f12703P.setColor(this.f12709V);
    }

    public RightSideMenuButton(String str, String str2, Runnable runnable) {
        Label.LabelStyle labelStyle = Game.f8589i.assetManager.getLabelStyle(30);
        this.f12711X = runnable;
        setTransform(false);
        setSize(388.0f, 108.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-right-menu-button"));
        this.f12703P = image;
        image.setSize(488.0f, 108.0f);
        addActor(this.f12703P);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable(str2));
        this.f12704Q = image2;
        image2.setSize(40.0f, 40.0f);
        this.f12704Q.setPosition(32.0f, 40.0f);
        addActor(this.f12704Q);
        Label label = new Label(str, labelStyle);
        this.f12705R = label;
        label.setSize(300.0f, 96.0f);
        this.f12705R.setPosition(88.0f, 12.0f);
        addActor(this.f12705R);
        setTouchable(Touchable.enabled);
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.RightSideMenuButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (RightSideMenuButton.this.f12711X != null) {
                    RightSideMenuButton.this.f12711X.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                RightSideMenuButton.this.f12701N = true;
                RightSideMenuButton.this.updateColors();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.enter(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    RightSideMenuButton.this.f12702O = true;
                    RightSideMenuButton.this.updateColors();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.exit(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    RightSideMenuButton.this.f12702O = false;
                    RightSideMenuButton.this.updateColors();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                super.touchUp(inputEvent, f, f2, i, i2);
                RightSideMenuButton.this.f12701N = false;
                RightSideMenuButton.this.updateColors();
            }
        });
        updateColors();
    }
}
