package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class InputEvent extends Event {

    /* renamed from: A */
    public int f5655A;

    /* renamed from: B */
    public char f5656B;
    @Null

    /* renamed from: C */
    public Actor f5657C;

    /* renamed from: D */
    public boolean f5658D = true;

    /* renamed from: t */
    public Type f5659t;

    /* renamed from: u */
    public float f5660u;

    /* renamed from: v */
    public float f5661v;

    /* renamed from: w */
    public float f5662w;

    /* renamed from: x */
    public float f5663x;

    /* renamed from: y */
    public int f5664y;

    /* renamed from: z */
    public int f5665z;

    /* loaded from: classes.dex */
    public enum Type {
        touchDown,
        touchUp,
        touchDragged,
        mouseMoved,
        enter,
        exit,
        scrolled,
        keyDown,
        keyUp,
        keyTyped
    }

    public int getButton() {
        return this.f5665z;
    }

    public char getCharacter() {
        return this.f5656B;
    }

    public int getKeyCode() {
        return this.f5655A;
    }

    public int getPointer() {
        return this.f5664y;
    }

    @Null
    public Actor getRelatedActor() {
        return this.f5657C;
    }

    public float getScrollAmountX() {
        return this.f5662w;
    }

    public float getScrollAmountY() {
        return this.f5663x;
    }

    public float getStageX() {
        return this.f5660u;
    }

    public float getStageY() {
        return this.f5661v;
    }

    public boolean getTouchFocus() {
        return this.f5658D;
    }

    public Type getType() {
        return this.f5659t;
    }

    public boolean isTouchFocusCancel() {
        return this.f5660u == -2.14748365E9f || this.f5661v == -2.14748365E9f;
    }

    public void setButton(int i) {
        this.f5665z = i;
    }

    public void setCharacter(char c) {
        this.f5656B = c;
    }

    public void setKeyCode(int i) {
        this.f5655A = i;
    }

    public void setPointer(int i) {
        this.f5664y = i;
    }

    public void setRelatedActor(@Null Actor actor) {
        this.f5657C = actor;
    }

    public void setScrollAmountX(float f) {
        this.f5662w = f;
    }

    public void setScrollAmountY(float f) {
        this.f5663x = f;
    }

    public void setStageX(float f) {
        this.f5660u = f;
    }

    public void setStageY(float f) {
        this.f5661v = f;
    }

    public void setTouchFocus(boolean z) {
        this.f5658D = z;
    }

    public void setType(Type type) {
        this.f5659t = type;
    }

    public String toString() {
        return this.f5659t.toString();
    }

    public Vector2 toCoordinates(Actor actor, Vector2 vector2) {
        vector2.set(this.f5660u, this.f5661v);
        actor.stageToLocalCoordinates(vector2);
        return vector2;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Event, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5657C = null;
        this.f5665z = -1;
    }
}
