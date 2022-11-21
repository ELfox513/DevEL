package com.badlogic.gdx.p032ai.btree.branch;

import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.btree.branch.RandomSequence */
/* loaded from: classes.dex */
public class RandomSequence<E> extends Sequence<E> {
    public RandomSequence() {
    }

    public RandomSequence(Array<Task<E>> array) {
        super(array);
    }

    public RandomSequence(Task<E>... taskArr) {
        super(new Array(taskArr));
    }

    @Override // com.badlogic.gdx.p032ai.btree.SingleRunningChildBranch, com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        super.start();
        if (this.f3199s == null) {
            this.f3199s = m24472d();
        }
    }
}
