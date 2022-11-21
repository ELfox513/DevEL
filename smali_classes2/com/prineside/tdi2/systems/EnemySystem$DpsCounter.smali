.class public Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/EnemySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DpsCounter"
.end annotation


# instance fields
.field public damage:D

.field public maxDamage:D

.field public timeAccumulator:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/EnemySystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->damage:D

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->timeAccumulator:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->maxDamage:D

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->damage:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    iget p1, p0, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->timeAccumulator:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->maxDamage:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    return-void
.end method
