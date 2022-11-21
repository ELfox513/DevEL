package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.Decorator;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.AlwaysFail */
/* loaded from: classes.dex */
public class AlwaysFail<E> extends Decorator<E> {
    public AlwaysFail() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        childFail(task);
    }

    public AlwaysFail(Task<E> task) {
        super(task);
    }
}
