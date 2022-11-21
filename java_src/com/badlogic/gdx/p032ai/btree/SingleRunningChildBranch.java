package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.btree.SingleRunningChildBranch */
/* loaded from: classes.dex */
public abstract class SingleRunningChildBranch<E> extends BranchTask<E> {

    /* renamed from: q */
    public Task<E> f3197q;

    /* renamed from: r */
    public int f3198r;

    /* renamed from: s */
    public Task<E>[] f3199s;

    public SingleRunningChildBranch() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.BranchTask, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        ((SingleRunningChildBranch) task).f3199s = null;
        return super.mo24450c(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        this.f3197q = null;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        this.f3197q = null;
    }

    @Override // com.badlogic.gdx.p032ai.btree.BranchTask, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3198r = 0;
        this.f3197q = null;
        this.f3199s = null;
        super.reset();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        this.f3198r = 0;
        this.f3197q = null;
    }

    public SingleRunningChildBranch(Array<Task<E>> array) {
        super(array);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childRunning(Task<E> task, Task<E> task2) {
        this.f3197q = task;
        running();
    }

    /* renamed from: d */
    public Task<E>[] m24472d() {
        Array<Task<E>> array = this.f3193p;
        int i = array.size;
        Task<E>[] taskArr = new Task[i];
        System.arraycopy(array.items, 0, taskArr, 0, i);
        return taskArr;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        Task<E> task = this.f3197q;
        if (task != null) {
            task.run();
            return;
        }
        int i = this.f3198r;
        Array<Task<E>> array = this.f3193p;
        int i2 = array.size;
        if (i < i2) {
            if (this.f3199s != null) {
                int i3 = i2 - 1;
                if (i < i3) {
                    int random = MathUtils.random(i, i3);
                    Task<E>[] taskArr = this.f3199s;
                    int i4 = this.f3198r;
                    Task<E> task2 = taskArr[i4];
                    taskArr[i4] = taskArr[random];
                    taskArr[random] = task2;
                }
                this.f3197q = this.f3199s[this.f3198r];
            } else {
                this.f3197q = array.get(i);
            }
            this.f3197q.setControl(this);
            this.f3197q.start();
            if (!this.f3197q.checkGuard(this)) {
                this.f3197q.fail();
            } else {
                run();
            }
        }
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: b */
    public void mo24470b(int i) {
        super.mo24470b(i);
        this.f3197q = null;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void resetTask() {
        super.resetTask();
        this.f3198r = 0;
        this.f3197q = null;
        this.f3199s = null;
    }
}
