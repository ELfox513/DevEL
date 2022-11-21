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
/* renamed from: com.prineside.tdi2.ui.actors.OverlayContinueButton */
/* loaded from: classes2.dex */
public class OverlayContinueButton extends Group {

    /* renamed from: M */
    public Image f12625M;

    /* renamed from: N */
    public boolean f12626N;

    /* renamed from: O */
    public boolean f12627O;

    /* renamed from: P */
    public Color f12628P;

    /* renamed from: Q */
    public Color f12629Q;

    /* renamed from: R */
    public Color f12630R;
    public Label label;

    /* renamed from: s */
    public final void m20687s() {
        if (this.f12626N) {
            this.f12625M.setColor(this.f12629Q);
        } else if (this.f12627O) {
            this.f12625M.setColor(this.f12630R);
        } else {
            this.f12625M.setColor(this.f12628P);
        }
    }

    public OverlayContinueButton(String str, String str2, Color color, Color color2, Color color3, final Runnable runnable) {
        this.f12628P = color;
        this.f12629Q = color2;
        this.f12630R = color3;
        setTransform(false);
        setSize(408.0f, 127.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-level-selection-overlay-button"));
        this.f12625M = image;
        image.setSize(408.0f, 127.0f);
        addActor(this.f12625M);
        Label label = new Label(str, new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE));
        this.label = label;
        label.setSize(305.0f, 20.0f);
        this.label.setPosition(0.0f, 45.0f);
        this.label.setAlignment(20);
        addActor(this.label);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable(str2));
        image2.setSize(64.0f, 64.0f);
        image2.setPosition(313.0f, 30.0f);
        addActor(image2);
        setTouchable(Touchable.enabled);
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.OverlayContinueButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    OverlayContinueButton.this.f12627O = true;
                    OverlayContinueButton.this.m20687s();
                }
                super.enter(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == -1) {
                    OverlayContinueButton.this.f12627O = false;
                    OverlayContinueButton.this.m20687s();
                }
                super.exit(inputEvent, f, f2, i, actor);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                runnable.run();
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                OverlayContinueButton.this.f12626N = true;
                OverlayContinueButton.this.m20687s();
                return super.touchDown(inputEvent, f, f2, i, i2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                OverlayContinueButton.this.f12626N = false;
                OverlayContinueButton.this.m20687s();
                super.touchUp(inputEvent, f, f2, i, i2);
            }
        });
        m20687s();
    }
}
