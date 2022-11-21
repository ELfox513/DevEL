package com.prineside.tdi2.managers;

import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.gates.BarrierHealthGate;
import com.prineside.tdi2.gates.BarrierTypeGate;
import com.prineside.tdi2.gates.TeleportGate;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class GateManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9810F;

    /* renamed from: a */
    public final Gate.Factory[] f9811a;

    /* loaded from: classes2.dex */
    public static class Factories {
        public BarrierHealthGate.BarrierHealthGateFactory BARRIER_HEALTH;
        public BarrierTypeGate.BarrierTypeGateFactory BARRIER_TYPE;
        public TeleportGate.TeleportGateFactory TELEPORT;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<GateManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public GateManager read() {
            return Game.f8589i.gateManager;
        }
    }

    public Gate createRandomGate(GateType gateType, float f, RandomXS128 randomXS128) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        return getFactory(gateType).createRandom(f, randomXS128);
    }

    public Gate.Factory<? extends Gate> getFactory(GateType gateType) {
        return this.f9811a[gateType.ordinal()];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (Gate.Factory factory : this.f9811a) {
            factory.setup();
        }
    }

    public GateManager() {
        Factories factories = new Factories();
        this.f9810F = factories;
        GateType[] gateTypeArr = GateType.values;
        Gate.Factory[] factoryArr = new Gate.Factory[gateTypeArr.length];
        this.f9811a = factoryArr;
        int ordinal = GateType.BARRIER_TYPE.ordinal();
        BarrierTypeGate.BarrierTypeGateFactory barrierTypeGateFactory = new BarrierTypeGate.BarrierTypeGateFactory();
        factories.BARRIER_TYPE = barrierTypeGateFactory;
        factoryArr[ordinal] = barrierTypeGateFactory;
        int ordinal2 = GateType.BARRIER_HEALTH.ordinal();
        BarrierHealthGate.BarrierHealthGateFactory barrierHealthGateFactory = new BarrierHealthGate.BarrierHealthGateFactory();
        factories.BARRIER_HEALTH = barrierHealthGateFactory;
        factoryArr[ordinal2] = barrierHealthGateFactory;
        int ordinal3 = GateType.TELEPORT.ordinal();
        TeleportGate.TeleportGateFactory teleportGateFactory = new TeleportGate.TeleportGateFactory();
        factories.TELEPORT = teleportGateFactory;
        factoryArr[ordinal3] = teleportGateFactory;
        for (GateType gateType : gateTypeArr) {
            if (this.f9811a[gateType.ordinal()] == null) {
                throw new RuntimeException("Not all gate factories were created");
            }
        }
    }

    public Gate createGateFromJson(JsonValue jsonValue) {
        if (jsonValue.isObject()) {
            return getFactory(GateType.valueOf(jsonValue.getString("type"))).fromJson(jsonValue);
        }
        throw new IllegalArgumentException("JsonValue must be an object");
    }
}
