.class public final Lr4/g54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final j:Lr4/g04;


# instance fields
.field public final a:Lr4/h54;

.field public final b:Lr4/xb;

.field public final c:Lr4/xb;

.field public final d:Lr4/wb;

.field public e:Lr4/d04;

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/f54;->a:Lr4/g04;

    sput-object v0, Lr4/g54;->j:Lr4/g04;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lr4/h54;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lr4/h54;-><init>(ZLjava/lang/String;)V

    iput-object p1, p0, Lr4/g54;->a:Lr4/h54;

    new-instance p1, Lr4/xb;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/g54;->b:Lr4/xb;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/g54;->g:J

    new-instance p1, Lr4/xb;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/g54;->c:Lr4/xb;

    new-instance v0, Lr4/wb;

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object p1

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lr4/wb;-><init>([BI)V

    iput-object v0, p0, Lr4/g54;->d:Lr4/wb;

    return-void
.end method


# virtual methods
.method public final e(Lr4/b04;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lr4/vz3;

    const/16 v4, 0xa

    invoke-virtual {v3, v2, v0, v4, v0}, Lr4/vz3;->i([BIIZ)Z

    iget-object v2, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v2, v0}, Lr4/xb;->p(I)V

    iget-object v2, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->z()I

    move-result v2

    const v4, 0x494433

    if-eq v2, v4, :cond_6

    invoke-interface {p1}, Lr4/b04;->k()V

    move-object v2, p1

    check-cast v2, Lr4/vz3;

    invoke-virtual {v2, v1, v0}, Lr4/vz3;->o(IZ)Z

    iget-wide v3, p0, Lr4/g54;->g:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    int-to-long v3, v1

    iput-wide v3, p0, Lr4/g54;->g:J

    :cond_0
    move v4, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v0, v7, v0}, Lr4/vz3;->i([BIIZ)Z

    iget-object v6, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v6, v0}, Lr4/xb;->p(I)V

    iget-object v6, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->w()I

    move-result v6

    invoke-static {v6}, Lr4/h54;->e(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1}, Lr4/b04;->k()V

    add-int/lit8 v4, v4, 0x1

    sub-int v3, v4, v1

    const/16 v5, 0x2000

    if-ge v3, v5, :cond_1

    invoke-virtual {v2, v4, v0}, Lr4/vz3;->o(IZ)Z

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v7, 0x4

    if-lt v3, v7, :cond_4

    const/16 v8, 0xbc

    if-gt v5, v8, :cond_3

    goto :goto_3

    :cond_3
    return v6

    :cond_4
    :goto_3
    iget-object v6, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    invoke-virtual {v2, v6, v0, v7, v0}, Lr4/vz3;->i([BIIZ)Z

    iget-object v6, p0, Lr4/g54;->d:Lr4/wb;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lr4/wb;->d(I)V

    iget-object v6, p0, Lr4/g54;->d:Lr4/wb;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lr4/wb;->h(I)I

    move-result v6

    const/4 v7, 0x6

    if-gt v6, v7, :cond_5

    return v0

    :cond_5
    add-int/lit8 v7, v6, -0x6

    invoke-virtual {v2, v7, v0}, Lr4/vz3;->o(IZ)Z

    add-int/2addr v5, v6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lr4/g54;->c:Lr4/xb;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lr4/xb;->s(I)V

    iget-object v2, p0, Lr4/g54;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->a()I

    move-result v2

    add-int/lit8 v4, v2, 0xa

    add-int/2addr v1, v4

    invoke-virtual {v3, v2, v0}, Lr4/vz3;->o(IZ)Z

    goto/16 :goto_0
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 7

    iget-object p2, p0, Lr4/g54;->e:Lr4/d04;

    invoke-static {p2}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lr4/g54;->b:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x800

    invoke-interface {p1, p2, v0, v1}, Lr4/b04;->b([BII)I

    move-result p1

    iget-boolean p2, p0, Lr4/g54;->i:Z

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lr4/g54;->e:Lr4/d04;

    new-instance v2, Lr4/y04;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lr4/y04;-><init>(JJ)V

    invoke-interface {p2, v2}, Lr4/d04;->j(Lr4/z04;)V

    iput-boolean v1, p0, Lr4/g54;->i:Z

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    iget-object p2, p0, Lr4/g54;->b:Lr4/xb;

    invoke-virtual {p2, v0}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/g54;->b:Lr4/xb;

    invoke-virtual {p2, p1}, Lr4/xb;->n(I)V

    iget-boolean p1, p0, Lr4/g54;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lr4/g54;->a:Lr4/h54;

    iget-wide v2, p0, Lr4/g54;->f:J

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lr4/h54;->d(JI)V

    iput-boolean v1, p0, Lr4/g54;->h:Z

    :cond_2
    iget-object p1, p0, Lr4/g54;->a:Lr4/h54;

    iget-object p2, p0, Lr4/g54;->b:Lr4/xb;

    invoke-virtual {p1, p2}, Lr4/h54;->b(Lr4/xb;)V

    return v0
.end method

.method public final h(Lr4/d04;)V
    .locals 5

    iput-object p1, p0, Lr4/g54;->e:Lr4/d04;

    iget-object v0, p0, Lr4/g54;->a:Lr4/h54;

    new-instance v1, Lr4/z64;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lr4/z64;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Lr4/h54;->a(Lr4/d04;Lr4/z64;)V

    invoke-interface {p1}, Lr4/d04;->y()V

    return-void
.end method

.method public final i(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/g54;->h:Z

    iget-object p1, p0, Lr4/g54;->a:Lr4/h54;

    invoke-virtual {p1}, Lr4/h54;->zza()V

    iput-wide p3, p0, Lr4/g54;->f:J

    return-void
.end method
