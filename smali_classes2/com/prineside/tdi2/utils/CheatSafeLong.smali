.class public Lcom/prineside/tdi2/utils/CheatSafeLong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;


# instance fields
.field public a:J

.field public b:J

.field public d:J

.field public k:J

.field public p:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeLong$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/CheatSafeLong$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/CheatSafeLong;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    neg-long p3, p3

    iput-wide p3, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->k:J

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/utils/CheatSafeLong;->set(J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->p:J

    const-wide/16 v2, 0x1f

    mul-long v0, v0, v2

    iget-wide v4, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->a:J

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public add(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    add-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/utils/CheatSafeLong;->set(J)V

    return-void
.end method

.method public get()J
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->k:J

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/utils/CheatSafeLong;->set(J)V

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->p:J

    return-wide v0
.end method

.method public getSetOnCheat()J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->k:J

    neg-long v0, v0

    return-wide v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->k:J

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/utils/CheatSafeLong;->set(J)V

    return-void
.end method

.method public set(J)V
    .locals 8

    iput-wide p1, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->p:J

    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->a:J

    invoke-static {v0}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->b:J

    iget-wide v2, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->p:J

    const-wide/16 v4, 0x1f

    mul-long v2, v2, v4

    iget-wide v6, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->a:J

    add-long/2addr v2, v6

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->d:J

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CheatSafeLong"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sub(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/utils/CheatSafeLong;->set(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->k:J

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    iget-wide v0, p0, Lcom/prineside/tdi2/utils/CheatSafeLong;->p:J

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    return-void
.end method
