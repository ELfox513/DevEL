.class public final Lr4/t34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final E:Lr4/g04;

.field public static final F:[B

.field public static final G:Lr4/e5;


# instance fields
.field public A:Lr4/d04;

.field public B:[Lr4/d14;

.field public C:[Lr4/d14;

.field public D:Z

.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/e5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/s34;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/xb;

.field public final d:Lr4/xb;

.field public final e:Lr4/xb;

.field public final f:[B

.field public final g:Lr4/xb;

.field public final h:Lr4/p8;

.field public final i:Lr4/xb;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/d34;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/r34;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:Lr4/xb;

.field public q:J

.field public r:I

.field public s:J

.field public t:J

.field public u:J

.field public v:Lr4/s34;

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lr4/q34;->a:Lr4/g04;

    sput-object v0, Lr4/t34;->E:Lr4/g04;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lr4/t34;->F:[B

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    sput-object v0, Lr4/t34;->G:Lr4/e5;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILr4/fc;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/t34;->a:Ljava/util/List;

    new-instance p1, Lr4/p8;

    invoke-direct {p1}, Lr4/p8;-><init>()V

    iput-object p1, p0, Lr4/t34;->h:Lr4/p8;

    new-instance p1, Lr4/xb;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/t34;->i:Lr4/xb;

    new-instance p1, Lr4/xb;

    sget-object v0, Lr4/nb;->a:[B

    invoke-direct {p1, v0}, Lr4/xb;-><init>([B)V

    iput-object p1, p0, Lr4/t34;->c:Lr4/xb;

    new-instance p1, Lr4/xb;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/t34;->d:Lr4/xb;

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/t34;->e:Lr4/xb;

    new-array p1, p2, [B

    iput-object p1, p0, Lr4/t34;->f:[B

    new-instance p2, Lr4/xb;

    invoke-direct {p2, p1}, Lr4/xb;-><init>([B)V

    iput-object p2, p0, Lr4/t34;->g:Lr4/xb;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lr4/t34;->k:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/t34;->b:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/t34;->t:J

    iput-wide p1, p0, Lr4/t34;->s:J

    iput-wide p1, p0, Lr4/t34;->u:J

    sget-object p1, Lr4/d04;->n:Lr4/d04;

    iput-object p1, p0, Lr4/t34;->A:Lr4/d04;

    const/4 p1, 0x0

    new-array p2, p1, [Lr4/d14;

    iput-object p2, p0, Lr4/t34;->B:[Lr4/d14;

    new-array p1, p1, [Lr4/d14;

    iput-object p1, p0, Lr4/t34;->C:[Lr4/d14;

    return-void
.end method

.method public static c(I)I
    .locals 2

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0
.end method

.method public static d(Lr4/xb;ILr4/f44;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lr4/xb;->p(I)V

    invoke-virtual {p0}, Lr4/xb;->D()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lr4/xb;->b()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lr4/f44;->m:[Z

    iget p1, p2, Lr4/f44;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lr4/f44;->e:I

    if-ne v1, v2, :cond_2

    iget-object v2, p2, Lr4/f44;->m:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lr4/xb;->l()I

    move-result p1

    invoke-virtual {p2, p1}, Lr4/f44;->a(I)V

    iget-object p1, p2, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object p1

    iget-object v1, p2, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->m()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lr4/xb;->u([BII)V

    iget-object p0, p2, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {p0, v0}, Lr4/xb;->p(I)V

    iput-boolean v0, p2, Lr4/f44;->p:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object p0

    throw p0
.end method

.method public static g(Ljava/util/List;)Lr4/fz3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/e34;",
            ">;)",
            "Lr4/fz3;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/e34;

    iget v5, v4, Lr4/f34;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Lr4/e34;->b:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    invoke-static {v4}, Lr4/a44;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v6, Lr4/dy3;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v1, v7, v4}, Lr4/dy3;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lr4/fz3;

    invoke-direct {p0, v3}, Lr4/fz3;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static final j(Landroid/util/SparseArray;I)Lr4/o34;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lr4/o34;",
            ">;I)",
            "Lr4/o34;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/o34;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/o34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/t34;->l:I

    iput v0, p0, Lr4/t34;->o:I

    return-void
.end method

.method public final b(J)V
    .locals 47

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/d34;

    iget-wide v1, v1, Lr4/d34;->b:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_4b

    iget-object v1, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lr4/d34;

    iget v1, v2, Lr4/f34;->a:I

    const v3, 0x6d6f6f76

    const/16 v6, 0xc

    const/16 v7, 0x8

    if-ne v1, v3, :cond_8

    iget-object v1, v2, Lr4/d34;->c:Ljava/util/List;

    invoke-static {v1}, Lr4/t34;->g(Ljava/util/List;)Lr4/fz3;

    move-result-object v1

    const v3, 0x6d766578

    invoke-virtual {v2, v3}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iget-object v8, v3, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    iget-object v13, v3, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr4/e34;

    iget v14, v13, Lr4/f34;->a:I

    const v15, 0x74726578

    if-ne v14, v15, :cond_1

    iget-object v13, v13, Lr4/e34;->b:Lr4/xb;

    invoke-virtual {v13, v6}, Lr4/xb;->p(I)V

    invoke-virtual {v13}, Lr4/xb;->D()I

    move-result v14

    invoke-virtual {v13}, Lr4/xb;->D()I

    move-result v15

    invoke-virtual {v13}, Lr4/xb;->D()I

    move-result v10

    invoke-virtual {v13}, Lr4/xb;->D()I

    move-result v6

    invoke-virtual {v13}, Lr4/xb;->D()I

    move-result v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v11, Lr4/o34;

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v11, v15, v10, v6, v13}, Lr4/o34;-><init>(IIII)V

    invoke-static {v14, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lr4/o34;

    invoke-virtual {v12, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v6, 0x6d656864

    if-ne v14, v6, :cond_3

    iget-object v4, v13, Lr4/e34;->b:Lr4/xb;

    invoke-virtual {v4, v7}, Lr4/xb;->p(I)V

    invoke-virtual {v4}, Lr4/xb;->D()I

    move-result v5

    invoke-static {v5}, Lr4/f34;->a(I)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lr4/xb;->B()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lr4/xb;->d()J

    move-result-wide v4

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/16 v6, 0xc

    goto :goto_1

    :cond_4
    new-instance v3, Lr4/p04;

    invoke-direct {v3}, Lr4/p04;-><init>()V

    new-instance v9, Lr4/p34;

    invoke-direct {v9, v0}, Lr4/p34;-><init>(Lr4/t34;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-static/range {v2 .. v9}, Lr4/n34;->a(Lr4/d34;Lr4/p04;JLr4/fz3;ZZLr4/p03;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v2, :cond_5

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/g44;

    iget-object v4, v3, Lr4/g44;->a:Lr4/d44;

    new-instance v5, Lr4/s34;

    iget-object v6, v0, Lr4/t34;->A:Lr4/d04;

    iget v7, v4, Lr4/d44;->b:I

    invoke-interface {v6, v10, v7}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v6

    iget v7, v4, Lr4/d44;->a:I

    invoke-static {v12, v7}, Lr4/t34;->j(Landroid/util/SparseArray;I)Lr4/o34;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lr4/s34;-><init>(Lr4/d14;Lr4/g44;Lr4/o34;)V

    iget-object v3, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    iget v6, v4, Lr4/d44;->a:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lr4/t34;->t:J

    iget-wide v3, v4, Lr4/d44;->e:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lr4/t34;->t:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lr4/t34;->A:Lr4/d04;

    invoke-interface {v1}, Lr4/d04;->y()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Lr4/ja;->d(Z)V

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v2, :cond_0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/g44;

    iget-object v4, v3, Lr4/g44;->a:Lr4/d44;

    iget-object v5, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    iget v6, v4, Lr4/d44;->a:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr4/s34;

    iget v4, v4, Lr4/d44;->a:I

    invoke-static {v12, v4}, Lr4/t34;->j(Landroid/util/SparseArray;I)Lr4/o34;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lr4/s34;->c(Lr4/g44;Lr4/o34;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    const v3, 0x6d6f6f66

    if-ne v1, v3, :cond_49

    iget-object v1, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    iget-object v3, v0, Lr4/t34;->f:[B

    iget-object v6, v2, Lr4/d34;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_43

    iget-object v10, v2, Lr4/d34;->d:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr4/d34;

    iget v11, v10, Lr4/f34;->a:I

    const v12, 0x74726166

    if-ne v11, v12, :cond_42

    const v11, 0x74666864

    invoke-virtual {v10, v11}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v11, Lr4/e34;->b:Lr4/xb;

    invoke-virtual {v11, v7}, Lr4/xb;->p(I)V

    invoke-virtual {v11}, Lr4/xb;->D()I

    move-result v12

    const v13, 0xffffff

    and-int/2addr v12, v13

    invoke-virtual {v11}, Lr4/xb;->D()I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr4/s34;

    if-nez v14, :cond_9

    const/4 v14, 0x0

    goto :goto_b

    :cond_9
    and-int/lit8 v15, v12, 0x1

    if-eqz v15, :cond_a

    invoke-virtual {v11}, Lr4/xb;->d()J

    move-result-wide v4

    iget-object v15, v14, Lr4/s34;->b:Lr4/f44;

    iput-wide v4, v15, Lr4/f44;->b:J

    iput-wide v4, v15, Lr4/f44;->c:J

    :cond_a
    iget-object v4, v14, Lr4/s34;->e:Lr4/o34;

    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_b

    invoke-virtual {v11}, Lr4/xb;->D()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_b
    iget v5, v4, Lr4/o34;->a:I

    :goto_7
    and-int/lit8 v15, v12, 0x8

    if-eqz v15, :cond_c

    invoke-virtual {v11}, Lr4/xb;->D()I

    move-result v15

    goto :goto_8

    :cond_c
    iget v15, v4, Lr4/o34;->b:I

    :goto_8
    and-int/lit8 v16, v12, 0x10

    if-eqz v16, :cond_d

    invoke-virtual {v11}, Lr4/xb;->D()I

    move-result v16

    move/from16 v9, v16

    goto :goto_9

    :cond_d
    iget v9, v4, Lr4/o34;->c:I

    :goto_9
    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_e

    invoke-virtual {v11}, Lr4/xb;->D()I

    move-result v4

    goto :goto_a

    :cond_e
    iget v4, v4, Lr4/o34;->d:I

    :goto_a
    iget-object v11, v14, Lr4/s34;->b:Lr4/f44;

    new-instance v12, Lr4/o34;

    invoke-direct {v12, v5, v15, v9, v4}, Lr4/o34;-><init>(IIII)V

    iput-object v12, v11, Lr4/f44;->a:Lr4/o34;

    :goto_b
    if-nez v14, :cond_f

    goto/16 :goto_2a

    :cond_f
    iget-object v4, v14, Lr4/s34;->b:Lr4/f44;

    iget-wide v11, v4, Lr4/f44;->q:J

    iget-boolean v5, v4, Lr4/f44;->r:Z

    invoke-virtual {v14}, Lr4/s34;->d()V

    const/4 v9, 0x1

    invoke-static {v14, v9}, Lr4/s34;->a(Lr4/s34;Z)Z

    const v15, 0x74666474

    invoke-virtual {v10, v15}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v15

    if-eqz v15, :cond_11

    iget-object v5, v15, Lr4/e34;->b:Lr4/xb;

    invoke-virtual {v5, v7}, Lr4/xb;->p(I)V

    invoke-virtual {v5}, Lr4/xb;->D()I

    move-result v11

    invoke-static {v11}, Lr4/f34;->a(I)I

    move-result v11

    if-ne v11, v9, :cond_10

    invoke-virtual {v5}, Lr4/xb;->d()J

    move-result-wide v11

    goto :goto_c

    :cond_10
    invoke-virtual {v5}, Lr4/xb;->B()J

    move-result-wide v11

    :goto_c
    iput-wide v11, v4, Lr4/f44;->q:J

    iput-boolean v9, v4, Lr4/f44;->r:Z

    goto :goto_d

    :cond_11
    iput-wide v11, v4, Lr4/f44;->q:J

    iput-boolean v5, v4, Lr4/f44;->r:Z

    :goto_d
    iget-object v5, v10, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_e
    const v13, 0x7472756e

    if-ge v11, v9, :cond_13

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lr4/e34;

    move-object/from16 v18, v1

    iget v1, v7, Lr4/f34;->a:I

    if-ne v1, v13, :cond_12

    iget-object v1, v7, Lr4/e34;->b:Lr4/xb;

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Lr4/xb;->p(I)V

    invoke-virtual {v1}, Lr4/xb;->b()I

    move-result v1

    if-lez v1, :cond_12

    add-int/2addr v15, v1

    add-int/lit8 v12, v12, 0x1

    :cond_12
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v18

    const/16 v7, 0x8

    goto :goto_e

    :cond_13
    move-object/from16 v18, v1

    const/4 v1, 0x0

    iput v1, v14, Lr4/s34;->h:I

    iput v1, v14, Lr4/s34;->g:I

    iput v1, v14, Lr4/s34;->f:I

    iget-object v1, v14, Lr4/s34;->b:Lr4/f44;

    iput v12, v1, Lr4/f44;->d:I

    iput v15, v1, Lr4/f44;->e:I

    iget-object v7, v1, Lr4/f44;->g:[I

    array-length v7, v7

    if-ge v7, v12, :cond_14

    new-array v7, v12, [J

    iput-object v7, v1, Lr4/f44;->f:[J

    new-array v7, v12, [I

    iput-object v7, v1, Lr4/f44;->g:[I

    :cond_14
    iget-object v7, v1, Lr4/f44;->h:[I

    array-length v7, v7

    if-ge v7, v15, :cond_15

    mul-int/lit8 v15, v15, 0x7d

    div-int/lit8 v15, v15, 0x64

    new-array v7, v15, [I

    iput-object v7, v1, Lr4/f44;->h:[I

    new-array v7, v15, [I

    iput-object v7, v1, Lr4/f44;->i:[I

    new-array v7, v15, [J

    iput-object v7, v1, Lr4/f44;->j:[J

    new-array v7, v15, [Z

    iput-object v7, v1, Lr4/f44;->k:[Z

    new-array v7, v15, [Z

    iput-object v7, v1, Lr4/f44;->m:[Z

    :cond_15
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_f
    const-wide/16 v19, 0x0

    if-ge v1, v9, :cond_24

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr4/e34;

    iget v12, v15, Lr4/f34;->a:I

    if-ne v12, v13, :cond_23

    add-int/lit8 v12, v11, 0x1

    iget-object v15, v15, Lr4/e34;->b:Lr4/xb;

    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Lr4/xb;->p(I)V

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v13

    const v17, 0xffffff

    and-int v13, v13, v17

    move-object/from16 v21, v5

    iget-object v5, v14, Lr4/s34;->d:Lr4/g44;

    iget-object v5, v5, Lr4/g44;->a:Lr4/d44;

    move/from16 v22, v6

    iget-object v6, v14, Lr4/s34;->b:Lr4/f44;

    move/from16 v23, v9

    iget-object v9, v6, Lr4/f44;->a:Lr4/o34;

    sget v24, Lr4/lc;->a:I

    move/from16 v24, v12

    iget-object v12, v6, Lr4/f44;->g:[I

    invoke-virtual {v15}, Lr4/xb;->b()I

    move-result v25

    aput v25, v12, v11

    iget-object v12, v6, Lr4/f44;->f:[J

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    iget-wide v2, v6, Lr4/f44;->b:J

    aput-wide v2, v12, v11

    and-int/lit8 v27, v13, 0x1

    if-eqz v27, :cond_16

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v0

    move/from16 v27, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    aput-wide v2, v12, v11

    goto :goto_10

    :cond_16
    move/from16 v27, v1

    :goto_10
    and-int/lit8 v0, v13, 0x4

    iget v1, v9, Lr4/o34;->d:I

    if-eqz v0, :cond_17

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v1

    :cond_17
    and-int/lit16 v2, v13, 0x100

    and-int/lit16 v3, v13, 0x200

    and-int/lit16 v12, v13, 0x400

    and-int/lit16 v13, v13, 0x800

    move/from16 v28, v1

    iget-object v1, v5, Lr4/d44;->h:[J

    if-eqz v1, :cond_18

    move/from16 v29, v8

    array-length v8, v1

    move-object/from16 v30, v10

    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    const/4 v8, 0x0

    aget-wide v31, v1, v8

    cmp-long v1, v31, v19

    if-nez v1, :cond_19

    iget-object v1, v5, Lr4/d44;->i:[J

    invoke-static {v1}, Lr4/lc;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aget-wide v31, v1, v8

    const-wide/32 v33, 0xf4240

    move v8, v13

    move-object v1, v14

    iget-wide v13, v5, Lr4/d44;->c:J

    move-wide/from16 v35, v13

    invoke-static/range {v31 .. v36}, Lr4/lc;->h(JJJ)J

    move-result-wide v19

    goto :goto_11

    :cond_18
    move/from16 v29, v8

    move-object/from16 v30, v10

    :cond_19
    move v8, v13

    move-object v1, v14

    :goto_11
    iget-object v10, v6, Lr4/f44;->h:[I

    iget-object v13, v6, Lr4/f44;->i:[I

    iget-object v14, v6, Lr4/f44;->j:[J

    move-object/from16 v31, v4

    iget-object v4, v6, Lr4/f44;->k:[Z

    move-object/from16 v32, v4

    iget-object v4, v6, Lr4/f44;->g:[I

    aget v4, v4, v11

    add-int/2addr v4, v7

    move-object/from16 v39, v10

    iget-wide v10, v5, Lr4/d44;->c:J

    move-object v5, v13

    move-object/from16 v40, v14

    iget-wide v13, v6, Lr4/f44;->q:J

    :goto_12
    if-ge v7, v4, :cond_22

    if-eqz v2, :cond_1a

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v33

    move/from16 v41, v2

    move/from16 v2, v33

    goto :goto_13

    :cond_1a
    move/from16 v41, v2

    iget v2, v9, Lr4/o34;->b:I

    :goto_13
    invoke-static {v2}, Lr4/t34;->c(I)I

    if-eqz v3, :cond_1b

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v33

    move/from16 v42, v3

    move/from16 v3, v33

    goto :goto_14

    :cond_1b
    move/from16 v42, v3

    iget v3, v9, Lr4/o34;->c:I

    :goto_14
    invoke-static {v3}, Lr4/t34;->c(I)I

    if-eqz v12, :cond_1c

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v33

    move/from16 v43, v0

    move/from16 v0, v33

    goto :goto_15

    :cond_1c
    move/from16 v43, v0

    if-nez v7, :cond_1e

    if-eqz v0, :cond_1d

    move/from16 v0, v28

    const/4 v7, 0x0

    goto :goto_15

    :cond_1d
    const/4 v7, 0x0

    :cond_1e
    iget v0, v9, Lr4/o34;->d:I

    :goto_15
    if-eqz v8, :cond_1f

    move/from16 v44, v4

    invoke-virtual {v15}, Lr4/xb;->D()I

    move-result v4

    move/from16 v46, v8

    move-object/from16 v45, v9

    int-to-long v8, v4

    const-wide/32 v33, 0xf4240

    mul-long v8, v8, v33

    div-long/2addr v8, v10

    long-to-int v4, v8

    aput v4, v5, v7

    goto :goto_16

    :cond_1f
    move/from16 v44, v4

    move/from16 v46, v8

    move-object/from16 v45, v9

    const/4 v4, 0x0

    aput v4, v5, v7

    :goto_16
    const-wide/32 v35, 0xf4240

    move-wide/from16 v33, v13

    move-wide/from16 v37, v10

    invoke-static/range {v33 .. v38}, Lr4/lc;->h(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v19

    aput-wide v8, v40, v7

    iget-boolean v4, v6, Lr4/f44;->r:Z

    if-nez v4, :cond_20

    iget-object v4, v1, Lr4/s34;->d:Lr4/g44;

    move-object/from16 v33, v5

    iget-wide v4, v4, Lr4/g44;->h:J

    add-long/2addr v8, v4

    aput-wide v8, v40, v7

    goto :goto_17

    :cond_20
    move-object/from16 v33, v5

    :goto_17
    aput v3, v39, v7

    const/16 v3, 0x10

    shr-int/2addr v0, v3

    const/4 v3, 0x1

    and-int/2addr v0, v3

    xor-int/2addr v0, v3

    if-eq v3, v0, :cond_21

    const/4 v0, 0x0

    goto :goto_18

    :cond_21
    const/4 v0, 0x1

    :goto_18
    aput-boolean v0, v32, v7

    int-to-long v2, v2

    add-long/2addr v13, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v33

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v0, v43

    move/from16 v4, v44

    move-object/from16 v9, v45

    move/from16 v8, v46

    goto/16 :goto_12

    :cond_22
    move/from16 v44, v4

    iput-wide v13, v6, Lr4/f44;->q:J

    move/from16 v11, v24

    move/from16 v7, v44

    goto :goto_19

    :cond_23
    move/from16 v27, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v31, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v29, v8

    move/from16 v23, v9

    move-object/from16 v30, v10

    move-object v1, v14

    const v17, 0xffffff

    :goto_19
    add-int/lit8 v0, v27, 0x1

    move-object v14, v1

    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v9, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v8, v29

    move-object/from16 v10, v30

    move-object/from16 v4, v31

    const v13, 0x7472756e

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_f

    :cond_24
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v31, v4

    move/from16 v22, v6

    move/from16 v29, v8

    move-object/from16 v30, v10

    move-object v1, v14

    iget-object v0, v1, Lr4/s34;->d:Lr4/g44;

    iget-object v0, v0, Lr4/g44;->a:Lr4/d44;

    move-object/from16 v1, v31

    iget-object v2, v1, Lr4/f44;->a:Lr4/o34;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lr4/o34;->a:I

    invoke-virtual {v0, v2}, Lr4/d44;->a(I)Lr4/e44;

    move-result-object v0

    const v2, 0x7361697a

    move-object/from16 v10, v30

    invoke-virtual {v10, v2}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lr4/e34;->b:Lr4/xb;

    iget v3, v0, Lr4/e44;->d:I

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lr4/xb;->p(I)V

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_25

    invoke-virtual {v2, v4}, Lr4/xb;->s(I)V

    :cond_25
    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v4

    invoke-virtual {v2}, Lr4/xb;->b()I

    move-result v5

    iget v6, v1, Lr4/f44;->e:I

    if-gt v5, v6, :cond_2a

    if-nez v4, :cond_28

    iget-object v4, v1, Lr4/f44;->m:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1a
    if-ge v6, v5, :cond_27

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v8

    add-int/2addr v7, v8

    if-le v8, v3, :cond_26

    const/4 v8, 0x1

    goto :goto_1b

    :cond_26
    const/4 v8, 0x0

    :goto_1b
    aput-boolean v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_27
    const/4 v4, 0x0

    goto :goto_1d

    :cond_28
    if-le v4, v3, :cond_29

    const/4 v2, 0x1

    goto :goto_1c

    :cond_29
    const/4 v2, 0x0

    :goto_1c
    mul-int v7, v4, v5

    iget-object v3, v1, Lr4/f44;->m:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_1d
    iget-object v2, v1, Lr4/f44;->m:[Z

    iget v3, v1, Lr4/f44;->e:I

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_2b

    invoke-virtual {v1, v7}, Lr4/f44;->a(I)V

    goto :goto_1e

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Saiz sample count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is greater than fragment sample count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_2b
    :goto_1e
    const v2, 0x7361696f

    invoke-virtual {v10, v2}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, v2, Lr4/e34;->b:Lr4/xb;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lr4/xb;->p(I)V

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    invoke-virtual {v2, v3}, Lr4/xb;->s(I)V

    :cond_2c
    invoke-virtual {v2}, Lr4/xb;->b()I

    move-result v3

    if-ne v3, v6, :cond_2e

    iget-wide v5, v1, Lr4/f44;->c:J

    invoke-static {v4}, Lr4/f34;->a(I)I

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v2

    goto :goto_1f

    :cond_2d
    invoke-virtual {v2}, Lr4/xb;->d()J

    move-result-wide v2

    :goto_1f
    add-long/2addr v5, v2

    iput-wide v5, v1, Lr4/f44;->c:J

    goto :goto_20

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_2f
    :goto_20
    const/4 v2, 0x0

    const v3, 0x73656e63

    invoke-virtual {v10, v3}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, v3, Lr4/e34;->b:Lr4/xb;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lr4/t34;->d(Lr4/xb;ILr4/f44;)V

    :cond_30
    if-eqz v0, :cond_31

    iget-object v0, v0, Lr4/e44;->b:Ljava/lang/String;

    move-object/from16 v32, v0

    goto :goto_21

    :cond_31
    move-object/from16 v32, v2

    :goto_21
    move-object v0, v2

    move-object v3, v0

    const/4 v4, 0x0

    :goto_22
    iget-object v5, v10, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_34

    iget-object v5, v10, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr4/e34;

    iget-object v6, v5, Lr4/e34;->b:Lr4/xb;

    iget v5, v5, Lr4/f34;->a:I

    const v7, 0x73626770

    const v8, 0x73656967

    if-ne v5, v7, :cond_32

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lr4/xb;->p(I)V

    invoke-virtual {v6}, Lr4/xb;->D()I

    move-result v5

    if-ne v5, v8, :cond_33

    move-object v0, v6

    goto :goto_23

    :cond_32
    const/16 v7, 0xc

    const v9, 0x73677064

    if-ne v5, v9, :cond_33

    invoke-virtual {v6, v7}, Lr4/xb;->p(I)V

    invoke-virtual {v6}, Lr4/xb;->D()I

    move-result v5

    if-ne v5, v8, :cond_33

    move-object v3, v6

    :cond_33
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_34
    const/16 v7, 0xc

    if-eqz v0, :cond_3d

    if-nez v3, :cond_35

    goto/16 :goto_26

    :cond_35
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lr4/xb;->s(I)V

    invoke-static {v5}, Lr4/f34;->a(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_36

    invoke-virtual {v0, v6}, Lr4/xb;->s(I)V

    :cond_36
    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v0

    if-ne v0, v8, :cond_3c

    invoke-virtual {v3, v4}, Lr4/xb;->p(I)V

    invoke-virtual {v3}, Lr4/xb;->D()I

    move-result v0

    invoke-static {v0}, Lr4/f34;->a(I)I

    move-result v0

    invoke-virtual {v3, v6}, Lr4/xb;->s(I)V

    if-ne v0, v8, :cond_38

    invoke-virtual {v3}, Lr4/xb;->B()J

    move-result-wide v4

    cmp-long v0, v4, v19

    if-eqz v0, :cond_37

    goto :goto_24

    :cond_37
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v4, 0x2

    if-lt v0, v4, :cond_39

    invoke-virtual {v3, v6}, Lr4/xb;->s(I)V

    :cond_39
    :goto_24
    invoke-virtual {v3}, Lr4/xb;->B()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    cmp-long v0, v4, v8

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr4/xb;->s(I)V

    invoke-virtual {v3}, Lr4/xb;->v()I

    move-result v4

    and-int/lit16 v5, v4, 0xf0

    shr-int/lit8 v35, v5, 0x4

    and-int/lit8 v36, v4, 0xf

    invoke-virtual {v3}, Lr4/xb;->v()I

    move-result v4

    if-ne v4, v0, :cond_3e

    invoke-virtual {v3}, Lr4/xb;->v()I

    move-result v33

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lr4/xb;->u([BII)V

    if-nez v33, :cond_3a

    invoke-virtual {v3}, Lr4/xb;->v()I

    move-result v2

    new-array v9, v2, [B

    invoke-virtual {v3, v9, v6, v2}, Lr4/xb;->u([BII)V

    move-object/from16 v37, v9

    goto :goto_25

    :cond_3a
    move-object/from16 v37, v2

    :goto_25
    iput-boolean v0, v1, Lr4/f44;->l:Z

    new-instance v2, Lr4/e44;

    const/16 v31, 0x1

    move-object/from16 v30, v2

    move-object/from16 v34, v5

    invoke-direct/range {v30 .. v37}, Lr4/e44;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v2, v1, Lr4/f44;->n:Lr4/e44;

    goto :goto_27

    :cond_3b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_3c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_3d
    :goto_26
    const/4 v0, 0x1

    :cond_3e
    :goto_27
    iget-object v2, v10, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_41

    iget-object v4, v10, Lr4/d34;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/e34;

    iget v5, v4, Lr4/f34;->a:I

    const v6, 0x75756964

    if-ne v5, v6, :cond_3f

    iget-object v4, v4, Lr4/e34;->b:Lr4/xb;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lr4/xb;->p(I)V

    move-object/from16 v8, v26

    const/4 v6, 0x0

    const/16 v9, 0x10

    invoke-virtual {v4, v8, v6, v9}, Lr4/xb;->u([BII)V

    sget-object v11, Lr4/t34;->F:[B

    invoke-static {v8, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-static {v4, v9, v1}, Lr4/t34;->d(Lr4/xb;ILr4/f44;)V

    goto :goto_29

    :cond_3f
    move-object/from16 v8, v26

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v9, 0x10

    :cond_40
    :goto_29
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v8

    goto :goto_28

    :cond_41
    move-object/from16 v8, v26

    const/16 v5, 0x8

    const/4 v6, 0x0

    goto :goto_2b

    :cond_42
    :goto_2a
    move-object/from16 v18, v1

    move-object/from16 v25, v2

    move/from16 v22, v6

    move/from16 v29, v8

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v8, v3

    :goto_2b
    add-int/lit8 v1, v29, 0x1

    move-object/from16 v0, p0

    move-object v3, v8

    move/from16 v6, v22

    move-object/from16 v2, v25

    const/16 v7, 0x8

    move v8, v1

    move-object/from16 v1, v18

    goto/16 :goto_6

    :cond_43
    move-object v1, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, v1, Lr4/d34;->c:Ljava/util/List;

    invoke-static {v0}, Lr4/t34;->g(Ljava/util/List;)Lr4/fz3;

    move-result-object v0

    move-object/from16 v3, p0

    if-eqz v0, :cond_45

    iget-object v1, v3, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v1, :cond_45

    iget-object v5, v3, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr4/s34;

    iget-object v7, v5, Lr4/s34;->d:Lr4/g44;

    iget-object v7, v7, Lr4/g44;->a:Lr4/d44;

    iget-object v8, v5, Lr4/s34;->b:Lr4/f44;

    iget-object v8, v8, Lr4/f44;->a:Lr4/o34;

    sget v9, Lr4/lc;->a:I

    iget v8, v8, Lr4/o34;->a:I

    invoke-virtual {v7, v8}, Lr4/d44;->a(I)Lr4/e44;

    move-result-object v7

    if-eqz v7, :cond_44

    iget-object v7, v7, Lr4/e44;->b:Ljava/lang/String;

    goto :goto_2d

    :cond_44
    move-object v7, v2

    :goto_2d
    invoke-virtual {v0, v7}, Lr4/fz3;->a(Ljava/lang/String;)Lr4/fz3;

    move-result-object v7

    iget-object v8, v5, Lr4/s34;->d:Lr4/g44;

    iget-object v8, v8, Lr4/g44;->a:Lr4/d44;

    iget-object v8, v8, Lr4/d44;->f:Lr4/e5;

    invoke-virtual {v8}, Lr4/e5;->a()Lr4/c5;

    move-result-object v8

    invoke-virtual {v8, v7}, Lr4/c5;->q(Lr4/fz3;)Lr4/c5;

    invoke-virtual {v8}, Lr4/c5;->I()Lr4/e5;

    move-result-object v7

    iget-object v5, v5, Lr4/s34;->a:Lr4/d14;

    invoke-interface {v5, v7}, Lr4/d14;->f(Lr4/e5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_45
    iget-wide v0, v3, Lr4/t34;->s:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v4

    if-eqz v2, :cond_4a

    iget-object v0, v3, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_2e
    if-ge v10, v0, :cond_48

    iget-object v1, v3, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/s34;

    iget-wide v4, v3, Lr4/t34;->s:J

    iget v2, v1, Lr4/s34;->f:I

    :goto_2f
    iget-object v6, v1, Lr4/s34;->b:Lr4/f44;

    iget v7, v6, Lr4/f44;->e:I

    if-ge v2, v7, :cond_47

    invoke-virtual {v6, v2}, Lr4/f44;->b(I)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_47

    iget-object v6, v1, Lr4/s34;->b:Lr4/f44;

    iget-object v6, v6, Lr4/f44;->k:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_46

    iput v2, v1, Lr4/s34;->i:I

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_47
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_48
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v3, Lr4/t34;->s:J

    goto :goto_30

    :cond_49
    move-object v3, v0

    move-object v1, v2

    iget-object v0, v3, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, v3, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/d34;

    invoke-virtual {v0, v1}, Lr4/d34;->d(Lr4/d34;)V

    :cond_4a
    :goto_30
    move-object v0, v3

    goto/16 :goto_0

    :cond_4b
    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lr4/t34;->a()V

    return-void
.end method

.method public final e(Lr4/b04;)Z
    .locals 0

    invoke-static {p1}, Lr4/c44;->a(Lr4/b04;)Z

    move-result p1

    return p1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lr4/t34;->l:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2e

    const-string v10, "FragmentedMp4Extractor"

    if-eq v2, v8, :cond_21

    const-wide v3, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v2, v5, :cond_1c

    iget-object v2, v0, Lr4/t34;->v:Lr4/s34;

    if-nez v2, :cond_7

    iget-object v2, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-wide v14, v3

    move-object v3, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v13, :cond_3

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lr4/s34;

    invoke-static {v5}, Lr4/s34;->b(Lr4/s34;)Z

    move-result v16

    if-nez v16, :cond_0

    iget v11, v5, Lr4/s34;->f:I

    iget-object v6, v5, Lr4/s34;->d:Lr4/g44;

    iget v6, v6, Lr4/g44;->b:I

    if-eq v11, v6, :cond_2

    :cond_0
    invoke-static {v5}, Lr4/s34;->b(Lr4/s34;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lr4/s34;->h:I

    iget-object v11, v5, Lr4/s34;->b:Lr4/f44;

    iget v11, v11, Lr4/f44;->d:I

    if-ne v6, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lr4/s34;->f()J

    move-result-wide v18

    cmp-long v6, v18, v14

    if-gez v6, :cond_2

    move-object v3, v5

    move-wide/from16 v14, v18

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    iget-wide v2, v0, Lr4/t34;->q:J

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_4

    move-object v2, v1

    check-cast v2, Lr4/vz3;

    invoke-virtual {v2, v3, v9}, Lr4/vz3;->n(IZ)Z

    invoke-virtual/range {p0 .. p0}, Lr4/t34;->a()V

    goto :goto_0

    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    invoke-static {v1, v7}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_5
    invoke-virtual {v3}, Lr4/s34;->f()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v13

    sub-long/2addr v4, v13

    long-to-int v2, v4

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_6
    move-object v4, v1

    check-cast v4, Lr4/vz3;

    invoke-virtual {v4, v2, v9}, Lr4/vz3;->n(IZ)Z

    iput-object v3, v0, Lr4/t34;->v:Lr4/s34;

    move-object v2, v3

    :cond_7
    iget v3, v0, Lr4/t34;->l:I

    const/4 v4, 0x6

    if-ne v3, v12, :cond_f

    invoke-virtual {v2}, Lr4/s34;->g()I

    move-result v3

    iput v3, v0, Lr4/t34;->w:I

    iget v5, v2, Lr4/s34;->f:I

    iget v6, v2, Lr4/s34;->i:I

    if-ge v5, v6, :cond_c

    check-cast v1, Lr4/vz3;

    invoke-virtual {v1, v3, v9}, Lr4/vz3;->n(IZ)Z

    invoke-virtual {v2}, Lr4/s34;->k()Lr4/e44;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, v2, Lr4/s34;->b:Lr4/f44;

    iget-object v3, v3, Lr4/f44;->o:Lr4/xb;

    iget v1, v1, Lr4/e44;->d:I

    if-eqz v1, :cond_9

    invoke-virtual {v3, v1}, Lr4/xb;->s(I)V

    :cond_9
    iget-object v1, v2, Lr4/s34;->b:Lr4/f44;

    iget v5, v2, Lr4/s34;->f:I

    invoke-virtual {v1, v5}, Lr4/f44;->c(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Lr4/xb;->w()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v3, v1}, Lr4/xb;->s(I)V

    :cond_a
    :goto_3
    invoke-virtual {v2}, Lr4/s34;->i()Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v7, v0, Lr4/t34;->v:Lr4/s34;

    :cond_b
    iput v12, v0, Lr4/t34;->l:I

    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_c
    iget-object v5, v2, Lr4/s34;->d:Lr4/g44;

    iget-object v5, v5, Lr4/g44;->a:Lr4/d44;

    iget v5, v5, Lr4/d44;->g:I

    if-ne v5, v8, :cond_d

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lr4/t34;->w:I

    move-object v3, v1

    check-cast v3, Lr4/vz3;

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v9}, Lr4/vz3;->n(IZ)Z

    :cond_d
    iget-object v3, v2, Lr4/s34;->d:Lr4/g44;

    iget-object v3, v3, Lr4/g44;->a:Lr4/d44;

    iget-object v3, v3, Lr4/d44;->f:Lr4/e5;

    iget-object v3, v3, Lr4/e5;->l:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v0, Lr4/t34;->w:I

    const/4 v5, 0x7

    invoke-virtual {v2, v3, v5}, Lr4/s34;->j(II)I

    move-result v3

    iput v3, v0, Lr4/t34;->x:I

    iget v3, v0, Lr4/t34;->w:I

    iget-object v6, v0, Lr4/t34;->g:Lr4/xb;

    invoke-static {v3, v6}, Lr4/jz3;->b(ILr4/xb;)V

    iget-object v3, v2, Lr4/s34;->a:Lr4/d14;

    iget-object v6, v0, Lr4/t34;->g:Lr4/xb;

    invoke-static {v3, v6, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v3, v0, Lr4/t34;->x:I

    add-int/2addr v3, v5

    iput v3, v0, Lr4/t34;->x:I

    goto :goto_5

    :cond_e
    iget v3, v0, Lr4/t34;->w:I

    invoke-virtual {v2, v3, v9}, Lr4/s34;->j(II)I

    move-result v3

    iput v3, v0, Lr4/t34;->x:I

    :goto_5
    iget v5, v0, Lr4/t34;->w:I

    add-int/2addr v5, v3

    iput v5, v0, Lr4/t34;->w:I

    const/4 v3, 0x4

    iput v3, v0, Lr4/t34;->l:I

    iput v9, v0, Lr4/t34;->y:I

    :cond_f
    iget-object v3, v2, Lr4/s34;->d:Lr4/g44;

    iget-object v3, v3, Lr4/g44;->a:Lr4/d44;

    iget-object v5, v2, Lr4/s34;->a:Lr4/d14;

    invoke-virtual {v2}, Lr4/s34;->e()J

    move-result-wide v10

    iget v6, v3, Lr4/d44;->j:I

    if-nez v6, :cond_10

    :goto_6
    iget v3, v0, Lr4/t34;->x:I

    iget v4, v0, Lr4/t34;->w:I

    if-ge v3, v4, :cond_17

    sub-int/2addr v4, v3

    invoke-static {v5, v1, v4, v9}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result v3

    iget v4, v0, Lr4/t34;->x:I

    add-int/2addr v4, v3

    iput v4, v0, Lr4/t34;->x:I

    goto :goto_6

    :cond_10
    iget-object v6, v0, Lr4/t34;->d:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    aput-byte v9, v6, v9

    aput-byte v9, v6, v8

    const/4 v13, 0x2

    aput-byte v9, v6, v13

    iget v13, v3, Lr4/d44;->j:I

    add-int/lit8 v14, v13, 0x1

    const/4 v15, 0x4

    rsub-int/lit8 v13, v13, 0x4

    :goto_7
    iget v15, v0, Lr4/t34;->x:I

    iget v12, v0, Lr4/t34;->w:I

    if-ge v15, v12, :cond_17

    iget v12, v0, Lr4/t34;->y:I

    const-string v15, "video/hevc"

    if-nez v12, :cond_15

    move-object v12, v1

    check-cast v12, Lr4/vz3;

    invoke-virtual {v12, v6, v13, v14, v9}, Lr4/vz3;->f([BIIZ)Z

    iget-object v12, v0, Lr4/t34;->d:Lr4/xb;

    invoke-virtual {v12, v9}, Lr4/xb;->p(I)V

    iget-object v12, v0, Lr4/t34;->d:Lr4/xb;

    invoke-virtual {v12}, Lr4/xb;->D()I

    move-result v12

    if-lez v12, :cond_14

    add-int/lit8 v12, v12, -0x1

    iput v12, v0, Lr4/t34;->y:I

    iget-object v12, v0, Lr4/t34;->c:Lr4/xb;

    invoke-virtual {v12, v9}, Lr4/xb;->p(I)V

    iget-object v12, v0, Lr4/t34;->c:Lr4/xb;

    const/4 v9, 0x4

    invoke-static {v5, v12, v9}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget-object v12, v0, Lr4/t34;->d:Lr4/xb;

    invoke-static {v5, v12, v8}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget-object v12, v0, Lr4/t34;->C:[Lr4/d14;

    array-length v12, v12

    if-lez v12, :cond_13

    iget-object v12, v3, Lr4/d44;->f:Lr4/e5;

    iget-object v12, v12, Lr4/e5;->l:Ljava/lang/String;

    aget-byte v17, v6, v9

    sget-object v9, Lr4/nb;->a:[B

    const-string v9, "video/avc"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    and-int/lit8 v9, v17, 0x1f

    if-eq v9, v4, :cond_11

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    :goto_9
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    and-int/lit8 v9, v17, 0x7e

    shr-int/2addr v9, v8

    const/16 v12, 0x27

    if-ne v9, v12, :cond_13

    goto :goto_8

    :cond_13
    const/4 v9, 0x0

    :goto_a
    iput-boolean v9, v0, Lr4/t34;->z:Z

    iget v9, v0, Lr4/t34;->x:I

    add-int/lit8 v9, v9, 0x5

    iput v9, v0, Lr4/t34;->x:I

    iget v9, v0, Lr4/t34;->w:I

    add-int/2addr v9, v13

    iput v9, v0, Lr4/t34;->w:I

    goto :goto_c

    :cond_14
    const-string v1, "Invalid NAL length"

    invoke-static {v1, v7}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_15
    iget-boolean v9, v0, Lr4/t34;->z:Z

    if-eqz v9, :cond_16

    iget-object v9, v0, Lr4/t34;->e:Lr4/xb;

    invoke-virtual {v9, v12}, Lr4/xb;->i(I)V

    iget-object v9, v0, Lr4/t34;->e:Lr4/xb;

    invoke-virtual {v9}, Lr4/xb;->q()[B

    move-result-object v9

    iget v12, v0, Lr4/t34;->y:I

    move-object v4, v1

    check-cast v4, Lr4/vz3;

    const/4 v8, 0x0

    invoke-virtual {v4, v9, v8, v12, v8}, Lr4/vz3;->f([BIIZ)Z

    iget-object v4, v0, Lr4/t34;->e:Lr4/xb;

    iget v8, v0, Lr4/t34;->y:I

    invoke-static {v5, v4, v8}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v4, v0, Lr4/t34;->y:I

    iget-object v8, v0, Lr4/t34;->e:Lr4/xb;

    invoke-virtual {v8}, Lr4/xb;->q()[B

    move-result-object v8

    iget-object v9, v0, Lr4/t34;->e:Lr4/xb;

    invoke-virtual {v9}, Lr4/xb;->m()I

    move-result v9

    invoke-static {v8, v9}, Lr4/nb;->a([BI)I

    move-result v8

    iget-object v9, v0, Lr4/t34;->e:Lr4/xb;

    iget-object v12, v3, Lr4/d44;->f:Lr4/e5;

    iget-object v12, v12, Lr4/e5;->l:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v9, v12}, Lr4/xb;->p(I)V

    iget-object v9, v0, Lr4/t34;->e:Lr4/xb;

    invoke-virtual {v9, v8}, Lr4/xb;->n(I)V

    iget-object v8, v0, Lr4/t34;->e:Lr4/xb;

    iget-object v9, v0, Lr4/t34;->C:[Lr4/d14;

    invoke-static {v10, v11, v8, v9}, Lr4/sz3;->a(JLr4/xb;[Lr4/d14;)V

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    invoke-static {v5, v1, v12, v4}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result v8

    move v4, v8

    :goto_b
    iget v8, v0, Lr4/t34;->x:I

    add-int/2addr v8, v4

    iput v8, v0, Lr4/t34;->x:I

    iget v8, v0, Lr4/t34;->y:I

    sub-int/2addr v8, v4

    iput v8, v0, Lr4/t34;->y:I

    const/4 v4, 0x6

    const/4 v8, 0x1

    :goto_c
    const/4 v9, 0x0

    const/4 v12, 0x3

    goto/16 :goto_7

    :cond_17
    invoke-virtual {v2}, Lr4/s34;->h()I

    move-result v20

    invoke-virtual {v2}, Lr4/s34;->k()Lr4/e44;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v1, Lr4/e44;->c:Lr4/c14;

    move-object/from16 v23, v1

    goto :goto_d

    :cond_18
    move-object/from16 v23, v7

    :goto_d
    iget v1, v0, Lr4/t34;->w:I

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v10

    move/from16 v21, v1

    invoke-interface/range {v17 .. v23}, Lr4/d14;->e(JIIILr4/c14;)V

    :cond_19
    iget-object v1, v0, Lr4/t34;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lr4/t34;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/r34;

    iget v3, v0, Lr4/t34;->r:I

    iget v4, v1, Lr4/r34;->b:I

    sub-int/2addr v3, v4

    iput v3, v0, Lr4/t34;->r:I

    iget-wide v3, v1, Lr4/r34;->a:J

    add-long/2addr v3, v10

    iget-object v5, v0, Lr4/t34;->B:[Lr4/d14;

    array-length v6, v5

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v6, :cond_19

    aget-object v12, v5, v8

    const/4 v15, 0x1

    iget v9, v1, Lr4/r34;->b:I

    iget v13, v0, Lr4/t34;->r:I

    const/16 v18, 0x0

    move/from16 v17, v13

    move-wide v13, v3

    move/from16 v16, v9

    invoke-interface/range {v12 .. v18}, Lr4/d14;->e(JIIILr4/c14;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1a
    invoke-virtual {v2}, Lr4/s34;->i()Z

    move-result v1

    if-nez v1, :cond_1b

    iput-object v7, v0, Lr4/t34;->v:Lr4/s34;

    :cond_1b
    const/4 v1, 0x3

    iput v1, v0, Lr4/t34;->l:I

    goto/16 :goto_4

    :goto_f
    return v1

    :cond_1c
    iget-object v2, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move-object v6, v7

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v2, :cond_1e

    iget-object v8, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr4/s34;

    iget-object v8, v8, Lr4/s34;->b:Lr4/f44;

    iget-boolean v9, v8, Lr4/f44;->p:Z

    if-eqz v9, :cond_1d

    iget-wide v8, v8, Lr4/f44;->c:J

    cmp-long v10, v8, v3

    if-gez v10, :cond_1d

    iget-object v3, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lr4/s34;

    move-wide v3, v8

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1e
    if-nez v6, :cond_1f

    const/4 v2, 0x3

    iput v2, v0, Lr4/t34;->l:I

    goto/16 :goto_0

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v8

    sub-long/2addr v3, v8

    long-to-int v2, v3

    if-ltz v2, :cond_20

    move-object v3, v1

    check-cast v3, Lr4/vz3;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lr4/vz3;->n(IZ)Z

    iget-object v2, v6, Lr4/s34;->b:Lr4/f44;

    iget-object v5, v2, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v5

    iget-object v6, v2, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->m()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v4}, Lr4/vz3;->f([BIIZ)Z

    iget-object v3, v2, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {v3, v4}, Lr4/xb;->p(I)V

    iput-boolean v4, v2, Lr4/f44;->p:Z

    goto/16 :goto_0

    :cond_20
    const-string v1, "Offset to encryption data was negative."

    invoke-static {v1, v7}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_21
    iget-wide v5, v0, Lr4/t34;->n:J

    long-to-int v2, v5

    iget v5, v0, Lr4/t34;->o:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lr4/t34;->p:Lr4/xb;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v6

    move-object v8, v1

    check-cast v8, Lr4/vz3;

    const/16 v9, 0x8

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v9, v2, v11}, Lr4/vz3;->f([BIIZ)Z

    new-instance v2, Lr4/e34;

    iget v6, v0, Lr4/t34;->m:I

    invoke-direct {v2, v6, v5}, Lr4/e34;-><init>(ILr4/xb;)V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v5

    iget-object v8, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_22

    iget-object v3, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/d34;

    invoke-virtual {v3, v2}, Lr4/d34;->c(Lr4/e34;)V

    goto/16 :goto_18

    :cond_22
    iget v8, v2, Lr4/f34;->a:I

    if-ne v8, v4, :cond_26

    iget-object v2, v2, Lr4/e34;->b:Lr4/xb;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lr4/xb;->p(I)V

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lr4/xb;->s(I)V

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v14

    invoke-static {v3}, Lr4/f34;->a(I)I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v3

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v8

    goto :goto_11

    :cond_23
    invoke-virtual {v2}, Lr4/xb;->d()J

    move-result-wide v3

    invoke-virtual {v2}, Lr4/xb;->d()J

    move-result-wide v8

    :goto_11
    add-long/2addr v5, v8

    const-wide/32 v10, 0xf4240

    move-wide v8, v3

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lr4/lc;->h(JJJ)J

    move-result-wide v19

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lr4/xb;->s(I)V

    invoke-virtual {v2}, Lr4/xb;->w()I

    move-result v12

    new-array v13, v12, [I

    new-array v10, v12, [J

    new-array v11, v12, [J

    new-array v8, v12, [J

    move-wide/from16 v21, v19

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v12, :cond_25

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v17

    const/high16 v23, -0x80000000

    and-int v23, v17, v23

    if-nez v23, :cond_24

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v23

    const v25, 0x7fffffff

    and-int v17, v17, v25

    aput v17, v13, v9

    aput-wide v5, v10, v9

    aput-wide v21, v8, v9

    add-long v3, v3, v23

    const-wide/32 v21, 0xf4240

    move-object v7, v8

    move/from16 v24, v9

    move-wide v8, v3

    move-wide/from16 v25, v3

    move-object v3, v10

    move-object v4, v11

    move-wide/from16 v10, v21

    move/from16 v17, v12

    move-object v1, v13

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lr4/lc;->h(JJJ)J

    move-result-wide v21

    aget-wide v8, v7, v24

    sub-long v8, v21, v8

    aput-wide v8, v4, v24

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lr4/xb;->s(I)V

    aget v9, v1, v24

    int-to-long v9, v9

    add-long/2addr v5, v9

    add-int/lit8 v9, v24, 0x1

    move-object v13, v1

    move-object v10, v3

    move-object v11, v4

    move-object v8, v7

    move/from16 v12, v17

    move-wide/from16 v3, v25

    const/4 v7, 0x0

    move-object/from16 v1, p1

    goto :goto_12

    :cond_24
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_25
    move-object v7, v8

    move-object v3, v10

    move-object v4, v11

    move-object v1, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Lr4/tz3;

    invoke-direct {v5, v1, v3, v4, v7}, Lr4/tz3;-><init>([I[J[J[J)V

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lr4/t34;->u:J

    iget-object v2, v0, Lr4/t34;->A:Lr4/d04;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lr4/z04;

    invoke-interface {v2, v1}, Lr4/d04;->j(Lr4/z04;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/t34;->D:Z

    goto/16 :goto_17

    :cond_26
    if-ne v8, v3, :cond_2c

    iget-object v1, v2, Lr4/e34;->b:Lr4/xb;

    iget-object v2, v0, Lr4/t34;->B:[Lr4/d14;

    array-length v2, v2

    if-eqz v2, :cond_2c

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lr4/xb;->p(I)V

    invoke-virtual {v1}, Lr4/xb;->D()I

    move-result v2

    invoke-static {v2}, Lr4/f34;->a(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_28

    const/4 v5, 0x1

    if-eq v2, v5, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_27
    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v5

    invoke-virtual {v1}, Lr4/xb;->d()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v5

    invoke-static/range {v11 .. v16}, Lr4/lc;->h(JJJ)J

    move-result-wide v7

    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    invoke-static/range {v11 .. v16}, Lr4/lc;->h(JJJ)J

    move-result-wide v5

    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v9

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v28, v5

    move-wide/from16 v17, v7

    move-wide/from16 v30, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-wide v5, v3

    goto :goto_14

    :cond_28
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v13

    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v13

    invoke-static/range {v5 .. v10}, Lr4/lc;->h(JJJ)J

    move-result-wide v15

    iget-wide v5, v0, Lr4/t34;->u:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_29

    add-long/2addr v5, v15

    move-wide/from16 v17, v5

    goto :goto_13

    :cond_29
    move-wide/from16 v17, v3

    :goto_13
    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    move-wide v9, v13

    invoke-static/range {v5 .. v10}, Lr4/lc;->h(JJJ)J

    move-result-wide v5

    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v9

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-wide v5, v15

    :goto_14
    invoke-virtual {v1}, Lr4/xb;->l()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1}, Lr4/xb;->l()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Lr4/xb;->u([BII)V

    new-instance v1, Lr4/n8;

    move-object/from16 v25, v1

    move-object/from16 v32, v2

    invoke-direct/range {v25 .. v32}, Lr4/n8;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Lr4/xb;

    iget-object v7, v0, Lr4/t34;->h:Lr4/p8;

    invoke-virtual {v7, v1}, Lr4/p8;->a(Lr4/n8;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lr4/xb;-><init>([B)V

    invoke-virtual {v2}, Lr4/xb;->l()I

    move-result v1

    iget-object v7, v0, Lr4/t34;->B:[Lr4/d14;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v8, :cond_2a

    aget-object v10, v7, v9

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lr4/xb;->p(I)V

    invoke-interface {v10, v2, v1}, Lr4/d14;->a(Lr4/xb;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_2a
    cmp-long v2, v17, v3

    if-nez v2, :cond_2b

    iget-object v2, v0, Lr4/t34;->k:Ljava/util/ArrayDeque;

    new-instance v3, Lr4/r34;

    invoke-direct {v3, v5, v6, v1}, Lr4/r34;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lr4/t34;->r:I

    add-int/2addr v2, v1

    iput v2, v0, Lr4/t34;->r:I

    goto :goto_17

    :cond_2b
    iget-object v2, v0, Lr4/t34;->B:[Lr4/d14;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, v17

    move v9, v1

    invoke-interface/range {v5 .. v11}, Lr4/d14;->e(JIIILr4/c14;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2c
    :goto_17
    move-object/from16 v1, p1

    goto :goto_18

    :cond_2d
    move-object v3, v1

    check-cast v3, Lr4/vz3;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lr4/vz3;->n(IZ)Z

    :goto_18
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/t34;->b(J)V

    goto/16 :goto_0

    :cond_2e
    const/4 v5, 0x0

    iget v2, v0, Lr4/t34;->o:I

    if-nez v2, :cond_30

    iget-object v2, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-interface {v1, v2, v5, v6, v7}, Lr4/b04;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v1, -0x1

    return v1

    :cond_2f
    iput v6, v0, Lr4/t34;->o:I

    iget-object v2, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v2, v5}, Lr4/xb;->p(I)V

    iget-object v2, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v5

    iput-wide v5, v0, Lr4/t34;->n:J

    iget-object v2, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v2

    iput v2, v0, Lr4/t34;->m:I

    :cond_30
    iget-wide v5, v0, Lr4/t34;->n:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_31

    iget-object v2, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    move-object v5, v1

    check-cast v5, Lr4/vz3;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v6, v7}, Lr4/vz3;->f([BIIZ)Z

    iget v2, v0, Lr4/t34;->o:I

    add-int/2addr v2, v6

    iput v2, v0, Lr4/t34;->o:I

    iget-object v2, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->d()J

    move-result-wide v5

    iput-wide v5, v0, Lr4/t34;->n:J

    goto :goto_19

    :cond_31
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_33

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_32

    iget-object v2, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/d34;

    iget-wide v5, v2, Lr4/d34;->b:J

    :cond_32
    cmp-long v2, v5, v7

    if-eqz v2, :cond_33

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v2, v0, Lr4/t34;->o:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v0, Lr4/t34;->n:J

    :cond_33
    :goto_19
    iget-wide v5, v0, Lr4/t34;->n:J

    iget v2, v0, Lr4/t34;->o:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_40

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v5

    iget v2, v0, Lr4/t34;->o:I

    int-to-long v7, v2

    sub-long/2addr v5, v7

    iget v2, v0, Lr4/t34;->m:I

    const v7, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v2, v8, :cond_34

    if-ne v2, v7, :cond_35

    :cond_34
    iget-boolean v2, v0, Lr4/t34;->D:Z

    if-nez v2, :cond_35

    iget-object v2, v0, Lr4/t34;->A:Lr4/d04;

    new-instance v9, Lr4/y04;

    iget-wide v10, v0, Lr4/t34;->t:J

    invoke-direct {v9, v10, v11, v5, v6}, Lr4/y04;-><init>(JJ)V

    invoke-interface {v2, v9}, Lr4/d04;->j(Lr4/z04;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lr4/t34;->D:Z

    :cond_35
    iget v2, v0, Lr4/t34;->m:I

    if-ne v2, v8, :cond_36

    iget-object v2, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v2, :cond_36

    iget-object v10, v0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr4/s34;

    iget-object v10, v10, Lr4/s34;->b:Lr4/f44;

    iput-wide v5, v10, Lr4/f44;->c:J

    iput-wide v5, v10, Lr4/f44;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_36
    iget v2, v0, Lr4/t34;->m:I

    if-ne v2, v7, :cond_37

    const/4 v7, 0x0

    iput-object v7, v0, Lr4/t34;->v:Lr4/s34;

    iget-wide v2, v0, Lr4/t34;->n:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lr4/t34;->q:J

    const/4 v2, 0x2

    iput v2, v0, Lr4/t34;->l:I

    goto/16 :goto_0

    :cond_37
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_3e

    const v5, 0x7472616b

    if-eq v2, v5, :cond_3e

    const v5, 0x6d646961

    if-eq v2, v5, :cond_3e

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_3e

    const v5, 0x7374626c

    if-eq v2, v5, :cond_3e

    if-eq v2, v8, :cond_3e

    const v5, 0x74726166

    if-eq v2, v5, :cond_3e

    const v5, 0x6d766578

    if-eq v2, v5, :cond_3e

    const v5, 0x65647473

    if-ne v2, v5, :cond_38

    goto/16 :goto_1c

    :cond_38
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v6, 0x7fffffff

    if-eq v2, v5, :cond_3b

    const v5, 0x6d646864

    if-eq v2, v5, :cond_3b

    const v5, 0x6d766864

    if-eq v2, v5, :cond_3b

    if-eq v2, v4, :cond_3b

    const v4, 0x73747364

    if-eq v2, v4, :cond_3b

    const v4, 0x73747473

    if-eq v2, v4, :cond_3b

    const v4, 0x63747473

    if-eq v2, v4, :cond_3b

    const v4, 0x73747363

    if-eq v2, v4, :cond_3b

    const v4, 0x7374737a

    if-eq v2, v4, :cond_3b

    const v4, 0x73747a32

    if-eq v2, v4, :cond_3b

    const v4, 0x7374636f

    if-eq v2, v4, :cond_3b

    const v4, 0x636f3634

    if-eq v2, v4, :cond_3b

    const v4, 0x73747373

    if-eq v2, v4, :cond_3b

    const v4, 0x74666474

    if-eq v2, v4, :cond_3b

    const v4, 0x74666864

    if-eq v2, v4, :cond_3b

    const v4, 0x746b6864

    if-eq v2, v4, :cond_3b

    const v4, 0x74726578

    if-eq v2, v4, :cond_3b

    const v4, 0x7472756e

    if-eq v2, v4, :cond_3b

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_3b

    const v4, 0x7361697a

    if-eq v2, v4, :cond_3b

    const v4, 0x7361696f

    if-eq v2, v4, :cond_3b

    const v4, 0x73656e63

    if-eq v2, v4, :cond_3b

    const v4, 0x75756964

    if-eq v2, v4, :cond_3b

    const v4, 0x73626770

    if-eq v2, v4, :cond_3b

    const v4, 0x73677064

    if-eq v2, v4, :cond_3b

    const v4, 0x656c7374

    if-eq v2, v4, :cond_3b

    const v4, 0x6d656864

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_39

    goto :goto_1b

    :cond_39
    iget-wide v2, v0, Lr4/t34;->n:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_3a

    const/4 v2, 0x0

    iput-object v2, v0, Lr4/t34;->p:Lr4/xb;

    const/4 v2, 0x1

    iput v2, v0, Lr4/t34;->l:I

    goto/16 :goto_0

    :cond_3a
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_3b
    :goto_1b
    iget v2, v0, Lr4/t34;->o:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3d

    iget-wide v4, v0, Lr4/t34;->n:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_3c

    new-instance v2, Lr4/xb;

    long-to-int v5, v4

    invoke-direct {v2, v5}, Lr4/xb;-><init>(I)V

    iget-object v4, v0, Lr4/t34;->i:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lr4/t34;->p:Lr4/xb;

    const/4 v2, 0x1

    iput v2, v0, Lr4/t34;->l:I

    goto/16 :goto_0

    :cond_3c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_3d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v1}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_3e
    :goto_1c
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v2

    iget-wide v4, v0, Lr4/t34;->n:J

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    add-long/2addr v2, v4

    iget-object v4, v0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    new-instance v5, Lr4/d34;

    iget v6, v0, Lr4/t34;->m:I

    invoke-direct {v5, v6, v2, v3}, Lr4/d34;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, v0, Lr4/t34;->n:J

    iget v6, v0, Lr4/t34;->o:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_3f

    invoke-virtual {v0, v2, v3}, Lr4/t34;->b(J)V

    goto/16 :goto_0

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lr4/t34;->a()V

    goto/16 :goto_0

    :cond_40
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v1

    goto :goto_1e

    :goto_1d
    throw v1

    :goto_1e
    goto :goto_1d
.end method

.method public final h(Lr4/d04;)V
    .locals 5

    iput-object p1, p0, Lr4/t34;->A:Lr4/d04;

    invoke-virtual {p0}, Lr4/t34;->a()V

    const/4 p1, 0x2

    new-array p1, p1, [Lr4/d14;

    iput-object p1, p0, Lr4/t34;->B:[Lr4/d14;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/lc;->K([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr4/d14;

    iput-object p1, p0, Lr4/t34;->B:[Lr4/d14;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    sget-object v4, Lr4/t34;->G:Lr4/e5;

    invoke-interface {v3, v4}, Lr4/d14;->f(Lr4/e5;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/t34;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lr4/d14;

    iput-object p1, p0, Lr4/t34;->C:[Lr4/d14;

    const/16 p1, 0x64

    :goto_1
    iget-object v1, p0, Lr4/t34;->C:[Lr4/d14;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lr4/t34;->A:Lr4/d04;

    const/4 v3, 0x3

    invoke-interface {v2, p1, v3}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iget-object v2, p0, Lr4/t34;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/e5;

    invoke-interface {p1, v2}, Lr4/d14;->f(Lr4/e5;)V

    iget-object v2, p0, Lr4/t34;->C:[Lr4/d14;

    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final i(JJ)V
    .locals 2

    iget-object p1, p0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lr4/t34;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/s34;

    invoke-virtual {v1}, Lr4/s34;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/t34;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lr4/t34;->r:I

    iput-wide p3, p0, Lr4/t34;->s:J

    iget-object p1, p0, Lr4/t34;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lr4/t34;->a()V

    return-void
.end method
