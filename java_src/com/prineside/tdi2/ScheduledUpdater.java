package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ScheduledUpdater implements KryoSerializable {
    public static final int UNSCHEDULED_ID = -1;

    /* renamed from: d */
    public float f8882d;
    @NAGS

    /* renamed from: a */
    public final Pool<UpdatableConfiguration> f8880a = new Pool<UpdatableConfiguration>(16, Integer.MAX_VALUE) { // from class: com.prineside.tdi2.ScheduledUpdater.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public UpdatableConfiguration newObject() {
            return new UpdatableConfiguration();
        }
    };

    /* renamed from: b */
    public DelayedRemovalArray<UpdatableConfiguration> f8881b = new DelayedRemovalArray<>(false, 16, UpdatableConfiguration.class);

    /* renamed from: k */
    public int f8883k = 1;

    /* renamed from: p */
    public IntMap<UpdatableConfiguration> f8884p = new IntMap<>();

    /* loaded from: classes2.dex */
    public interface Updatable {
        int scheduledUpdatableGetId();

        void scheduledUpdatableSetId(int i);

        void scheduledUpdate(float f);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class UpdatableConfiguration implements Pool.Poolable, KryoSerializable {

        /* renamed from: a */
        public Updatable f8886a;

        /* renamed from: b */
        public float f8887b;

        /* renamed from: d */
        public float f8888d;

        public UpdatableConfiguration() {
        }

        public float getLastUpdateTime() {
            return this.f8887b;
        }

        public float getUpdateInterval() {
            return this.f8888d;
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f8886a = null;
            this.f8887b = 0.0f;
            this.f8888d = 0.0f;
        }

        /* renamed from: a */
        public void m21901a(Updatable updatable, float f) {
            this.f8886a = updatable;
            this.f8888d = f;
            this.f8887b = 0.0f;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f8886a);
            output.writeFloat(this.f8887b);
            output.writeFloat(this.f8888d);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8886a = (Updatable) kryo.readClassAndObject(input);
            this.f8887b = input.readFloat();
            this.f8888d = input.readFloat();
        }
    }

    public DelayedRemovalArray<UpdatableConfiguration> getConfigurations() {
        return this.f8881b;
    }

    public float getTime() {
        return this.f8882d;
    }

    public void add(Updatable updatable, float f) {
        if (!this.f8884p.containsKey(updatable.scheduledUpdatableGetId())) {
            int i = this.f8883k;
            this.f8883k = i + 1;
            UpdatableConfiguration obtain = this.f8880a.obtain();
            obtain.m21901a(updatable, f);
            updatable.scheduledUpdatableSetId(i);
            obtain.f8887b = this.f8882d;
            this.f8881b.add(obtain);
            this.f8884p.put(i, obtain);
            return;
        }
        throw new IllegalStateException("Updatable is already scheduled");
    }

    public void clear() {
        this.f8880a.clear();
        this.f8881b.clear();
        this.f8884p.clear();
    }

    public void process(float f) {
        this.f8882d += f;
        this.f8881b.begin();
        Array.ArrayIterator<UpdatableConfiguration> it = this.f8881b.iterator();
        while (it.hasNext()) {
            UpdatableConfiguration next = it.next();
            float f2 = next.f8887b;
            float f3 = this.f8882d;
            if (next.f8888d + f2 < f3) {
                next.f8886a.scheduledUpdate(f3 - f2);
                next.f8887b = this.f8882d;
            }
        }
        this.f8881b.end();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8881b = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f8882d = input.readFloat();
        this.f8883k = input.readInt();
        this.f8884p = (IntMap) kryo.readObject(input, IntMap.class);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.f8881b);
        output.writeFloat(this.f8882d);
        output.writeInt(this.f8883k);
        kryo.writeObject(output, this.f8884p);
    }

    public boolean remove(Updatable updatable) {
        int scheduledUpdatableGetId = updatable.scheduledUpdatableGetId();
        if (scheduledUpdatableGetId == -1) {
            return false;
        }
        if (this.f8884p.containsKey(scheduledUpdatableGetId)) {
            UpdatableConfiguration updatableConfiguration = this.f8884p.get(scheduledUpdatableGetId);
            this.f8881b.removeValue(updatableConfiguration, true);
            this.f8884p.remove(scheduledUpdatableGetId);
            this.f8880a.free(updatableConfiguration);
            updatable.scheduledUpdatableSetId(-1);
            return true;
        }
        throw new IllegalStateException("Updatable is not scheduled");
    }
}
