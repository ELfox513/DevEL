package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.LoopDecorator */
/* loaded from: classes.dex */
public abstract class LoopDecorator<E> extends Decorator<E> {

    /* renamed from: q */
    public boolean f3196q;

    public LoopDecorator() {
    }

    public boolean condition() {
        return this.f3196q;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3196q = false;
        super.reset();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        this.f3196q = true;
        while (condition()) {
            Task<E> task = this.f3194p;
            if (task.f3200a == Task.Status.RUNNING) {
                task.run();
            } else {
                task.setControl(this);
                this.f3194p.start();
                if (this.f3194p.checkGuard(this)) {
                    this.f3194p.run();
                } else {
                    this.f3194p.fail();
                }
            }
        }
    }

    public LoopDecorator(Task<E> task) {
        super(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childRunning(Task<E> task, Task<E> task2) {
        super.childRunning(task, task2);
        this.f3196q = false;
    }
}
