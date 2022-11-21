package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.utils.reflect.ClassReflection;
/* loaded from: classes.dex */
public abstract class EventAction<T extends Event> extends Action {

    /* renamed from: k */
    public final Class<? extends T> f5717k;

    /* renamed from: p */
    public boolean f5718p;

    /* renamed from: q */
    public boolean f5719q;

    /* renamed from: r */
    public final EventListener f5720r = new EventListener() { // from class: com.badlogic.gdx.scenes.scene2d.actions.EventAction.1
        @Override // com.badlogic.gdx.scenes.scene2d.EventListener
        public boolean handle(Event event) {
            EventAction eventAction = EventAction.this;
            if (eventAction.f5719q && ClassReflection.isInstance(eventAction.f5717k, event)) {
                EventAction eventAction2 = EventAction.this;
                eventAction2.f5718p = eventAction2.handle(event);
                return EventAction.this.f5718p;
            }
            return false;
        }
    };

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        this.f5719q = true;
        return this.f5718p;
    }

    public abstract boolean handle(T t);

    public boolean isActive() {
        return this.f5719q;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        this.f5718p = false;
        this.f5719q = false;
    }

    public void setActive(boolean z) {
        this.f5719q = z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void setTarget(Actor actor) {
        Actor actor2 = this.f5618b;
        if (actor2 != null) {
            actor2.removeListener(this.f5720r);
        }
        super.setTarget(actor);
        if (actor != null) {
            actor.addListener(this.f5720r);
        }
    }

    public EventAction(Class<? extends T> cls) {
        this.f5717k = cls;
    }
}
