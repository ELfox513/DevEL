package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
@TaskConstraint(maxChildren = 1, minChildren = 1)
/* renamed from: com.badlogic.gdx.ai.btree.Decorator */
/* loaded from: classes.dex */
public abstract class Decorator<E> extends Task<E> {

    /* renamed from: p */
    public Task<E> f3194p;

    public Decorator() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        fail();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childRunning(Task<E> task, Task<E> task2) {
        running();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        success();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public int getChildCount() {
        return this.f3194p == null ? 0 : 1;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3194p = null;
        super.reset();
    }

    public Decorator(Task<E> task) {
        this.f3194p = task;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: a */
    public int mo24471a(Task<E> task) {
        if (this.f3194p == null) {
            this.f3194p = task;
            return 0;
        }
        throw new IllegalStateException("A decorator task cannot have more than one child");
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        Task<E> task2 = this.f3194p;
        if (task2 != null) {
            ((Decorator) task).f3194p = task2.cloneTask();
        }
        return task;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public Task<E> getChild(int i) {
        Task<E> task;
        if (i == 0 && (task = this.f3194p) != null) {
            return task;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + getChildCount());
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        Task<E> task = this.f3194p;
        if (task.f3200a == Task.Status.RUNNING) {
            task.run();
            return;
        }
        task.setControl(this);
        this.f3194p.start();
        if (this.f3194p.checkGuard(this)) {
            this.f3194p.run();
        } else {
            this.f3194p.fail();
        }
    }
}
