.class public Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/LaserTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveLaserConfig"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/projectiles/LaserProjectile;

.field public b:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)Lcom/prineside/tdi2/projectiles/LaserProjectile;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a:Lcom/prineside/tdi2/projectiles/LaserProjectile;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;Lcom/prineside/tdi2/projectiles/LaserProjectile;)Lcom/prineside/tdi2/projectiles/LaserProjectile;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a:Lcom/prineside/tdi2/projectiles/LaserProjectile;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b:F

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b:F

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b:F

    return v0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->d:F

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->d:F

    return p1
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/projectiles/LaserProjectile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/projectiles/LaserProjectile;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a:Lcom/prineside/tdi2/projectiles/LaserProjectile;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->d:F

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a:Lcom/prineside/tdi2/projectiles/LaserProjectile;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a:Lcom/prineside/tdi2/projectiles/LaserProjectile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->d:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
