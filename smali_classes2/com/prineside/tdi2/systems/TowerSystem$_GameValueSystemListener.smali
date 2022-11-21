.class public Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/TowerSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_GameValueSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/TowerSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

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

    const v0, 0x8c32f9

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public recalculated([D)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tower;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
