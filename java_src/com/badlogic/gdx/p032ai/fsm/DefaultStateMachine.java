package com.badlogic.gdx.p032ai.fsm;

import com.badlogic.gdx.p032ai.fsm.State;
import com.badlogic.gdx.p032ai.msg.Telegram;
/* renamed from: com.badlogic.gdx.ai.fsm.DefaultStateMachine */
/* loaded from: classes.dex */
public class DefaultStateMachine<E, S extends State<E>> implements StateMachine<E, S> {

    /* renamed from: a */
    public E f3297a;

    /* renamed from: b */
    public S f3298b;

    /* renamed from: c */
    public S f3299c;

    /* renamed from: d */
    public S f3300d;

    public DefaultStateMachine() {
        this(null, null, null);
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public S getCurrentState() {
        return this.f3298b;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public S getGlobalState() {
        return this.f3300d;
    }

    public E getOwner() {
        return this.f3297a;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public S getPreviousState() {
        return this.f3299c;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public boolean isInState(S s) {
        return this.f3298b == s;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public void setGlobalState(S s) {
        this.f3300d = s;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public void setInitialState(S s) {
        this.f3299c = null;
        this.f3298b = s;
    }

    public void setOwner(E e) {
        this.f3297a = e;
    }

    public DefaultStateMachine(E e) {
        this(e, null, null);
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public void changeState(S s) {
        S s2 = this.f3298b;
        this.f3299c = s2;
        if (s2 != null) {
            s2.exit(this.f3297a);
        }
        this.f3298b = s;
        if (s != null) {
            s.enter(this.f3297a);
        }
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine, com.badlogic.gdx.p032ai.msg.Telegraph
    public boolean handleMessage(Telegram telegram) {
        S s = this.f3298b;
        if (s != null && s.onMessage(this.f3297a, telegram)) {
            return true;
        }
        S s2 = this.f3300d;
        if (s2 != null && s2.onMessage(this.f3297a, telegram)) {
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public boolean revertToPreviousState() {
        S s = this.f3299c;
        if (s == null) {
            return false;
        }
        changeState(s);
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.fsm.StateMachine
    public void update() {
        S s = this.f3300d;
        if (s != null) {
            s.update(this.f3297a);
        }
        S s2 = this.f3298b;
        if (s2 != null) {
            s2.update(this.f3297a);
        }
    }

    public DefaultStateMachine(E e, S s) {
        this(e, s, null);
    }

    public DefaultStateMachine(E e, S s, S s2) {
        this.f3297a = e;
        setInitialState(s);
        setGlobalState(s2);
    }
}
