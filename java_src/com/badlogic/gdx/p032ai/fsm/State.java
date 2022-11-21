package com.badlogic.gdx.p032ai.fsm;

import com.badlogic.gdx.p032ai.msg.Telegram;
/* renamed from: com.badlogic.gdx.ai.fsm.State */
/* loaded from: classes.dex */
public interface State<E> {
    void enter(E e);

    void exit(E e);

    boolean onMessage(E e, Telegram telegram);

    void update(E e);
}
