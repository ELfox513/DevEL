package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.p032ai.btree.BehaviorTree;
import com.badlogic.gdx.p032ai.btree.Task;
/* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeLibraryManager */
/* loaded from: classes.dex */
public final class BehaviorTreeLibraryManager {

    /* renamed from: b */
    public static BehaviorTreeLibraryManager f3223b = new BehaviorTreeLibraryManager();

    /* renamed from: a */
    public BehaviorTreeLibrary f3224a;

    public static BehaviorTreeLibraryManager getInstance() {
        return f3223b;
    }

    public <T> BehaviorTree<T> createBehaviorTree(String str) {
        return this.f3224a.createBehaviorTree(str);
    }

    public <T> Task<T> createRootTask(String str) {
        return this.f3224a.createRootTask(str);
    }

    public void disposeBehaviorTree(String str, BehaviorTree<?> behaviorTree) {
        this.f3224a.disposeBehaviorTree(str, behaviorTree);
    }

    public BehaviorTreeLibrary getLibrary() {
        return this.f3224a;
    }

    public void setLibrary(BehaviorTreeLibrary behaviorTreeLibrary) {
        this.f3224a = behaviorTreeLibrary;
    }

    public <T> BehaviorTree<T> createBehaviorTree(String str, T t) {
        return this.f3224a.createBehaviorTree(str, t);
    }

    public BehaviorTreeLibraryManager() {
        setLibrary(new BehaviorTreeLibrary());
    }
}
