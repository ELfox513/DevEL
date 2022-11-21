package com.badlogic.gdx.p032ai.btree.branch;

import com.badlogic.gdx.p032ai.btree.SingleRunningChildBranch;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.btree.branch.Sequence */
/* loaded from: classes.dex */
public class Sequence<E> extends SingleRunningChildBranch<E> {
    public Sequence() {
    }

    public Sequence(Array<Task<E>> array) {
        super(array);
    }

    public Sequence(Task<E>... taskArr) {
        super(new Array(taskArr));
    }

    @Override // com.badlogic.gdx.p032ai.btree.SingleRunningChildBranch, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        super.childFail(task);
        fail();
    }

    @Override // com.badlogic.gdx.p032ai.btree.SingleRunningChildBranch, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        super.childSuccess(task);
        int i = this.f3198r + 1;
        this.f3198r = i;
        if (i < this.f3193p.size) {
            run();
        } else {
            success();
        }
    }
}
