package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.p033ui.Skin;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.FocusListener;
import com.badlogic.gdx.utils.Pools;
import com.prineside.tdi2.Game;
/* renamed from: com.prineside.tdi2.ui.actors.TextFieldXPlatform */
/* loaded from: classes2.dex */
public class TextFieldXPlatform extends TextField {

    /* renamed from: com.prineside.tdi2.ui.actors.TextFieldXPlatform$1 */
    /* loaded from: classes2.dex */
    public class C24751 extends ClickListener {
        public C24751() {
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
        public void clicked(InputEvent inputEvent, float f, float f2) {
            TextFieldXPlatform.this.getStage().unfocusAll();
            Input.TextInputListener textInputListener = new Input.TextInputListener() { // from class: com.prineside.tdi2.ui.actors.TextFieldXPlatform.1.1
                @Override // com.badlogic.gdx.Input.TextInputListener
                public void canceled() {
                    TextFieldXPlatform.this.getStage().unfocusAll();
                }

                @Override // com.badlogic.gdx.Input.TextInputListener
                public void input(final String str) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.actors.TextFieldXPlatform.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TextFieldXPlatform.this.setText(str);
                            TextFieldXPlatform.this.getStage().unfocusAll();
                            ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
                            TextFieldXPlatform.this.fire(changeEvent);
                            Pools.free(changeEvent);
                        }
                    });
                }
            };
            if (TextFieldXPlatform.this.isPasswordMode()) {
                Game.f8589i.actionResolver.getMobilePasswordInput(textInputListener, "", TextFieldXPlatform.this.getText(), "");
            } else {
                Gdx.input.getTextInput(textInputListener, "", TextFieldXPlatform.this.getText(), "");
            }
        }
    }

    public TextFieldXPlatform(String str, Skin skin) {
        super(str, skin);
        init();
    }

    public TextFieldXPlatform(String str, TextField.TextFieldStyle textFieldStyle) {
        super(str, textFieldStyle);
        init();
    }

    public final void init() {
        if (!getStyle().font.getData().markupEnabled) {
            if (Gdx.app.getType() == Application.ApplicationType.Android) {
                addListener(new C24751());
                return;
            } else if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
                addListener(new FocusListener() { // from class: com.prineside.tdi2.ui.actors.TextFieldXPlatform.2
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.FocusListener
                    public void keyboardFocusChanged(FocusListener.FocusEvent focusEvent, Actor actor, boolean z) {
                        Game.f8589i.actionResolver.handleTextFieldFocus(focusEvent, TextFieldXPlatform.this, z);
                    }
                });
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException("font must have disabled markup");
    }
}
