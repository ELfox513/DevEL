.class public Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ScheduledUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdatableConfiguration"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

.field public b:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ScheduledUpdater$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->a:Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

    iput p2, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->d:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    return-void
.end method

.method public getLastUpdateTime()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    return v0
.end method

.method public getUpdateInterval()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->d:F

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

    iput-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->a:Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->d:F

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->a:Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    iput v0, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->d:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->a:Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->d:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
