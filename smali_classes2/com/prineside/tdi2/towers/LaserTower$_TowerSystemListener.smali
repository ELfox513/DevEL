.class public Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;
.super Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/LaserTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_TowerSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/towers/LaserTower;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/towers/LaserTower;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;->a:Lcom/prineside/tdi2/towers/LaserTower;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/LaserTower;Lcom/prineside/tdi2/towers/LaserTower$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/towers/LaserTower;)V

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

    const v0, 0x7e4a1f

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/towers/LaserTower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/towers/LaserTower;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;->a:Lcom/prineside/tdi2/towers/LaserTower;

    return-void
.end method

.method public towerBuilt(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;->a:Lcom/prineside/tdi2/towers/LaserTower;

    invoke-virtual {p1}, Lcom/prineside/tdi2/towers/LaserTower;->updateCache()V

    return-void
.end method

.method public towerSold(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;->a:Lcom/prineside/tdi2/towers/LaserTower;

    if-eq p1, p2, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/towers/LaserTower;->updateCache()V

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;->a:Lcom/prineside/tdi2/towers/LaserTower;

    const-class v1, Lcom/prineside/tdi2/towers/LaserTower;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
