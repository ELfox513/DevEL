package com.prineside.tdi2.managers;

import com.badlogic.gdx.utils.IntMap;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Registry;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.units.BallLightningUnit;
import com.prineside.tdi2.units.DisorientedUnit;
import com.prineside.tdi2.units.MicrogunUnit;
import com.prineside.tdi2.units.MineUnit;
import com.prineside.tdi2.units.SnowballUnit;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class UnitManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f10234F;

    /* renamed from: a */
    public final IntMap<Unit.Factory> f10235a;

    /* renamed from: b */
    public boolean f10236b;

    /* loaded from: classes2.dex */
    public static class Factories {
        public BallLightningUnit.BallLightningUnitFactory BALL_LIGHTNING;
        public DisorientedUnit.DisorientedUnitFactory DISORIENTED;
        public MicrogunUnit.MicrogunUnitFactory MICROGUN;
        public MineUnit.MineUnitFactory MINE;
        public SnowballUnit.SnowballUnitFactory SNOWBALL;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<UnitManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public UnitManager read() {
            return Game.f8589i.unitManager;
        }
    }

    public Unit.Factory<? extends Unit> getFactory(int i) {
        return this.f10235a.get(i);
    }

    public Unit.Factory registerFactory(int i, Unit.Factory factory) {
        if (factory != null) {
            this.f10235a.put(i, factory);
            if (this.f10236b) {
                factory.setup();
            }
            return factory;
        }
        throw new IllegalArgumentException("factory is null");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Iterator<Unit.Factory> it = this.f10235a.values().iterator();
        while (it.hasNext()) {
            it.next().setup();
        }
        this.f10236b = true;
    }

    public void unregisterFactory(int i) {
        Logger.log("UnitManager", "unregistered factory " + i + " " + this.f10235a.remove(i));
    }

    public UnitManager() {
        IntMap<Unit.Factory> intMap = new IntMap<>();
        this.f10235a = intMap;
        Factories factories = new Factories();
        this.f10234F = factories;
        Registry.EnumCategory category = Game.f8591r.getCategory("UnitType");
        factories.SNOWBALL = (SnowballUnit.SnowballUnitFactory) registerFactory(category.getId("SNOWBALL"), new SnowballUnit.SnowballUnitFactory());
        factories.BALL_LIGHTNING = (BallLightningUnit.BallLightningUnitFactory) registerFactory(category.getId("BALL_LIGHTNING"), new BallLightningUnit.BallLightningUnitFactory());
        factories.DISORIENTED = (DisorientedUnit.DisorientedUnitFactory) registerFactory(category.getId("DISORIENTED"), new DisorientedUnit.DisorientedUnitFactory());
        factories.MICROGUN = (MicrogunUnit.MicrogunUnitFactory) registerFactory(category.getId("MICROGUN"), new MicrogunUnit.MicrogunUnitFactory());
        factories.MINE = (MineUnit.MineUnitFactory) registerFactory(category.getId("MINE"), new MineUnit.MineUnitFactory());
        if (intMap.size >= category.values().size) {
            return;
        }
        throw new RuntimeException("Not all unit factories were created " + intMap.size + " / " + category.values().size);
    }
}
