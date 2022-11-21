package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.p033ui.Window;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.FocusListener;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.ObjectMap;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Dialog */
/* loaded from: classes.dex */
public class Dialog extends Window {

    /* renamed from: K0 */
    public Table f5855K0;

    /* renamed from: L0 */
    public Table f5856L0;
    @Null

    /* renamed from: M0 */
    public Skin f5857M0;

    /* renamed from: N0 */
    public ObjectMap<Actor, Object> f5858N0;

    /* renamed from: O0 */
    public boolean f5859O0;

    /* renamed from: P0 */
    public Actor f5860P0;

    /* renamed from: Q0 */
    public Actor f5861Q0;

    /* renamed from: R0 */
    public FocusListener f5862R0;

    /* renamed from: S0 */
    public InputListener f5863S0;

    public Dialog(String str, Skin skin) {
        super(str, (Window.WindowStyle) skin.get(Window.WindowStyle.class));
        this.f5858N0 = new ObjectMap<>();
        this.f5863S0 = new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                inputEvent.cancel();
                return false;
            }
        };
        setSkin(skin);
        this.f5857M0 = skin;
        m23837B();
    }

    /* renamed from: B */
    public final void m23837B() {
        setModal(true);
        defaults().space(6.0f);
        Table table = new Table(this.f5857M0);
        this.f5855K0 = table;
        add((Dialog) table).expand().fill();
        row();
        Table table2 = new Table(this.f5857M0);
        this.f5856L0 = table2;
        add((Dialog) table2).fillX();
        this.f5855K0.defaults().space(6.0f);
        this.f5856L0.defaults().space(6.0f);
        this.f5856L0.addListener(new ChangeListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                Dialog dialog;
                if (!Dialog.this.f5858N0.containsKey(actor)) {
                    return;
                }
                while (true) {
                    Group parent = actor.getParent();
                    dialog = Dialog.this;
                    if (parent == dialog.f5856L0) {
                        break;
                    }
                    actor = actor.getParent();
                }
                dialog.m23836C(dialog.f5858N0.get(actor));
                Dialog dialog2 = Dialog.this;
                if (!dialog2.f5859O0) {
                    dialog2.hide();
                }
                Dialog.this.f5859O0 = false;
            }
        });
        this.f5862R0 = new FocusListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.FocusListener
            public void keyboardFocusChanged(FocusListener.FocusEvent focusEvent, Actor actor, boolean z) {
                if (z) {
                    return;
                }
                m23835a(focusEvent);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.FocusListener
            public void scrollFocusChanged(FocusListener.FocusEvent focusEvent, Actor actor, boolean z) {
                if (z) {
                    return;
                }
                m23835a(focusEvent);
            }

            /* renamed from: a */
            public final void m23835a(FocusListener.FocusEvent focusEvent) {
                Actor relatedActor;
                Stage stage = Dialog.this.getStage();
                if (Dialog.this.f6269z0 && stage != null && stage.getRoot().getChildren().size > 0 && stage.getRoot().getChildren().peek() == Dialog.this && (relatedActor = focusEvent.getRelatedActor()) != null && !relatedActor.isDescendantOf(Dialog.this) && !relatedActor.equals(Dialog.this.f5860P0) && !relatedActor.equals(Dialog.this.f5861Q0)) {
                    focusEvent.cancel();
                }
            }
        };
    }

    /* renamed from: C */
    public void m23836C(@Null Object obj) {
    }

    public Dialog button(@Null String str) {
        return button(str, (Object) null);
    }

    public void cancel() {
        this.f5859O0 = true;
    }

    public Table getButtonTable() {
        return this.f5856L0;
    }

    public Table getContentTable() {
        return this.f5855K0;
    }

    public void hide(@Null Action action) {
        Stage stage = getStage();
        if (stage != null) {
            removeListener(this.f5862R0);
            Actor actor = this.f5860P0;
            if (actor != null && actor.getStage() == null) {
                this.f5860P0 = null;
            }
            Actor keyboardFocus = stage.getKeyboardFocus();
            if (keyboardFocus == null || keyboardFocus.isDescendantOf(this)) {
                stage.setKeyboardFocus(this.f5860P0);
            }
            Actor actor2 = this.f5861Q0;
            if (actor2 != null && actor2.getStage() == null) {
                this.f5861Q0 = null;
            }
            Actor scrollFocus = stage.getScrollFocus();
            if (scrollFocus == null || scrollFocus.isDescendantOf(this)) {
                stage.setScrollFocus(this.f5861Q0);
            }
        }
        if (action != null) {
            addCaptureListener(this.f5863S0);
            addAction(Actions.sequence(action, Actions.removeListener(this.f5863S0, true), Actions.removeActor()));
            return;
        }
        remove();
    }

    public Dialog key(final int i, @Null final Object obj) {
        addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.4
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean keyDown(InputEvent inputEvent, int i2) {
                if (i == i2) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C12954 c12954 = C12954.this;
                            Dialog.this.m23836C(obj);
                            Dialog dialog = Dialog.this;
                            if (!dialog.f5859O0) {
                                dialog.hide();
                            }
                            Dialog.this.f5859O0 = false;
                        }
                    });
                    return false;
                }
                return false;
            }
        });
        return this;
    }

    public void setObject(Actor actor, @Null Object obj) {
        this.f5858N0.put(actor, obj);
    }

    public Dialog show(Stage stage, @Null Action action) {
        clearActions();
        removeCaptureListener(this.f5863S0);
        this.f5860P0 = null;
        Actor keyboardFocus = stage.getKeyboardFocus();
        if (keyboardFocus != null && !keyboardFocus.isDescendantOf(this)) {
            this.f5860P0 = keyboardFocus;
        }
        this.f5861Q0 = null;
        Actor scrollFocus = stage.getScrollFocus();
        if (scrollFocus != null && !scrollFocus.isDescendantOf(this)) {
            this.f5861Q0 = scrollFocus;
        }
        stage.addActor(this);
        pack();
        stage.cancelTouchFocus();
        stage.setKeyboardFocus(this);
        stage.setScrollFocus(this);
        if (action != null) {
            addAction(action);
        }
        return this;
    }

    public Dialog text(@Null String str) {
        Skin skin = this.f5857M0;
        if (skin != null) {
            return text(str, (Label.LabelStyle) skin.get(Label.LabelStyle.class));
        }
        throw new IllegalStateException("This method may only be used if the dialog was constructed with a Skin.");
    }

    public Dialog button(@Null String str, @Null Object obj) {
        Skin skin = this.f5857M0;
        if (skin != null) {
            return button(str, obj, (TextButton.TextButtonStyle) skin.get(TextButton.TextButtonStyle.class));
        }
        throw new IllegalStateException("This method may only be used if the dialog was constructed with a Skin.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: f */
    public void mo23796f(Stage stage) {
        if (stage == null) {
            addListener(this.f5862R0);
        } else {
            removeListener(this.f5862R0);
        }
        super.mo23796f(stage);
    }

    public Dialog text(@Null String str, Label.LabelStyle labelStyle) {
        return text(new Label(str, labelStyle));
    }

    public Dialog button(@Null String str, @Null Object obj, TextButton.TextButtonStyle textButtonStyle) {
        return button(new TextButton(str, textButtonStyle), obj);
    }

    public Dialog text(Label label) {
        this.f5855K0.add((Table) label);
        return this;
    }

    public Dialog button(Button button) {
        return button(button, (Object) null);
    }

    public Dialog(String str, Skin skin, String str2) {
        super(str, (Window.WindowStyle) skin.get(str2, Window.WindowStyle.class));
        this.f5858N0 = new ObjectMap<>();
        this.f5863S0 = new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                inputEvent.cancel();
                return false;
            }
        };
        setSkin(skin);
        this.f5857M0 = skin;
        m23837B();
    }

    public Dialog button(Button button, @Null Object obj) {
        this.f5856L0.add(button);
        setObject(button, obj);
        return this;
    }

    public void hide() {
        hide(Actions.fadeOut(0.4f, Interpolation.fade));
    }

    public Dialog(String str, Window.WindowStyle windowStyle) {
        super(str, windowStyle);
        this.f5858N0 = new ObjectMap<>();
        this.f5863S0 = new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Dialog.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                inputEvent.cancel();
                return false;
            }
        };
        m23837B();
    }

    public Dialog show(Stage stage) {
        show(stage, Actions.sequence(Actions.alpha(0.0f), Actions.fadeIn(0.4f, Interpolation.fade)));
        setPosition(Math.round((stage.getWidth() - getWidth()) / 2.0f), Math.round((stage.getHeight() - getHeight()) / 2.0f));
        return this;
    }
}
