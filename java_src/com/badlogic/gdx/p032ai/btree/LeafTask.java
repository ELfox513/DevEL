package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
@TaskConstraint(maxChildren = 0, minChildren = 0)
/* renamed from: com.badlogic.gdx.ai.btree.LeafTask */
/* loaded from: classes.dex */
public abstract class LeafTask<E> extends Task<E> {

    /* renamed from: com.badlogic.gdx.ai.btree.LeafTask$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11141 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3195a;

        static {
            int[] iArr = new int[Task.Status.values().length];
            f3195a = iArr;
            try {
                iArr[Task.Status.SUCCEEDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3195a[Task.Status.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3195a[Task.Status.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: a */
    public int mo24471a(Task<E> task) {
        throw new IllegalStateException("A leaf task cannot have any children");
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public final void childFail(Task<E> task) {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public final void childRunning(Task<E> task, Task<E> task2) {
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public final void childSuccess(Task<E> task) {
    }

    public abstract Task.Status execute();

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public Task<E> getChild(int i) {
        throw new IndexOutOfBoundsException("A leaf task can not have any child");
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public int getChildCount() {
        return 0;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public final void run() {
        Task.Status execute = execute();
        if (execute != null) {
            int i = C11141.f3195a[execute.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        running();
                        return;
                    }
                    throw new IllegalStateException("Invalid status '" + execute.name() + "' returned by the execute method");
                }
                fail();
                return;
            }
            success();
            return;
        }
        throw new IllegalStateException("Invalid status 'null' returned by the execute method");
    }
}
