package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class InputListener implements EventListener {

    /* renamed from: a */
    public static final Vector2 f5667a = new Vector2();

    /* renamed from: com.badlogic.gdx.scenes.scene2d.InputListener$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C12891 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5668a;

        static {
            int[] iArr = new int[InputEvent.Type.values().length];
            f5668a = iArr;
            try {
                iArr[InputEvent.Type.keyDown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5668a[InputEvent.Type.keyUp.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5668a[InputEvent.Type.keyTyped.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5668a[InputEvent.Type.touchDown.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5668a[InputEvent.Type.touchUp.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5668a[InputEvent.Type.touchDragged.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5668a[InputEvent.Type.mouseMoved.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5668a[InputEvent.Type.scrolled.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5668a[InputEvent.Type.enter.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f5668a[InputEvent.Type.exit.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public void enter(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
    }

    public void exit(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
    }

    public boolean keyDown(InputEvent inputEvent, int i) {
        return false;
    }

    public boolean keyTyped(InputEvent inputEvent, char c) {
        return false;
    }

    public boolean keyUp(InputEvent inputEvent, int i) {
        return false;
    }

    public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
        return false;
    }

    public boolean scrolled(InputEvent inputEvent, float f, float f2, float f3, float f4) {
        return false;
    }

    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
        return false;
    }

    public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
    }

    public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.EventListener
    public boolean handle(Event event) {
        if (!(event instanceof InputEvent)) {
            return false;
        }
        InputEvent inputEvent = (InputEvent) event;
        int[] iArr = C12891.f5668a;
        int i = iArr[inputEvent.getType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    Actor listenerActor = inputEvent.getListenerActor();
                    Vector2 vector2 = f5667a;
                    inputEvent.toCoordinates(listenerActor, vector2);
                    switch (iArr[inputEvent.getType().ordinal()]) {
                        case 4:
                            boolean z = touchDown(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getPointer(), inputEvent.getButton());
                            if (z && inputEvent.getTouchFocus()) {
                                inputEvent.getStage().addTouchFocus(this, inputEvent.getListenerActor(), inputEvent.getTarget(), inputEvent.getPointer(), inputEvent.getButton());
                            }
                            return z;
                        case 5:
                            touchUp(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getPointer(), inputEvent.getButton());
                            return true;
                        case 6:
                            touchDragged(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getPointer());
                            return true;
                        case 7:
                            return mouseMoved(inputEvent, vector2.f5527x, vector2.f5528y);
                        case 8:
                            return scrolled(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getScrollAmountX(), inputEvent.getScrollAmountY());
                        case 9:
                            enter(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getPointer(), inputEvent.getRelatedActor());
                            return false;
                        case 10:
                            exit(inputEvent, vector2.f5527x, vector2.f5528y, inputEvent.getPointer(), inputEvent.getRelatedActor());
                            return false;
                        default:
                            return false;
                    }
                }
                return keyTyped(inputEvent, inputEvent.getCharacter());
            }
            return keyUp(inputEvent, inputEvent.getKeyCode());
        }
        return keyDown(inputEvent, inputEvent.getKeyCode());
    }
}
