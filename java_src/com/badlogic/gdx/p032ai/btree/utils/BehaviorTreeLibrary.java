package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.btree.BehaviorTree;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.TaskCloner;
import com.badlogic.gdx.utils.ObjectMap;
/* renamed from: com.badlogic.gdx.ai.btree.utils.BehaviorTreeLibrary */
/* loaded from: classes.dex */
public class BehaviorTreeLibrary {

    /* renamed from: a */
    public ObjectMap<String, BehaviorTree<?>> f3220a;

    /* renamed from: b */
    public FileHandleResolver f3221b;

    /* renamed from: c */
    public BehaviorTreeParser<?> f3222c;

    public BehaviorTreeLibrary() {
        this(0);
    }

    public <T> BehaviorTree<T> createBehaviorTree(String str) {
        return createBehaviorTree(str, null);
    }

    public <T> Task<T> createRootTask(String str) {
        return (Task<T>) m24449a(str).getChild(0).cloneTask();
    }

    public boolean hasArchetypeTree(String str) {
        return this.f3220a.containsKey(str);
    }

    public BehaviorTreeLibrary(int i) {
        this(GdxAI.getFileSystem().newResolver(Files.FileType.Internal), i);
    }

    /* renamed from: a */
    public BehaviorTree<?> m24449a(String str) {
        BehaviorTree<?> behaviorTree = this.f3220a.get(str);
        if (behaviorTree == null) {
            BehaviorTree<?> parse = this.f3222c.parse(this.f3221b.resolve(str), (FileHandle) null);
            registerArchetypeTree(str, parse);
            return parse;
        }
        return behaviorTree;
    }

    public <T> BehaviorTree<T> createBehaviorTree(String str, T t) {
        BehaviorTree<T> behaviorTree = (BehaviorTree) m24449a(str).cloneTask();
        behaviorTree.setObject(t);
        return behaviorTree;
    }

    public void disposeBehaviorTree(String str, BehaviorTree<?> behaviorTree) {
        TaskCloner taskCloner = Task.TASK_CLONER;
        if (taskCloner != null) {
            taskCloner.freeTask(behaviorTree);
        }
    }

    public void registerArchetypeTree(String str, BehaviorTree<?> behaviorTree) {
        if (behaviorTree != null) {
            this.f3220a.put(str, behaviorTree);
            return;
        }
        throw new IllegalArgumentException("The registered archetype must not be null.");
    }

    public BehaviorTreeLibrary(FileHandleResolver fileHandleResolver) {
        this(fileHandleResolver, 0);
    }

    public BehaviorTreeLibrary(FileHandleResolver fileHandleResolver, int i) {
        this(fileHandleResolver, null, i);
    }

    public BehaviorTreeLibrary(FileHandleResolver fileHandleResolver, AssetManager assetManager, int i) {
        this.f3221b = fileHandleResolver;
        this.f3220a = new ObjectMap<>();
        this.f3222c = new BehaviorTreeParser<>(i);
    }
}
