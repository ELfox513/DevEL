package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public abstract class FocusListener implements EventListener {

    /* renamed from: com.badlogic.gdx.scenes.scene2d.utils.FocusListener$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C13451 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6370a;

        static {
            int[] iArr = new int[FocusEvent.Type.values().length];
            f6370a = iArr;
            try {
                iArr[FocusEvent.Type.keyboard.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6370a[FocusEvent.Type.scroll.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void keyboardFocusChanged(FocusEvent focusEvent, Actor actor, boolean z) {
    }

    public void scrollFocusChanged(FocusEvent focusEvent, Actor actor, boolean z) {
    }

    /* loaded from: classes.dex */
    public static class FocusEvent extends Event {

        /* renamed from: t */
        public boolean f6371t;

        /* renamed from: u */
        public Type f6372u;

        /* renamed from: v */
        public Actor f6373v;

        /* loaded from: classes.dex */
        public enum Type {
            keyboard,
            scroll
        }

        @Null
        public Actor getRelatedActor() {
            return this.f6373v;
        }

        public Type getType() {
            return this.f6372u;
        }

        public boolean isFocused() {
            return this.f6371t;
        }

        public void setFocused(boolean z) {
            this.f6371t = z;
        }

        public void setRelatedActor(@Null Actor actor) {
            this.f6373v = actor;
        }

        public void setType(Type type) {
            this.f6372u = type;
        }

        @Override // com.badlogic.gdx.scenes.scene2d.Event, com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            super.reset();
            this.f6373v = null;
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.EventListener
    public boolean handle(Event event) {
        if (!(event instanceof FocusEvent)) {
            return false;
        }
        FocusEvent focusEvent = (FocusEvent) event;
        int i = C13451.f6370a[focusEvent.getType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                scrollFocusChanged(focusEvent, event.getTarget(), focusEvent.isFocused());
            }
        } else {
            keyboardFocusChanged(focusEvent, event.getTarget(), focusEvent.isFocused());
        }
        return false;
    }
}
