package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.Decorator;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.p032ai.utils.NonBlockingSemaphore;
import com.badlogic.gdx.p032ai.utils.NonBlockingSemaphoreRepository;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.SemaphoreGuard */
/* loaded from: classes.dex */
public class SemaphoreGuard<E> extends Decorator<E> {
    @TaskAttribute(required = true)
    public String name;

    /* renamed from: q */
    public transient NonBlockingSemaphore f3216q;

    /* renamed from: r */
    public boolean f3217r;

    public SemaphoreGuard() {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        SemaphoreGuard semaphoreGuard = (SemaphoreGuard) task;
        semaphoreGuard.name = this.name;
        semaphoreGuard.f3216q = null;
        semaphoreGuard.f3217r = false;
        return super.mo24450c(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.name = null;
        this.f3216q = null;
        this.f3217r = false;
        super.reset();
    }

    public SemaphoreGuard(Task<E> task) {
        super(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void end() {
        if (this.f3217r) {
            if (this.f3216q == null) {
                this.f3216q = NonBlockingSemaphoreRepository.getSemaphore(this.name);
            }
            this.f3216q.release();
            this.f3217r = false;
        }
        super.end();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        if (this.f3217r) {
            super.run();
        } else {
            fail();
        }
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        if (this.f3216q == null) {
            this.f3216q = NonBlockingSemaphoreRepository.getSemaphore(this.name);
        }
        this.f3217r = this.f3216q.acquire();
        super.start();
    }

    public SemaphoreGuard(String str) {
        this.name = str;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void resetTask() {
        super.resetTask();
        this.f3216q = null;
        this.f3217r = false;
    }

    public SemaphoreGuard(String str, Task<E> task) {
        super(task);
        this.name = str;
    }
}
