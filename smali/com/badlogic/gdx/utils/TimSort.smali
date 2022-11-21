.class Lcom/badlogic/gdx/utils/TimSort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public final g:[I

.field public final h:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->d:[Ljava/lang/Object;

    const/16 v0, 0x28

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->g:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    return-void
.end method

.method public static a([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    if-ne p3, p1, :cond_0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    :cond_0
    if-ge p3, p2, :cond_5

    aget-object v0, p0, p3

    move v1, p1

    move v2, p3

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    add-int v4, v1, v2

    ushr-int/lit8 v3, v4, 0x1

    aget-object v4, p0, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int v2, p3, v1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v2

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p0, v1

    aput-object v3, p0, v2

    :goto_2
    aput-object v0, p0, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static b([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v0

    aget-object v2, p0, p1

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/utils/TimSort;->n([Ljava/lang/Object;II)V

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sub-int/2addr v1, p1

    return v1
.end method

.method public static d(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    add-int v0, p2, p4

    aget-object v1, p1, v0

    invoke-interface {p5, p0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    sub-int/2addr p3, p4

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p3, :cond_1

    add-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    move v1, v3

    move v3, p3

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    if-le v3, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v3

    :goto_1
    add-int/2addr v1, p4

    add-int/2addr p3, p4

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_2
    if-ge v3, p3, :cond_5

    sub-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_5

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_4

    move v1, v3

    move v3, p3

    goto :goto_2

    :cond_4
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_2

    :cond_5
    if-le v3, p3, :cond_6

    goto :goto_3

    :cond_6
    move p3, v3

    :goto_3
    sub-int p3, p4, p3

    sub-int/2addr p4, v1

    move v1, p3

    move p3, p4

    :goto_4
    add-int/2addr v1, v2

    :goto_5
    if-ge v1, p3, :cond_8

    sub-int p4, p3, v1

    ushr-int/2addr p4, v2

    add-int/2addr p4, v1

    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p5, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_7

    add-int/lit8 p4, p4, 0x1

    move v1, p4

    goto :goto_5

    :cond_7
    move p3, p4

    goto :goto_5

    :cond_8
    return p3
.end method

.method public static e(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    add-int v0, p2, p4

    aget-object v1, p1, v0

    invoke-interface {p5, p0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_3

    add-int/lit8 p3, p4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p3, :cond_1

    sub-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    move v1, v3

    move v3, p3

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    if-le v3, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v3

    :goto_1
    sub-int p3, p4, p3

    sub-int/2addr p4, v1

    goto :goto_4

    :cond_3
    sub-int/2addr p3, p4

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_2
    if-ge v3, p3, :cond_5

    add-int v4, v0, v3

    aget-object v4, p1, v4

    invoke-interface {p5, p0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_4

    move v1, v3

    move v3, p3

    goto :goto_2

    :cond_4
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_2

    :cond_5
    if-le v3, p3, :cond_6

    goto :goto_3

    :cond_6
    move p3, v3

    :goto_3
    add-int v0, v1, p4

    add-int/2addr p4, p3

    move p3, v0

    :goto_4
    add-int/2addr p3, v2

    :goto_5
    if-ge p3, p4, :cond_8

    sub-int v0, p4, p3

    ushr-int/2addr v0, v2

    add-int/2addr v0, p3

    add-int v1, p2, v0

    aget-object v1, p1, v1

    invoke-interface {p5, p0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    move p4, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p3, v0

    goto :goto_5

    :cond_8
    return p4
.end method

.method public static k(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static m(III)V
    .locals 2

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > toIndex("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n([Ljava/lang/Object;II)V
    .locals 3

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    aget-object v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-object v2, p0, p2

    aput-object v2, p0, p1

    add-int/lit8 p1, p2, -0x1

    aput-object v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(I)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->e:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->e:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->d:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_1

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    array-length p1, p1

    ushr-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->d:[Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->d:[Ljava/lang/Object;

    return-object p1
.end method

.method public doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    array-length v1, p1

    invoke-static {v1, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->m(III)V

    sub-int v1, p4, p3

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->b([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p1, p3, p4, v0, p2}, Lcom/badlogic/gdx/utils/TimSort;->a([Ljava/lang/Object;IIILjava/util/Comparator;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->b:Ljava/util/Comparator;

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->e:I

    invoke-static {v1}, Lcom/badlogic/gdx/utils/TimSort;->k(I)I

    move-result v2

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->b([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    if-ge v3, v2, :cond_4

    if-gt v1, v2, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    add-int v5, p3, v4

    add-int/2addr v3, p3

    invoke-static {p1, p3, v5, v3, p2}, Lcom/badlogic/gdx/utils/TimSort;->a([Ljava/lang/Object;IIILjava/util/Comparator;)V

    move v3, v4

    :cond_4
    invoke-virtual {p0, p3, v3}, Lcom/badlogic/gdx/utils/TimSort;->l(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/TimSort;->g()V

    add-int/2addr p3, v3

    sub-int/2addr v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/TimSort;->h()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->b:Ljava/util/Comparator;

    iget-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->d:[Ljava/lang/Object;

    iget p3, p0, Lcom/badlogic/gdx/utils/TimSort;->e:I

    :goto_1
    if-ge v0, p3, :cond_5

    aput-object p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final f(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/TimSort;->g:[I

    aget v9, v2, v1

    iget-object v3, v0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    aget v10, v3, v1

    add-int/lit8 v4, v1, 0x1

    aget v15, v2, v4

    aget v14, v3, v4

    add-int v5, v10, v14

    aput v5, v3, v1

    iget v5, v0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    add-int/lit8 v6, v5, -0x3

    if-ne v1, v6, :cond_0

    add-int/lit8 v1, v1, 0x2

    aget v6, v2, v1

    aput v6, v2, v4

    aget v1, v3, v1

    aput v1, v3, v4

    :cond_0
    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    iget-object v4, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    aget-object v3, v4, v15

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/TimSort;->b:Ljava/util/Comparator;

    move v5, v9

    move v6, v10

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/utils/TimSort;->e(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    add-int/2addr v9, v1

    sub-int/2addr v10, v1

    if-nez v10, :cond_1

    return-void

    :cond_1
    iget-object v12, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v9, v10

    add-int/lit8 v1, v1, -0x1

    aget-object v11, v12, v1

    add-int/lit8 v1, v14, -0x1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/TimSort;->b:Ljava/util/Comparator;

    move v13, v15

    move v3, v15

    move v15, v1

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Lcom/badlogic/gdx/utils/TimSort;->d(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-gt v10, v1, :cond_3

    invoke-virtual {v0, v9, v10, v3, v1}, Lcom/badlogic/gdx/utils/TimSort;->j(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v9, v10, v3, v1}, Lcom/badlogic/gdx/utils/TimSort;->i(IIII)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 5

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-le v2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->f(I)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final h()V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->f(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(IIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/TimSort;->c(I)[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v1, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p1, p2

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    add-int/lit8 v4, v2, -0x1

    add-int/2addr v1, v2

    sub-int/2addr v1, v10

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v6, v3, -0x1

    aget-object v3, v7, v3

    aput-object v3, v7, v1

    add-int/lit8 v1, p2, -0x1

    if-nez v1, :cond_0

    sub-int/2addr v5, v4

    invoke-static {v8, v9, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    if-ne v2, v10, :cond_1

    sub-int/2addr v5, v1

    sub-int/2addr v6, v1

    add-int/2addr v6, v10

    add-int/lit8 v2, v5, 0x1

    invoke-static {v7, v6, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v8, v4

    aput-object v1, v7, v5

    return-void

    :cond_1
    iget-object v11, v0, Lcom/badlogic/gdx/utils/TimSort;->b:Ljava/util/Comparator;

    iget v3, v0, Lcom/badlogic/gdx/utils/TimSort;->c:I

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_2
    aget-object v14, v8, v4

    aget-object v15, v7, v6

    invoke-interface {v11, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_4

    add-int/lit8 v12, v5, -0x1

    add-int/lit8 v14, v6, -0x1

    aget-object v6, v7, v6

    aput-object v6, v7, v5

    add-int/2addr v13, v10

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    move v6, v14

    goto/16 :goto_4

    :cond_3
    move v5, v12

    move v6, v14

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v5, -0x1

    add-int/lit8 v14, v4, -0x1

    aget-object v4, v8, v4

    aput-object v4, v7, v5

    add-int/2addr v12, v10

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v10, :cond_5

    move v12, v13

    move v4, v14

    goto/16 :goto_4

    :cond_5
    move v5, v13

    move v4, v14

    const/4 v13, 0x0

    :goto_1
    or-int v14, v13, v12

    if-lt v14, v3, :cond_2

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    :goto_2
    aget-object v1, v8, v15

    add-int/lit8 v5, v12, -0x1

    move-object v2, v7

    move/from16 v3, p1

    move v4, v12

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/utils/TimSort;->e(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    sub-int v6, v12, v1

    if-eqz v6, :cond_7

    sub-int v1, v16, v6

    sub-int v2, v17, v6

    sub-int v3, v12, v6

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v7, v4, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v3, :cond_6

    move v12, v1

    move v6, v2

    move v1, v3

    move v2, v13

    move v3, v14

    move v4, v15

    goto/16 :goto_4

    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    move v12, v3

    :cond_7
    add-int/lit8 v18, v16, -0x1

    add-int/lit8 v19, v15, -0x1

    aget-object v1, v8, v15

    aput-object v1, v7, v16

    add-int/lit8 v13, v13, -0x1

    if-ne v13, v10, :cond_8

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v6, v17

    move/from16 v12, v18

    :goto_3
    move/from16 v4, v19

    goto :goto_4

    :cond_8
    aget-object v1, v7, v17

    const/4 v3, 0x0

    add-int/lit8 v5, v13, -0x1

    move-object v2, v8

    move v4, v13

    move v15, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/utils/TimSort;->d(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    sub-int v1, v13, v1

    if-eqz v1, :cond_a

    sub-int v2, v18, v1

    sub-int v4, v19, v1

    sub-int v3, v13, v1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v8, v5, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt v3, v10, :cond_9

    move v1, v12

    move/from16 v6, v17

    move v12, v2

    move v2, v3

    move v3, v14

    goto :goto_4

    :cond_9
    move/from16 v18, v2

    move v13, v3

    move/from16 v19, v4

    :cond_a
    add-int/lit8 v16, v18, -0x1

    add-int/lit8 v2, v17, -0x1

    aget-object v3, v7, v17

    aput-object v3, v7, v18

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_e

    move v6, v2

    move v1, v12

    move v2, v13

    move v3, v14

    move/from16 v12, v16

    goto :goto_3

    :goto_4
    if-ge v3, v10, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput v3, v0, Lcom/badlogic/gdx/utils/TimSort;->c:I

    if-ne v2, v10, :cond_c

    sub-int/2addr v12, v1

    sub-int/2addr v6, v1

    add-int/2addr v6, v10

    add-int/lit8 v2, v12, 0x1

    invoke-static {v7, v6, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v8, v4

    aput-object v1, v7, v12

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    add-int/lit8 v1, v2, -0x1

    sub-int/2addr v12, v1

    invoke-static {v8, v9, v7, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    return-void

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Comparison method violates its general contract!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x7

    if-lt v15, v3, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    if-lt v1, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v1, v4

    if-nez v1, :cond_12

    if-gez v14, :cond_11

    const/4 v14, 0x0

    :cond_11
    add-int/lit8 v3, v14, 0x2

    move v6, v2

    move v1, v12

    move v2, v13

    move/from16 v5, v16

    move/from16 v4, v19

    goto/16 :goto_0

    :cond_12
    move/from16 v17, v2

    move/from16 v15, v19

    goto/16 :goto_2
.end method

.method public final j(IIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/TimSort;->c(I)[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v1, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, p3, 0x1

    aget-object v5, v7, p3

    aput-object v5, v7, v1

    add-int/lit8 v1, p4, -0x1

    if-nez v1, :cond_0

    invoke-static {v8, v9, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v10, 0x1

    if-ne v2, v10, :cond_1

    invoke-static {v7, v4, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    aget-object v1, v8, v9

    aput-object v1, v7, v3

    return-void

    :cond_1
    iget-object v11, v0, Lcom/badlogic/gdx/utils/TimSort;->b:Ljava/util/Comparator;

    iget v5, v0, Lcom/badlogic/gdx/utils/TimSort;->c:I

    const/4 v6, 0x0

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    aget-object v14, v7, v4

    aget-object v15, v8, v6

    invoke-interface {v11, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_3

    add-int/lit8 v12, v3, 0x1

    add-int/lit8 v14, v4, 0x1

    aget-object v4, v7, v4

    aput-object v4, v7, v3

    add-int/2addr v13, v10

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    move v4, v14

    goto :goto_2

    :cond_2
    move v3, v12

    move v4, v14

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v3, 0x1

    add-int/lit8 v14, v6, 0x1

    aget-object v6, v8, v6

    aput-object v6, v7, v3

    add-int/2addr v12, v10

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v10, :cond_4

    move v12, v13

    move v6, v14

    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_4
    move v3, v13

    move v6, v14

    const/4 v13, 0x0

    :goto_3
    or-int v14, v12, v13

    if-lt v14, v5, :cond_12

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    :goto_4
    aget-object v1, v7, v15

    const/4 v5, 0x0

    move-object v2, v8

    move v3, v6

    move v4, v13

    move v9, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/utils/TimSort;->e(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v8, v9, v7, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v14, v6

    add-int v2, v9, v6

    sub-int v3, v13, v6

    if-gt v3, v10, :cond_5

    move v6, v2

    move v2, v3

    move v4, v15

    move/from16 v5, v16

    const/4 v9, 0x1

    move/from16 v17, v12

    move v12, v1

    move/from16 v1, v17

    goto/16 :goto_6

    :cond_5
    move v14, v1

    move v9, v2

    move v13, v3

    :cond_6
    add-int/lit8 v5, v14, 0x1

    add-int/lit8 v4, v15, 0x1

    aget-object v1, v7, v15

    aput-object v1, v7, v14

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_7

    move v6, v9

    move v1, v12

    move v2, v13

    const/4 v9, 0x1

    move v12, v5

    move/from16 v5, v16

    goto :goto_6

    :cond_7
    aget-object v1, v8, v9

    const/4 v14, 0x0

    move-object v2, v7

    move v3, v4

    move v15, v4

    move v4, v12

    move v10, v5

    move v5, v14

    move v14, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/utils/TimSort;->d(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v7, v15, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v10, v1

    add-int v4, v15, v1

    sub-int v3, v12, v1

    if-nez v3, :cond_8

    move v12, v2

    move v1, v3

    move v6, v9

    move v2, v13

    move/from16 v5, v16

    goto :goto_2

    :cond_8
    move v5, v2

    move v12, v3

    move v15, v4

    goto :goto_5

    :cond_9
    move v5, v10

    :goto_5
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v6, v9, 0x1

    aget-object v3, v8, v9

    aput-object v3, v7, v5

    add-int/lit8 v13, v13, -0x1

    const/4 v9, 0x1

    if-ne v13, v9, :cond_d

    move v1, v12

    move v4, v15

    move/from16 v5, v16

    move v12, v2

    move v2, v13

    :goto_6
    if-ge v5, v9, :cond_a

    const/4 v5, 0x1

    :cond_a
    iput v5, v0, Lcom/badlogic/gdx/utils/TimSort;->c:I

    if-ne v2, v9, :cond_b

    invoke-static {v7, v4, v7, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v1

    aget-object v1, v8, v6

    aput-object v1, v7, v12

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_c

    invoke-static {v8, v6, v7, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    return-void

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Comparison method violates its general contract!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    add-int/lit8 v16, v16, -0x1

    const/4 v3, 0x7

    if-lt v14, v3, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    if-lt v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v1, v4

    if-nez v1, :cond_11

    if-gez v16, :cond_10

    const/16 v16, 0x0

    :cond_10
    add-int/lit8 v5, v16, 0x2

    move v3, v2

    move v1, v12

    move v2, v13

    move v4, v15

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_11
    move v14, v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public final l(II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->g:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->h:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/TimSort;->f:I

    return-void
.end method
