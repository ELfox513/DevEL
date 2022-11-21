.class public Lcom/prineside/tdi2/ScheduledUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;,
        Lcom/prineside/tdi2/ScheduledUpdater$Updatable;
    }
.end annotation


# static fields
.field public static final UNSCHEDULED_ID:I = -0x1


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Pool;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public d:F

.field public k:I

.field public p:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater$1;

    const/16 v1, 0x10

    const v2, 0x7fffffff

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/tdi2/ScheduledUpdater$1;-><init>(Lcom/prineside/tdi2/ScheduledUpdater;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->a:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->k:I

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-interface {p1}, Lcom/prineside/tdi2/ScheduledUpdater$Updatable;->scheduledUpdatableGetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->k:I

    iget-object v1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->a(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/ScheduledUpdater$Updatable;->scheduledUpdatableSetId(I)V

    iget p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    iput p1, v1, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    iget-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Updatable is already scheduled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    return-void
.end method

.method public getConfigurations()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    return v0
.end method

.method public process(F)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    iget-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;

    iget v1, v0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    iget v2, v0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->d:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->a:Lcom/prineside/tdi2/ScheduledUpdater$Updatable;

    sub-float/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/prineside/tdi2/ScheduledUpdater$Updatable;->scheduledUpdate(F)V

    iget v1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    iput v1, v0, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;->b:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->k:I

    const-class v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    iput-object p1, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method public remove(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;)Z
    .locals 5

    invoke-interface {p1}, Lcom/prineside/tdi2/ScheduledUpdater$Updatable;->scheduledUpdatableGetId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ScheduledUpdater$UpdatableConfiguration;

    iget-object v3, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    iget-object v3, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/prineside/tdi2/ScheduledUpdater$Updatable;->scheduledUpdatableSetId(I)V

    return v4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Updatable is not scheduled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->k:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ScheduledUpdater;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
