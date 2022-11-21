package com.badlogic.gdx.p032ai.fsm;

import com.badlogic.gdx.p032ai.fsm.State;
import com.badlogic.gdx.p032ai.msg.Telegram;
import com.badlogic.gdx.p032ai.msg.Telegraph;
/* renamed from: com.badlogic.gdx.ai.fsm.StateMachine */
/* loaded from: classes.dex */
public interface StateMachine<E, S extends State<E>> extends Telegraph {
    void changeState(S s);

    S getCurrentState();

    S getGlobalState();

    S getPreviousState();

    @Override // com.badlogic.gdx.p032ai.msg.Telegraph
    boolean handleMessage(Telegram telegram);

    boolean isInState(S s);

    boolean revertToPreviousState();

    void setGlobalState(S s);

    void setInitialState(S s);

    void update();
}
