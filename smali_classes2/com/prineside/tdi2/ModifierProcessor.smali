.class public abstract Lcom/prineside/tdi2/ModifierProcessor;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ScheduledUpdater$Updatable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Modifier;",
        ">",
        "Lcom/prineside/tdi2/Registrable;",
        "Lcom/prineside/tdi2/ScheduledUpdater$Updatable;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ModifierProcessor;->a:I

    return-void
.end method


# virtual methods
.method public getUpdateInterval()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ModifierProcessor;->a:I

    return-void
.end method

.method public scheduledUpdatableGetId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ModifierProcessor;->a:I

    return v0
.end method

.method public final scheduledUpdatableSetId(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ModifierProcessor;->a:I

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 0

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/ModifierProcessor;->a:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
