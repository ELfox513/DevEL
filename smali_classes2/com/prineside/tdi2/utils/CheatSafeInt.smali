.class public Lcom/prineside/tdi2/utils/CheatSafeInt;
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
.field public a:I

.field public b:I

.field public d:I

.field public k:I

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/CheatSafeInt;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    neg-int p2, p2

    iput p2, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->k:I

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->p:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->d:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public add(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    const p1, 0x7fffffff

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void
.end method

.method public get()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->k:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return v0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->p:I

    return v0
.end method

.method public getSetOnCheat()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->k:I

    neg-int v0, v0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->k:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void
.end method

.method public set(I)V
    .locals 3

    iput p1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->p:I

    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->a:I

    invoke-static {v0}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->b:I

    iget v1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->p:I

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->a:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->d:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CheatSafeInt"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sub(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget p1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->k:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/utils/CheatSafeInt;->p:I

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
