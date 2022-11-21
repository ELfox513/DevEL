package com.badlogic.gdx.p032ai.fsm;

import com.badlogic.gdx.p032ai.fsm.State;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.fsm.StackStateMachine */
/* loaded from: classes.dex */
public class StackStateMachine<E, S extends State<E>> extends DefaultStateMachine<E, S> {

    /* renamed from: e */
    public Array<S> f3301e;

    public StackStateMachine() {
        this(null, null, null);
    }

    @Override // com.badlogic.gdx.p032ai.fsm.DefaultStateMachine, com.badlogic.gdx.p032ai.fsm.StateMachine
    public void changeState(S s) {
        m24390a(s, true);
    }

    @Override // com.badlogic.gdx.p032ai.fsm.DefaultStateMachine, com.badlogic.gdx.p032ai.fsm.StateMachine
    public S getCurrentState() {
        return this.f3298b;
    }

    public StackStateMachine(E e) {
        this(e, null, null);
    }

    /* renamed from: a */
    public final void m24390a(S s, boolean z) {
        S s2;
        if (z && (s2 = this.f3298b) != null) {
            this.f3301e.add(s2);
        }
        S s3 = this.f3298b;
        if (s3 != null) {
            s3.exit(this.f3297a);
        }
        this.f3298b = s;
        s.enter(this.f3297a);
    }

    @Override // com.badlogic.gdx.p032ai.fsm.DefaultStateMachine, com.badlogic.gdx.p032ai.fsm.StateMachine
    public S getPreviousState() {
        Array<S> array = this.f3301e;
        if (array.size == 0) {
            return null;
        }
        return array.peek();
    }

    @Override // com.badlogic.gdx.p032ai.fsm.DefaultStateMachine, com.badlogic.gdx.p032ai.fsm.StateMachine
    public boolean revertToPreviousState() {
        Array<S> array = this.f3301e;
        if (array.size == 0) {
            return false;
        }
        m24390a(array.pop(), false);
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.DefaultStateMachine, com.badlogic.gdx.p032ai.fsm.StateMachine
    public void setInitialState(S s) {
        if (this.f3301e == null) {
            this.f3301e = new Array<>();
        }
        this.f3301e.clear();
        this.f3298b = s;
    }

    public StackStateMachine(E e, S s) {
        this(e, s, null);
    }

    public StackStateMachine(E e, S s, S s2) {
        super(e, s, s2);
    }
}
