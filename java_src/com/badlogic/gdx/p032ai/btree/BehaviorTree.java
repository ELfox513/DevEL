package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.utils.Array;
import java.util.Iterator;
/* renamed from: com.badlogic.gdx.ai.btree.BehaviorTree */
/* loaded from: classes.dex */
public class BehaviorTree<E> extends Task<E> {
    public Array<Listener<E>> listeners;

    /* renamed from: p */
    public Task<E> f3190p;

    /* renamed from: q */
    public E f3191q;

    /* renamed from: r */
    public GuardEvaluator<E> f3192r;

    /* renamed from: com.badlogic.gdx.ai.btree.BehaviorTree$GuardEvaluator */
    /* loaded from: classes.dex */
    public static final class GuardEvaluator<E> extends Task<E> {
        public GuardEvaluator() {
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        /* renamed from: a */
        public int mo24471a(Task<E> task) {
            return 0;
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        /* renamed from: c */
        public Task<E> mo24450c(Task<E> task) {
            return null;
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        public void childFail(Task<E> task) {
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        public void childRunning(Task<E> task, Task<E> task2) {
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        public void childSuccess(Task<E> task) {
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        public Task<E> getChild(int i) {
            return null;
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        public int getChildCount() {
            return 0;
        }

        @Override // com.badlogic.gdx.p032ai.btree.Task
        public void run() {
        }

        public GuardEvaluator(BehaviorTree<E> behaviorTree) {
            this.f3202d = behaviorTree;
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.BehaviorTree$Listener */
    /* loaded from: classes.dex */
    public interface Listener<E> {
        void childAdded(Task<E> task, int i);

        void statusUpdated(Task<E> task, Task.Status status);
    }

    public BehaviorTree() {
        this(null, null);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        ((BehaviorTree) task).f3190p = this.f3190p.cloneTask();
        return task;
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
        return this.f3190p == null ? 0 : 1;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public E getObject() {
        return this.f3191q;
    }

    public void removeListener(Listener<E> listener) {
        Array<Listener<E>> array = this.listeners;
        if (array != null) {
            array.removeValue(listener, true);
        }
    }

    public void removeListeners() {
        Array<Listener<E>> array = this.listeners;
        if (array != null) {
            array.clear();
        }
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void run() {
    }

    public void setObject(E e) {
        this.f3191q = e;
    }

    public BehaviorTree(Task<E> task) {
        this(task, null);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: a */
    public int mo24471a(Task<E> task) {
        if (this.f3190p == null) {
            this.f3190p = task;
            return 0;
        }
        throw new IllegalStateException("A behavior tree cannot have more than one root task");
    }

    public void addListener(Listener<E> listener) {
        if (this.listeners == null) {
            this.listeners = new Array<>();
        }
        this.listeners.add(listener);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public Task<E> getChild(int i) {
        Task<E> task;
        if (i == 0 && (task = this.f3190p) != null) {
            return task;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + getChildCount());
    }

    public void notifyChildAdded(Task<E> task, int i) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).childAdded(task, i);
        }
    }

    public void notifyStatusUpdated(Task<E> task, Task.Status status) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).statusUpdated(task, status);
        }
    }

    public void step() {
        Task<E> task = this.f3190p;
        if (task.f3200a == Task.Status.RUNNING) {
            task.run();
            return;
        }
        task.setControl(this);
        this.f3190p.start();
        if (this.f3190p.checkGuard(this)) {
            this.f3190p.run();
        } else {
            this.f3190p.fail();
        }
    }

    public BehaviorTree(Task<E> task, E e) {
        this.f3190p = task;
        this.f3191q = e;
        this.f3202d = this;
        this.f3192r = new GuardEvaluator<>(this);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        removeListeners();
        this.f3190p = null;
        this.f3191q = null;
        this.listeners = null;
        super.reset();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void resetTask() {
        super.resetTask();
        this.f3202d = this;
    }
}
