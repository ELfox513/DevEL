package com.badlogic.gdx.p032ai.btree.branch;

import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.btree.branch.RandomSelector */
/* loaded from: classes.dex */
public class RandomSelector<E> extends Selector<E> {
    public RandomSelector() {
    }

    public RandomSelector(Task<E>... taskArr) {
        super(new Array(taskArr));
    }

    public RandomSelector(Array<Task<E>> array) {
        super(array);
    }

    @Override // com.badlogic.gdx.p032ai.btree.SingleRunningChildBranch, com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        super.start();
        if (this.f3199s == null) {
            this.f3199s = m24472d();
        }
    }
}
