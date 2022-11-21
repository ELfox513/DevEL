package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Buff implements Pool.Poolable, KryoSerializable {
    public static final float MAX_DURATION_MULTIPLIER = 10.0f;

    /* renamed from: a */
    public BuffType f8470a;
    public float duration;
    public float maxDuration;

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Buff> implements Disposable {

        /* renamed from: a */
        public final Pool<T> f8471a = (Pool<T>) new Pool<T>(16, Integer.MAX_VALUE) { // from class: com.prineside.tdi2.Buff.Factory.2
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public T newObject() {
                return (T) Factory.this.mo21833a();
            }
        };

        /* renamed from: a */
        public abstract T mo21833a();

        public void clearPool() {
            this.f8471a.clear();
        }

        public abstract BuffProcessor<T> createProcessor();

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        public boolean effectIsCumulative() {
            return true;
        }

        public void free(Buff buff) {
            this.f8471a.free(buff);
        }

        public abstract TextureRegion getHealthBarIcon();

        public final T obtain() {
            return this.f8471a.obtain();
        }

        public void setupAssets() {
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }
    }

    public Buff cpy(float f) {
        return null;
    }

    public void free() {
        Game.f8589i.buffManager.getFactory(this.f8470a).free(this);
    }

    public BuffType getType() {
        return this.f8470a;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8470a = (BuffType) kryo.readObjectOrNull(input, BuffType.class);
        this.duration = input.readFloat();
        this.maxDuration = input.readFloat();
    }

    public void setup(float f, float f2) {
        this.duration = f;
        this.maxDuration = f2;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f8470a, BuffType.class);
        output.writeFloat(this.duration);
        output.writeFloat(this.maxDuration);
    }

    public Buff(BuffType buffType) {
        this.f8470a = buffType;
        reset();
    }
}
