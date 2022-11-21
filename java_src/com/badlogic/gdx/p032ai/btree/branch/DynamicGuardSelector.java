package com.badlogic.gdx.p032ai.btree.branch;

import com.badlogic.gdx.p032ai.btree.BranchTask;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.btree.branch.DynamicGuardSelector */
/* loaded from: classes.dex */
public class DynamicGuardSelector<E> extends BranchTask<E> {

    /* renamed from: q */
    public Task<E> f3206q;

    public DynamicGuardSelector() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.BranchTask, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        ((DynamicGuardSelector) task).f3206q = null;
        return super.mo24450c(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        this.f3206q = null;
        fail();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        this.f3206q = null;
        success();
    }

    @Override // com.badlogic.gdx.p032ai.btree.BranchTask, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3206q = null;
        super.reset();
    }

    public DynamicGuardSelector(Task<E>... taskArr) {
        super(new Array(taskArr));
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childRunning(Task<E> task, Task<E> task2) {
        this.f3206q = task;
        running();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        Task<E> task;
        int i = this.f3193p.size;
        int i2 = 0;
        while (true) {
            if (i2 < i) {
                task = this.f3193p.get(i2);
                if (task.checkGuard(this)) {
                    break;
                }
                i2++;
            } else {
                task = null;
                break;
            }
        }
        Task<E> task2 = this.f3206q;
        if (task2 != null && task2 != task) {
            task2.cancel();
            this.f3206q = null;
        }
        if (task == null) {
            fail();
            return;
        }
        if (this.f3206q == null) {
            this.f3206q = task;
            task.setControl(this);
            this.f3206q.start();
        }
        this.f3206q.run();
    }

    public DynamicGuardSelector(Array<Task<E>> array) {
        super(array);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void resetTask() {
        super.resetTask();
        this.f3206q = null;
    }
}
