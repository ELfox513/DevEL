package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ListenerGroup<T extends GameListener> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<ListenerGroup>() { // from class: com.prineside.tdi2.ListenerGroup.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(ListenerGroup listenerGroup, ListenerGroup listenerGroup2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(listenerGroup, listenerGroup2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<ListenerGroup> forClass() {
            return ListenerGroup.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(ListenerGroup listenerGroup, ListenerGroup listenerGroup2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            array.add(".stateAffectingListeners");
            int i2 = i - 1;
            PMath.compareObjects(listenerGroup.f8718b, listenerGroup2.f8718b, stringBuilder, array, i2, intIntMap, z);
            array.pop();
            array.add(".removing");
            PMath.compareObjects(listenerGroup.f8720d, listenerGroup2.f8720d, stringBuilder, array, i2, intIntMap, z);
            array.pop();
            array.add(".adding");
            PMath.compareObjects(listenerGroup.f8721e, listenerGroup2.f8721e, stringBuilder, array, i2, intIntMap, z);
            array.pop();
        }
    };

    /* renamed from: a */
    public final Class f8717a;

    /* renamed from: b */
    public DelayedRemovalArray<T> f8718b;
    @NAGS

    /* renamed from: c */
    public DelayedRemovalArray<T> f8719c;

    /* renamed from: d */
    public ObjectSet<T> f8720d;

    /* renamed from: e */
    public Array<T> f8721e;
    @NAGS

    /* renamed from: f */
    public int f8722f;
    @NAGS

    /* renamed from: g */
    public String f8723g;

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<ListenerGroup> {
        @Override // com.esotericsoftware.kryo.Serializer
        public ListenerGroup copy(Kryo kryo, ListenerGroup listenerGroup) {
            ListenerGroup listenerGroup2 = new ListenerGroup(listenerGroup.f8717a);
            listenerGroup2.f8718b = (DelayedRemovalArray) kryo.getSerializer(DelayedRemovalArray.class).copy(kryo, listenerGroup.f8718b);
            listenerGroup2.f8720d = (ObjectSet) kryo.getSerializer(ObjectSet.class).copy(kryo, listenerGroup.f8720d);
            listenerGroup2.f8721e = (Array) kryo.getSerializer(Array.class).copy(kryo, listenerGroup.f8721e);
            return listenerGroup2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public ListenerGroup read(Kryo kryo, Input input, Class<? extends ListenerGroup> cls) {
            ListenerGroup listenerGroup = new ListenerGroup(kryo.readClass(input).getType());
            listenerGroup.f8718b = (DelayedRemovalArray) kryo.readClassAndObject(input);
            listenerGroup.f8720d = (ObjectSet) kryo.readObject(input, ObjectSet.class);
            listenerGroup.f8721e = (Array) kryo.readObject(input, Array.class);
            return listenerGroup;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, ListenerGroup listenerGroup) {
            kryo.writeClass(output, listenerGroup.f8717a);
            kryo.writeClassAndObject(output, listenerGroup.f8718b);
            kryo.writeObject(output, listenerGroup.f8720d);
            kryo.writeObject(output, listenerGroup.f8721e);
        }
    }

    public ListenerGroup(Class cls) {
        this.f8720d = new ObjectSet<>();
        this.f8722f = 0;
        this.f8717a = cls;
        this.f8718b = new DelayedRemovalArray<>(true, 1, cls);
        this.f8719c = new DelayedRemovalArray<>(true, 1, cls);
        this.f8721e = new Array<>(true, 1, cls);
    }

    public int getStateHash() {
        int i = 0;
        int i2 = 0;
        while (true) {
            DelayedRemovalArray<T> delayedRemovalArray = this.f8718b;
            if (i < delayedRemovalArray.size) {
                i2 = (i2 * 31) + delayedRemovalArray.items[i].getConstantId();
                i++;
            } else {
                return i2;
            }
        }
    }

    public int size() {
        return this.f8718b.size + this.f8719c.size;
    }

    public boolean add(T t) {
        boolean z;
        DelayedRemovalArray<T> delayedRemovalArray;
        String str;
        if (t != null) {
            if (this.f8723g != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f8723g);
                sb.append(" add ");
                sb.append(t.getClass().getName());
                sb.append(" (");
                if (t.affectsGameState()) {
                    str = "true";
                } else {
                    str = "false";
                }
                sb.append(str);
                sb.append(")");
                Logger.log("ListenerGroup", sb.toString());
            }
            if (this.f8722f == 0) {
                if (t.affectsGameState()) {
                    delayedRemovalArray = this.f8718b;
                } else {
                    delayedRemovalArray = this.f8719c;
                }
                for (int i = 0; i < delayedRemovalArray.size; i++) {
                    if (delayedRemovalArray.items[i] == t) {
                        return false;
                    }
                }
                delayedRemovalArray.add(t);
                return true;
            } else if (t.affectsGameState()) {
                int i2 = 0;
                while (true) {
                    Array<T> array = this.f8721e;
                    if (i2 < array.size) {
                        if (array.items[i2] == t) {
                            return false;
                        }
                        i2++;
                    } else {
                        int i3 = this.f8718b.size - 1;
                        while (true) {
                            if (i3 >= 0) {
                                if (this.f8718b.items[i3] == t) {
                                    z = true;
                                    break;
                                }
                                i3--;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (z) {
                            if (!this.f8720d.contains(t)) {
                                return false;
                            }
                            this.f8720d.remove(t);
                            this.f8718b.add(t);
                            return true;
                        }
                        this.f8721e.add(t);
                        return true;
                    }
                }
            } else {
                throw new IllegalStateException("listener not affects game state, should not be added inside other listener");
            }
        } else {
            throw new IllegalArgumentException("listener is null");
        }
    }

    public void begin() {
        this.f8718b.begin();
        this.f8719c.begin();
        this.f8722f++;
    }

    public void clear() {
        if (this.f8722f == 0) {
            this.f8718b.clear();
            this.f8719c.clear();
            this.f8720d.clear();
            this.f8721e.clear();
            return;
        }
        throw new IllegalStateException("some loops still running");
    }

    public void describe() {
        Logger.log("ListenerGroup", "loops: " + this.f8722f);
        Logger.log("ListenerGroup", "state affecting: " + this.f8718b.size);
        for (int i = 0; i < this.f8718b.size; i++) {
            Logger.log("ListenerGroup", "  " + i + " " + String.valueOf(this.f8718b.items[i]));
        }
        Logger.log("ListenerGroup", "non intrusive: " + this.f8719c.size);
        for (int i2 = 0; i2 < this.f8719c.size; i2++) {
            Logger.log("ListenerGroup", "  " + i2 + " " + String.valueOf(this.f8719c.items[i2]));
        }
        Logger.log("ListenerGroup", "removing: " + this.f8720d.size);
        ObjectSet.ObjectSetIterator<T> it = this.f8720d.iterator();
        while (it.hasNext()) {
            Logger.log("ListenerGroup", "  " + String.valueOf(it.next()));
        }
        Logger.log("ListenerGroup", "adding: " + this.f8721e.size);
        for (int i3 = 0; i3 < this.f8721e.size; i3++) {
            Logger.log("ListenerGroup", "  " + i3 + " " + String.valueOf(this.f8721e.items[i3]));
        }
    }

    public void end() {
        this.f8718b.end();
        this.f8719c.end();
        int i = this.f8722f - 1;
        this.f8722f = i;
        if (i >= 0) {
            if (i == 0) {
                this.f8718b.addAll(this.f8721e);
                this.f8721e.clear();
                this.f8720d.clear();
                return;
            }
            return;
        }
        throw new IllegalStateException("begin() called more times than end()");
    }

    public T get(int i) {
        if (this.f8722f != 0) {
            DelayedRemovalArray<T> delayedRemovalArray = this.f8718b;
            int i2 = delayedRemovalArray.size;
            if (i < i2) {
                return delayedRemovalArray.items[i];
            }
            return this.f8719c.items[i - i2];
        }
        throw new IllegalStateException("begin() must be called first");
    }

    public boolean remove(T t) {
        String str;
        if (t != null) {
            if (this.f8723g != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f8723g);
                sb.append(" remove ");
                sb.append(t.getClass().getName());
                sb.append(" (");
                if (t.affectsGameState()) {
                    str = "true";
                } else {
                    str = "false";
                }
                sb.append(str);
                sb.append(")");
                Logger.log("ListenerGroup", sb.toString());
            }
            if (this.f8722f != 0) {
                if (t.affectsGameState()) {
                    if (this.f8720d.contains(t)) {
                        return false;
                    }
                    if (this.f8718b.contains(t, true)) {
                        this.f8720d.add(t);
                        return this.f8718b.removeValue(t, true);
                    } else if (!this.f8721e.contains(t, true)) {
                        return false;
                    } else {
                        return this.f8721e.removeValue(t, true);
                    }
                }
                throw new IllegalStateException("listener not affects game state, should not be removed inside other listener");
            }
            return this.f8718b.removeValue(t, true);
        }
        throw new IllegalArgumentException("listener is null");
    }

    public boolean contains(T t) {
        DelayedRemovalArray<T> delayedRemovalArray;
        if (t.affectsGameState()) {
            delayedRemovalArray = this.f8718b;
        } else {
            delayedRemovalArray = this.f8719c;
        }
        return delayedRemovalArray.contains(t, true);
    }

    public ListenerGroup(Class cls, String str) {
        this(cls);
        this.f8723g = str;
    }
}
