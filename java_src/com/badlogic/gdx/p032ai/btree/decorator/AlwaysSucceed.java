package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.Decorator;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.AlwaysSucceed */
/* loaded from: classes.dex */
public class AlwaysSucceed<E> extends Decorator<E> {
    public AlwaysSucceed() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        childSuccess(task);
    }

    public AlwaysSucceed(Task<E> task) {
        super(task);
    }
}
