package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.actors.LabelButton */
/* loaded from: classes2.dex */
public class LabelButton extends Label {

    /* renamed from: a0 */
    public boolean f12597a0;
    public Color hoverColor;
    public Color normalColor;

    /* renamed from: k */
    public final void m20694k() {
        if (this.f12597a0) {
            setColor(this.hoverColor);
        } else {
            setColor(this.normalColor);
        }
    }

    public void setColors(Color color, Color color2) {
        this.normalColor = color;
        this.hoverColor = color2;
        m20694k();
    }

    public LabelButton(CharSequence charSequence, Label.LabelStyle labelStyle, final Runnable runnable) {
        super(charSequence, labelStyle);
        Color color = MaterialColor.LIGHT_BLUE.P300;
        this.normalColor = color;
        this.hoverColor = Color.WHITE;
        setColor(color);
        setTouchable(Touchable.enabled);
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.LabelButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.enter(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    LabelButton.this.f12597a0 = true;
                    LabelButton.this.m20694k();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.exit(inputEvent, f, f2, i, actor);
                if (i == -1) {
                    LabelButton.this.f12597a0 = false;
                    LabelButton.this.m20694k();
                }
            }
        });
    }
}
