.class public final Lr4/u54;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/d14;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/mb;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/lb;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/yb;

.field public final e:[B

.field public f:I

.field public g:J

.field public h:J

.field public final i:Lr4/t54;

.field public final j:Lr4/t54;

.field public k:Z

.field public l:J

.field public m:J

.field public n:Z


# direct methods
.method public constructor <init>(Lr4/d14;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/u54;->a:Lr4/d14;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/u54;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/u54;->c:Landroid/util/SparseArray;

    new-instance p1, Lr4/t54;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lr4/t54;-><init>(Lr4/s54;)V

    iput-object p1, p0, Lr4/u54;->i:Lr4/t54;

    new-instance p1, Lr4/t54;

    invoke-direct {p1, p2}, Lr4/t54;-><init>(Lr4/s54;)V

    iput-object p1, p0, Lr4/u54;->j:Lr4/t54;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/u54;->e:[B

    new-instance p2, Lr4/yb;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lr4/yb;-><init>([BII)V

    iput-object p2, p0, Lr4/u54;->d:Lr4/yb;

    iput-boolean p3, p0, Lr4/u54;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lr4/mb;)V
    .locals 2

    iget-object v0, p0, Lr4/u54;->b:Landroid/util/SparseArray;

    iget v1, p1, Lr4/mb;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lr4/lb;)V
    .locals 2

    iget-object v0, p0, Lr4/u54;->c:Landroid/util/SparseArray;

    iget v1, p1, Lr4/lb;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/u54;->k:Z

    return-void
.end method

.method public final d(JIJ)V
    .locals 0

    iput p3, p0, Lr4/u54;->f:I

    iput-wide p4, p0, Lr4/u54;->h:J

    iput-wide p1, p0, Lr4/u54;->g:J

    return-void
.end method

.method public final e(JIZZ)Z
    .locals 14

    move-object v0, p0

    iget v1, v0, Lr4/u54;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v1, v0, Lr4/u54;->k:Z

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lr4/u54;->g:J

    sub-long v6, p1, v4

    long-to-int v1, v6

    add-int v11, p3, v1

    iget-wide v7, v0, Lr4/u54;->m:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-eqz v1, :cond_1

    iget-boolean v9, v0, Lr4/u54;->n:Z

    iget-wide v12, v0, Lr4/u54;->l:J

    iget-object v6, v0, Lr4/u54;->a:Lr4/d14;

    sub-long/2addr v4, v12

    long-to-int v10, v4

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lr4/d14;->e(JIIILr4/c14;)V

    :cond_1
    iget-wide v4, v0, Lr4/u54;->g:J

    iput-wide v4, v0, Lr4/u54;->l:J

    iget-wide v4, v0, Lr4/u54;->h:J

    iput-wide v4, v0, Lr4/u54;->m:J

    iput-boolean v2, v0, Lr4/u54;->n:Z

    iput-boolean v3, v0, Lr4/u54;->k:Z

    :goto_0
    iget-boolean v1, v0, Lr4/u54;->n:Z

    iget v4, v0, Lr4/u54;->f:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    if-eqz p5, :cond_3

    if-ne v4, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    or-int/2addr v1, v2

    iput-boolean v1, v0, Lr4/u54;->n:Z

    return v1
.end method
