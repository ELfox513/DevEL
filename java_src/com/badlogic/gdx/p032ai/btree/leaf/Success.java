package com.badlogic.gdx.p032ai.btree.leaf;

import com.badlogic.gdx.p032ai.btree.LeafTask;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.leaf.Success */
/* loaded from: classes.dex */
public class Success<E> extends LeafTask<E> {
    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        return task;
    }

    @Override // com.badlogic.gdx.p032ai.btree.LeafTask
    public Task.Status execute() {
        return Task.Status.SUCCEEDED;
    }
}
