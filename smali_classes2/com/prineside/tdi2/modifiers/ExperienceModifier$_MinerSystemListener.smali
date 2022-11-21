.class public Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;
.super Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/ExperienceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MinerSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/modifiers/ExperienceModifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;->a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/modifiers/ExperienceModifier;Lcom/prineside/tdi2/modifiers/ExperienceModifier$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/modifiers/ExperienceModifier;)V

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

    const v0, 0x35f103b

    return v0
.end method

.method public minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p4, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;->a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    invoke-static {p4}, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->f(Lcom/prineside/tdi2/modifiers/ExperienceModifier;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;->a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    invoke-static {p4}, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->g(Lcom/prineside/tdi2/modifiers/ExperienceModifier;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p4

    iget-object p4, p4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p4, [Lcom/prineside/tdi2/Miner;

    aget-object p4, p4, p3

    if-ne p4, p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;->a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    invoke-static {p1, p3, p2}, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->h(Lcom/prineside/tdi2/modifiers/ExperienceModifier;ILcom/prineside/tdi2/enums/ResourceType;)V

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;->a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;->a:Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    const-class v1, Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
