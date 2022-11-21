.class public final Lcom/android/dx/dex/code/CatchTable;
.super Lb2/f;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchTable$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb2/f;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/code/CatchTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/dx/dex/code/CatchTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchTable;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->compareTo(Lcom/android/dx/dex/code/CatchTable;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchTable$Entry;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    return-object p1
.end method

.method public set(ILcom/android/dx/dex/code/CatchTable$Entry;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
