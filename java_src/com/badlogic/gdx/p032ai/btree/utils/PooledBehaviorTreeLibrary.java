package com.badlogic.gdx.p032ai.btree.utils;

import com.badlogic.gdx.p032ai.btree.BehaviorTree;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
/* renamed from: com.badlogic.gdx.ai.btree.utils.PooledBehaviorTreeLibrary */
/* loaded from: classes.dex */
public class PooledBehaviorTreeLibrary extends BehaviorTreeLibrary {

    /* renamed from: d */
    public ObjectMap<String, Pool<BehaviorTree>> f3275d = new ObjectMap<>();

    /* renamed from: c */
    public <T> BehaviorTree<T> m24393c(String str) {
        return super.createBehaviorTree(str, null);
    }

    public void clear(String str) {
        Pool<BehaviorTree> pool = this.f3275d.get(str);
        if (pool != null) {
            pool.clear();
        }
    }

    /* renamed from: b */
    public Pool<BehaviorTree> m24394b(final String str) {
        Pool<BehaviorTree> pool = this.f3275d.get(str);
        if (pool == null) {
            Pool<BehaviorTree> pool2 = new Pool<BehaviorTree>() { // from class: com.badlogic.gdx.ai.btree.utils.PooledBehaviorTreeLibrary.1
                @Override // com.badlogic.gdx.utils.Pool
                /* renamed from: c */
                public BehaviorTree newObject() {
                    return PooledBehaviorTreeLibrary.this.m24393c(str);
                }
            };
            this.f3275d.put(str, pool2);
            return pool2;
        }
        return pool;
    }

    public void clear() {
        ObjectMap.Entries<String, Pool<BehaviorTree>> it = this.f3275d.entries().iterator();
        while (it.hasNext()) {
            ((Pool) it.next().value).clear();
        }
        this.f3275d.clear();
    }

    @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeLibrary
    public <T> BehaviorTree<T> createBehaviorTree(String str, T t) {
        BehaviorTree<T> obtain = m24394b(str).obtain();
        obtain.setObject(t);
        return obtain;
    }

    @Override // com.badlogic.gdx.p032ai.btree.utils.BehaviorTreeLibrary
    public void disposeBehaviorTree(String str, BehaviorTree<?> behaviorTree) {
        m24394b(str).free(behaviorTree);
    }
}
