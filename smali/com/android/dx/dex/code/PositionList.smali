.class public final Lcom/android/dx/dex/code/PositionList;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/PositionList$Entry;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/PositionList;

.field public static final IMPORTANT:I = 0x3

.field public static final LINES:I = 0x2

.field public static final NONE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/dx/dex/code/PositionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/PositionList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/PositionList;->EMPTY:Lcom/android/dx/dex/code/PositionList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;I)Lcom/android/dx/dex/code/PositionList;
    .locals 13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, Lw1/w;->d:Lw1/w;

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v3

    new-array v4, v3, [Lcom/android/dx/dex/code/PositionList$Entry;

    const/4 v5, 0x0

    move-object v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v6, v3, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v10

    instance-of v11, v10, Lcom/android/dx/dex/code/CodeAddress;

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v11

    invoke-virtual {v11, v1}, Lw1/w;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v8}, Lw1/w;->b(Lw1/w;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v10}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v9

    invoke-direct {v8, v9, v11}, Lcom/android/dx/dex/code/PositionList$Entry;-><init>(ILw1/w;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/android/dx/dex/code/PositionList;

    invoke-direct {p0, v7}, Lcom/android/dx/dex/code/PositionList;-><init>(I)V

    :goto_3
    if-ge v5, v7, :cond_7

    aget-object p1, v4, v5

    invoke-virtual {p0, v5, p1}, Lcom/android/dx/dex/code/PositionList;->set(ILcom/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lb2/o;->setImmutable()V

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/dx/dex/code/PositionList;->EMPTY:Lcom/android/dx/dex/code/PositionList;

    return-object p0
.end method


# virtual methods
.method public get(I)Lcom/android/dx/dex/code/PositionList$Entry;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/PositionList$Entry;

    return-object p1
.end method

.method public set(ILcom/android/dx/dex/code/PositionList$Entry;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
