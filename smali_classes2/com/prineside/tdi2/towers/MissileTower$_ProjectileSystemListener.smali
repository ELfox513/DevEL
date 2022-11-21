.class public Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;
.super Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/MissileTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_ProjectileSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/towers/MissileTower;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/towers/MissileTower;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/towers/MissileTower;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/towers/MissileTower$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;-><init>(Lcom/prineside/tdi2/towers/MissileTower;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x351ea33

    return v0
.end method

.method public projectileUnregistered(Lcom/prineside/tdi2/Projectile;)V
    .locals 2

    instance-of v0, p1, Lcom/prineside/tdi2/projectiles/MissileProjectile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/towers/MissileTower;

    invoke-static {v0}, Lcom/prineside/tdi2/towers/MissileTower;->g(Lcom/prineside/tdi2/towers/MissileTower;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    check-cast p1, Lcom/prineside/tdi2/projectiles/MissileProjectile;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/towers/MissileTower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/towers/MissileTower;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/towers/MissileTower;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/towers/MissileTower;

    const-class v1, Lcom/prineside/tdi2/towers/MissileTower;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
