package com.prineside.tdi2.managers;

import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.projectiles.AirProjectile;
import com.prineside.tdi2.projectiles.BasicProjectile;
import com.prineside.tdi2.projectiles.BuffProjectile;
import com.prineside.tdi2.projectiles.BulletWallProjectile;
import com.prineside.tdi2.projectiles.CannonProjectile;
import com.prineside.tdi2.projectiles.ChainLightningProjectile;
import com.prineside.tdi2.projectiles.LaserProjectile;
import com.prineside.tdi2.projectiles.MissileProjectile;
import com.prineside.tdi2.projectiles.MultishotProjectile;
import com.prineside.tdi2.projectiles.SplashProjectile;
import com.prineside.tdi2.projectiles.SplinterProjectile;
import com.prineside.tdi2.projectiles.VenomProjectile;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ProjectileManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9990F;

    /* renamed from: a */
    public final Projectile.Factory[] f9991a;

    /* loaded from: classes2.dex */
    public static class Factories {
        public AirProjectile.AirProjectileFactory AIR;
        public BasicProjectile.BasicProjectileFactory BASIC;
        public BuffProjectile.BuffProjectileFactory BUFF;
        public BulletWallProjectile.MultishotProjectileFactory BULLET_WALL;
        public CannonProjectile.CannonProjectileFactory CANNON;
        public ChainLightningProjectile.ChainLightningProjectileFactory CHAIN_LIGHTNING;
        public LaserProjectile.LaserProjectileFactory LASER;
        public MissileProjectile.MissileProjectileFactory MISSILE;
        public MultishotProjectile.MultishotProjectileFactory MULTISHOT;
        public SplashProjectile.SplashProjectileFactory SPLASH;
        public SplinterProjectile.SplinterProjectileFactory SPLINTER;
        public VenomProjectile.VenomProjectileFactory VENOM;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ProjectileManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ProjectileManager read() {
            return Game.f8589i.projectileManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Projectile.Factory<? extends Projectile> getFactory(ProjectileType projectileType) {
        return this.f9991a[projectileType.ordinal()];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void clearPools() {
        for (Projectile.Factory factory : this.f9991a) {
            factory.clearPools();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (Projectile.Factory factory : this.f9991a) {
            factory.setup();
        }
    }

    public ProjectileManager() {
        Projectile.Factory[] factoryArr = new Projectile.Factory[ProjectileType.values.length];
        this.f9991a = factoryArr;
        Factories factories = new Factories();
        this.f9990F = factories;
        int ordinal = ProjectileType.AIR.ordinal();
        AirProjectile.AirProjectileFactory airProjectileFactory = new AirProjectile.AirProjectileFactory();
        factories.AIR = airProjectileFactory;
        factoryArr[ordinal] = airProjectileFactory;
        int ordinal2 = ProjectileType.BASIC.ordinal();
        BasicProjectile.BasicProjectileFactory basicProjectileFactory = new BasicProjectile.BasicProjectileFactory();
        factories.BASIC = basicProjectileFactory;
        factoryArr[ordinal2] = basicProjectileFactory;
        int ordinal3 = ProjectileType.CANNON.ordinal();
        CannonProjectile.CannonProjectileFactory cannonProjectileFactory = new CannonProjectile.CannonProjectileFactory();
        factories.CANNON = cannonProjectileFactory;
        factoryArr[ordinal3] = cannonProjectileFactory;
        int ordinal4 = ProjectileType.SPLINTER.ordinal();
        SplinterProjectile.SplinterProjectileFactory splinterProjectileFactory = new SplinterProjectile.SplinterProjectileFactory();
        factories.SPLINTER = splinterProjectileFactory;
        factoryArr[ordinal4] = splinterProjectileFactory;
        int ordinal5 = ProjectileType.CHAIN_LIGHTNING.ordinal();
        ChainLightningProjectile.ChainLightningProjectileFactory chainLightningProjectileFactory = new ChainLightningProjectile.ChainLightningProjectileFactory();
        factories.CHAIN_LIGHTNING = chainLightningProjectileFactory;
        factoryArr[ordinal5] = chainLightningProjectileFactory;
        int ordinal6 = ProjectileType.MISSILE.ordinal();
        MissileProjectile.MissileProjectileFactory missileProjectileFactory = new MissileProjectile.MissileProjectileFactory();
        factories.MISSILE = missileProjectileFactory;
        factoryArr[ordinal6] = missileProjectileFactory;
        int ordinal7 = ProjectileType.MULTISHOT.ordinal();
        MultishotProjectile.MultishotProjectileFactory multishotProjectileFactory = new MultishotProjectile.MultishotProjectileFactory();
        factories.MULTISHOT = multishotProjectileFactory;
        factoryArr[ordinal7] = multishotProjectileFactory;
        int ordinal8 = ProjectileType.SPLASH.ordinal();
        SplashProjectile.SplashProjectileFactory splashProjectileFactory = new SplashProjectile.SplashProjectileFactory();
        factories.SPLASH = splashProjectileFactory;
        factoryArr[ordinal8] = splashProjectileFactory;
        int ordinal9 = ProjectileType.VENOM.ordinal();
        VenomProjectile.VenomProjectileFactory venomProjectileFactory = new VenomProjectile.VenomProjectileFactory();
        factories.VENOM = venomProjectileFactory;
        factoryArr[ordinal9] = venomProjectileFactory;
        int ordinal10 = ProjectileType.LASER.ordinal();
        LaserProjectile.LaserProjectileFactory laserProjectileFactory = new LaserProjectile.LaserProjectileFactory();
        factories.LASER = laserProjectileFactory;
        factoryArr[ordinal10] = laserProjectileFactory;
        int ordinal11 = ProjectileType.BULLET_WALL.ordinal();
        BulletWallProjectile.MultishotProjectileFactory multishotProjectileFactory2 = new BulletWallProjectile.MultishotProjectileFactory();
        factories.BULLET_WALL = multishotProjectileFactory2;
        factoryArr[ordinal11] = multishotProjectileFactory2;
        int ordinal12 = ProjectileType.BUFF.ordinal();
        BuffProjectile.BuffProjectileFactory buffProjectileFactory = new BuffProjectile.BuffProjectileFactory();
        factories.BUFF = buffProjectileFactory;
        factoryArr[ordinal12] = buffProjectileFactory;
        for (ProjectileType projectileType : ProjectileType.values) {
            if (this.f9991a[projectileType.ordinal()] == null) {
                throw new RuntimeException("Not all projectile factories were created");
            }
        }
    }
}
