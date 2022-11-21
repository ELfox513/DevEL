.class public Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/abilities/BlizzardAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;

.field public b:Lcom/prineside/tdi2/abilities/BlizzardAbility;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/abilities/BlizzardAbility;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p2, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/abilities/BlizzardAbility;Lcom/prineside/tdi2/abilities/BlizzardAbility$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/abilities/BlizzardAbility;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->FREEZING:Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/FreezingBuff;

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility;

    invoke-static {v1}, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d(Lcom/prineside/tdi2/abilities/BlizzardAbility;)F

    move-result v5

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility;

    invoke-static {v1}, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d(Lcom/prineside/tdi2/abilities/BlizzardAbility;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v6, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/buffs/FreezingBuff;->setup(Lcom/prineside/tdi2/Tower;FFFFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/BuffSystem;->P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    invoke-virtual {v1, p1, v0}, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/FreezingBuff;)Z

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x9435f

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v0, Lcom/prineside/tdi2/abilities/BlizzardAbility;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/abilities/BlizzardAbility;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
