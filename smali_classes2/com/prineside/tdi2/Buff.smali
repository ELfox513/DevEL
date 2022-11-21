.class public abstract Lcom/prineside/tdi2/Buff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Buff$Factory;
    }
.end annotation


# static fields
.field public static final MAX_DURATION_MULTIPLIER:F = 10.0f


# instance fields
.field public a:Lcom/prineside/tdi2/enums/BuffType;

.field public duration:F

.field public maxDuration:F


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/BuffType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Buff;->a:Lcom/prineside/tdi2/enums/BuffType;

    invoke-interface {p0}, Lcom/badlogic/gdx/utils/Pool$Poolable;->reset()V

    return-void
.end method


# virtual methods
.method public cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public free()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Buff;->a:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BuffManager;->getFactory(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/Buff$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Buff$Factory;->free(Lcom/prineside/tdi2/Buff;)V

    return-void
.end method

.method public getType()Lcom/prineside/tdi2/enums/BuffType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Buff;->a:Lcom/prineside/tdi2/enums/BuffType;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/BuffType;

    iput-object p1, p0, Lcom/prineside/tdi2/Buff;->a:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    return-void
.end method

.method public setup(FF)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    iput p2, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Buff;->a:Lcom/prineside/tdi2/enums/BuffType;

    const-class v1, Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget p1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
