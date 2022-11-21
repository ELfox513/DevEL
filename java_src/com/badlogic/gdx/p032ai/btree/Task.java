package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.p032ai.btree.BehaviorTree;
import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import com.badlogic.gdx.utils.reflect.ReflectionException;
@TaskConstraint
/* renamed from: com.badlogic.gdx.ai.btree.Task */
/* loaded from: classes.dex */
public abstract class Task<E> implements Pool.Poolable {
    public static TaskCloner TASK_CLONER;

    /* renamed from: a */
    public Status f3200a = Status.FRESH;

    /* renamed from: b */
    public Task<E> f3201b;

    /* renamed from: d */
    public BehaviorTree<E> f3202d;

    /* renamed from: k */
    public Task<E> f3203k;

    /* renamed from: com.badlogic.gdx.ai.btree.Task$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11151 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3204a;

        static {
            int[] iArr = new int[Status.values().length];
            f3204a = iArr;
            try {
                iArr[Status.SUCCEEDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3204a[Status.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.badlogic.gdx.ai.btree.Task$Status */
    /* loaded from: classes.dex */
    public enum Status {
        FRESH,
        RUNNING,
        FAILED,
        SUCCEEDED,
        CANCELLED
    }

    /* renamed from: a */
    public abstract int mo24471a(Task<E> task);

    /* renamed from: c */
    public abstract Task<E> mo24450c(Task<E> task);

    public final void cancel() {
        mo24470b(0);
        Status status = this.f3200a;
        this.f3200a = Status.CANCELLED;
        BehaviorTree<E> behaviorTree = this.f3202d;
        Array<BehaviorTree.Listener<E>> array = behaviorTree.listeners;
        if (array != null && array.size > 0) {
            behaviorTree.notifyStatusUpdated(this, status);
        }
        end();
    }

    public abstract void childFail(Task<E> task);

    public abstract void childRunning(Task<E> task, Task<E> task2);

    public abstract void childSuccess(Task<E> task);

    public void end() {
    }

    public abstract Task<E> getChild(int i);

    public abstract int getChildCount();

    public Task<E> getGuard() {
        return this.f3203k;
    }

    public final Status getStatus() {
        return this.f3200a;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3201b = null;
        this.f3203k = null;
        this.f3200a = Status.FRESH;
        this.f3202d = null;
    }

    public abstract void run();

    public void setGuard(Task<E> task) {
        this.f3203k = task;
    }

    public void start() {
    }

    public boolean checkGuard(Task<E> task) {
        Task<E> task2 = this.f3203k;
        if (task2 == null) {
            return true;
        }
        if (!task2.checkGuard(task)) {
            return false;
        }
        this.f3203k.setControl(task.f3202d.f3192r);
        this.f3203k.start();
        this.f3203k.run();
        int i = C11151.f3204a[this.f3203k.getStatus().ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalStateException("Illegal guard status '" + this.f3203k.getStatus() + "'. Guards must either succeed or fail in one step.");
    }

    public Task<E> cloneTask() {
        Task<E> cloneTask;
        TaskCloner taskCloner = TASK_CLONER;
        if (taskCloner != null) {
            try {
                return taskCloner.cloneTask(this);
            } finally {
                TaskCloneException taskCloneException = new TaskCloneException(e);
            }
        }
        try {
            Task<E> mo24450c = mo24450c((Task) ClassReflection.newInstance(getClass()));
            Task<E> task = this.f3203k;
            if (task == null) {
                cloneTask = null;
            } else {
                cloneTask = task.cloneTask();
            }
            mo24450c.f3203k = cloneTask;
            return mo24450c;
        } catch (ReflectionException e) {
            throw new TaskCloneException(e);
        }
    }

    public final void fail() {
        Status status = this.f3200a;
        this.f3200a = Status.FAILED;
        BehaviorTree<E> behaviorTree = this.f3202d;
        Array<BehaviorTree.Listener<E>> array = behaviorTree.listeners;
        if (array != null && array.size > 0) {
            behaviorTree.notifyStatusUpdated(this, status);
        }
        end();
        Task<E> task = this.f3201b;
        if (task != null) {
            task.childFail(this);
        }
    }

    public E getObject() {
        BehaviorTree<E> behaviorTree = this.f3202d;
        if (behaviorTree != null) {
            return behaviorTree.getObject();
        }
        throw new IllegalStateException("This task has never run");
    }

    public void resetTask() {
        if (this.f3200a == Status.RUNNING) {
            cancel();
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChild(i).resetTask();
        }
        this.f3200a = Status.FRESH;
        this.f3202d = null;
        this.f3201b = null;
    }

    public final void running() {
        Status status = this.f3200a;
        this.f3200a = Status.RUNNING;
        BehaviorTree<E> behaviorTree = this.f3202d;
        Array<BehaviorTree.Listener<E>> array = behaviorTree.listeners;
        if (array != null && array.size > 0) {
            behaviorTree.notifyStatusUpdated(this, status);
        }
        Task<E> task = this.f3201b;
        if (task != null) {
            task.childRunning(this, this);
        }
    }

    public final void setControl(Task<E> task) {
        this.f3201b = task;
        this.f3202d = task.f3202d;
    }

    public final void success() {
        Status status = this.f3200a;
        this.f3200a = Status.SUCCEEDED;
        BehaviorTree<E> behaviorTree = this.f3202d;
        Array<BehaviorTree.Listener<E>> array = behaviorTree.listeners;
        if (array != null && array.size > 0) {
            behaviorTree.notifyStatusUpdated(this, status);
        }
        end();
        Task<E> task = this.f3201b;
        if (task != null) {
            task.childSuccess(this);
        }
    }

    public final int addChild(Task<E> task) {
        int mo24471a = mo24471a(task);
        BehaviorTree<E> behaviorTree = this.f3202d;
        if (behaviorTree != null && behaviorTree.listeners != null) {
            behaviorTree.notifyChildAdded(this, mo24471a);
        }
        return mo24471a;
    }

    /* renamed from: b */
    public void mo24470b(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            Task<E> child = getChild(i);
            if (child.f3200a == Status.RUNNING) {
                child.cancel();
            }
            i++;
        }
    }
}
