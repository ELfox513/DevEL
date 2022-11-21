package com.badlogic.gdx.p032ai.btree;

import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
import com.badlogic.gdx.utils.Array;
@TaskConstraint(minChildren = 1)
/* renamed from: com.badlogic.gdx.ai.btree.BranchTask */
/* loaded from: classes.dex */
public abstract class BranchTask<E> extends Task<E> {

    /* renamed from: p */
    public Array<Task<E>> f3193p;

    public BranchTask() {
        this(new Array());
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        BranchTask branchTask = (BranchTask) task;
        if (this.f3193p != null) {
            int i = 0;
            while (true) {
                Array<Task<E>> array = this.f3193p;
                if (i >= array.size) {
                    break;
                }
                branchTask.f3193p.add(array.get(i).cloneTask());
                i++;
            }
        }
        return task;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public Task<E> getChild(int i) {
        return this.f3193p.get(i);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public int getChildCount() {
        return this.f3193p.size;
    }

    public BranchTask(Array<Task<E>> array) {
        this.f3193p = array;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: a */
    public int mo24471a(Task<E> task) {
        this.f3193p.add(task);
        return this.f3193p.size - 1;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3193p.clear();
        super.reset();
    }
}
