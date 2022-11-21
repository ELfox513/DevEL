package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.Decorator;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.Invert */
/* loaded from: classes.dex */
public class Invert<E> extends Decorator<E> {
    public Invert() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        super.childSuccess(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        super.childFail(task);
    }

    public Invert(Task<E> task) {
        super(task);
    }
}
