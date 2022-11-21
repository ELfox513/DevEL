package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.Decorator;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.TaskCloneException;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
import com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeLibraryManager;
@TaskConstraint(maxChildren = 0, minChildren = 0)
/* renamed from: com.badlogic.gdx.ai.btree.decorator.Include */
/* loaded from: classes.dex */
public class Include<E> extends Decorator<E> {
    @TaskAttribute
    public boolean lazy;
    @TaskAttribute(required = true)
    public String subtree;

    public Include() {
    }

    /* renamed from: d */
    public final Task<E> m24452d() {
        return BehaviorTreeLibraryManager.getInstance().createRootTask(this.subtree);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.lazy = false;
        this.subtree = null;
        super.reset();
    }

    public Include(String str) {
        this.subtree = str;
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        boolean z = this.lazy;
        if (z) {
            Include include = (Include) task;
            include.subtree = this.subtree;
            include.lazy = z;
            return task;
        }
        throw new TaskCloneException("A non-lazy " + getClass().getSimpleName() + " should never be copied.");
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public Task<E> cloneTask() {
        if (this.lazy) {
            return super.cloneTask();
        }
        return m24452d();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        if (this.lazy) {
            if (this.f3194p == null) {
                addChild(m24452d());
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("A non-lazy " + Include.class.getSimpleName() + " isn't meant to be run!");
    }

    public Include(String str, boolean z) {
        this.subtree = str;
        this.lazy = z;
    }
}
