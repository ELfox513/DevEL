.class public Lcom/android/dx/dex/code/CatchTable$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/CatchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/code/CatchTable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final handlers:Lcom/android/dx/dex/code/CatchHandlerList;

.field private final start:I


# direct methods
.method public constructor <init>(IILcom/android/dx/dex/code/CatchHandlerList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-le p2, p1, :cond_1

    invoke-virtual {p3}, Lb2/o;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    iput p2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    iput-object p3, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlers.isMutable()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I
    .locals 4

    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    iget v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    if-le v0, v1, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    iget-object p1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    return v0
.end method

.method public getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v1}, Lb2/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
