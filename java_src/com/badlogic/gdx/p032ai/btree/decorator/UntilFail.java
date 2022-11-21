package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.LoopDecorator;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.UntilFail */
/* loaded from: classes.dex */
public class UntilFail<E> extends LoopDecorator<E> {
    public UntilFail() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        this.f3196q = true;
    }

    public UntilFail(Task<E> task) {
        super(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        success();
        this.f3196q = false;
    }
}
