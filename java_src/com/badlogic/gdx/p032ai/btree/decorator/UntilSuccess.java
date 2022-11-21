package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.LoopDecorator;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.UntilSuccess */
/* loaded from: classes.dex */
public class UntilSuccess<E> extends LoopDecorator<E> {
    public UntilSuccess() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        this.f3196q = true;
    }

    public UntilSuccess(Task<E> task) {
        super(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        success();
        this.f3196q = false;
    }
}
