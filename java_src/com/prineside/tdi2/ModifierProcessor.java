package com.prineside.tdi2;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public abstract class ModifierProcessor<T extends Modifier> extends Registrable implements ScheduledUpdater.Updatable {

    /* renamed from: a */
    public int f8778a = -1;

    public float getUpdateInterval() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public int scheduledUpdatableGetId() {
        return this.f8778a;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final void scheduledUpdatableSetId(int i) {
        this.f8778a = i;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8778a = input.readInt();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeInt(this.f8778a);
    }
}
