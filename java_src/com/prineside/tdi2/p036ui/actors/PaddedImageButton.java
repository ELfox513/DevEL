package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
/* renamed from: com.prineside.tdi2.ui.actors.PaddedImageButton */
/* loaded from: classes2.dex */
public class PaddedImageButton extends Group {

    /* renamed from: M */
    public boolean f12633M = false;

    /* renamed from: N */
    public boolean f12634N = false;

    /* renamed from: O */
    public boolean f12635O = true;

    /* renamed from: P */
    public final Image f12636P;

    /* renamed from: Q */
    public final Image f12637Q;

    /* renamed from: R */
    public Color f12638R;

    /* renamed from: S */
    public Color f12639S;

    /* renamed from: T */
    public Color f12640T;

    /* renamed from: U */
    public final Color f12641U;

    public Color getDisabledColor() {
        return this.f12641U;
    }

    public Image getIcon() {
        return this.f12637Q;
    }

    public void hideShadow() {
        this.f12636P.setVisible(false);
    }

    public PaddedImageButton setIcon(Drawable drawable) {
        this.f12637Q.setDrawable(drawable);
        return this;
    }

    public PaddedImageButton setIconPosition(float f, float f2) {
        this.f12637Q.setPosition(f, f2);
        return this;
    }

    public PaddedImageButton setIconSize(float f, float f2) {
        this.f12637Q.setSize(f, f2);
        return this;
    }

    public void setColors(Color color, Color color2, Color color3) {
        this.f12638R = color;
        this.f12639S = color2;
        this.f12640T = color3;
        updateColors();
    }

    public void setDisabledColor(Color color) {
        this.f12641U.set(color);
        updateColors();
    }

    public void setEnabled(boolean z) {
        this.f12635O = z;
        updateColors();
    }

    public void setShadow(Drawable drawable, float f, float f2, float f3, float f4, Color color) {
        this.f12636P.setDrawable(drawable);
        this.f12636P.setPosition(f, f2);
        this.f12636P.setSize(f3, f4);
        this.f12636P.setColor(color);
        this.f12636P.setVisible(true);
    }

    public void updateColors() {
        if (this.f12635O) {
            if (this.f12633M) {
                this.f12637Q.setColor(this.f12640T);
                return;
            } else if (this.f12634N) {
                this.f12637Q.setColor(this.f12639S);
                return;
            } else {
                this.f12637Q.setColor(this.f12638R);
                return;
            }
        }
        this.f12637Q.setColor(this.f12641U);
    }

    public PaddedImageButton(Drawable drawable, final Runnable runnable, Color color, Color color2, Color color3) {
        Color color4 = new Color();
        this.f12641U = color4;
        this.f12638R = color;
        this.f12639S = color2;
        this.f12640T = color3;
        color4.set(color);
        color4.f3889a *= 0.56f;
        setTransform(false);
        Image image = new Image();
        this.f12636P = image;
        image.setVisible(false);
        addActor(image);
        Image image2 = new Image(drawable);
        this.f12637Q = image2;
        addActor(image2);
        setTouchable(Touchable.enabled);
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.PaddedImageButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Runnable runnable2;
                if (PaddedImageButton.this.f12635O && (runnable2 = runnable) != null) {
                    runnable2.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                PaddedImageButton.this.f12633M = true;
                PaddedImageButton.this.updateColors();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                PaddedImageButton.this.f12633M = false;
                PaddedImageButton.this.updateColors();
                super.touchUp(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.enter(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    PaddedImageButton.this.f12634N = true;
                    PaddedImageButton.this.updateColors();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.exit(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    PaddedImageButton.this.f12634N = false;
                    PaddedImageButton.this.updateColors();
                }
            }
        });
        updateColors();
    }
}
