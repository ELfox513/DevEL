.class public final Lr4/a54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final d:Lr4/g04;


# instance fields
.field public final a:Lr4/b54;

.field public final b:Lr4/xb;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/z44;->a:Lr4/g04;

    sput-object v0, Lr4/a54;->d:Lr4/g04;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/b54;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/b54;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lr4/a54;->a:Lr4/b54;

    new-instance v0, Lr4/xb;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/a54;->b:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final e(Lr4/b04;)Z
    .locals 8

    new-instance v0, Lr4/xb;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lr4/vz3;

    invoke-virtual {v5, v4, v2, v1, v2}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->z()I

    move-result v4

    const v6, 0x494433

    if-eq v4, v6, :cond_4

    invoke-interface {p1}, Lr4/b04;->k()V

    move-object v4, p1

    check-cast v4, Lr4/vz3;

    invoke-virtual {v4, v3, v2}, Lr4/vz3;->o(IZ)Z

    move v5, v3

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v2, v7, v2}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->w()I

    move-result v6

    const/16 v7, 0xb77

    if-eq v6, v7, :cond_1

    invoke-interface {p1}, Lr4/b04;->k()V

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v3

    const/16 v6, 0x2000

    if-ge v1, v6, :cond_0

    invoke-virtual {v4, v5, v2}, Lr4/vz3;->o(IZ)Z

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    return v6

    :cond_2
    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v6

    invoke-static {v6}, Lr4/gz3;->d([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v4, v6, v2}, Lr4/vz3;->o(IZ)Z

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lr4/xb;->s(I)V

    invoke-virtual {v0}, Lr4/xb;->a()I

    move-result v4

    add-int/lit8 v6, v4, 0xa

    add-int/2addr v3, v6

    invoke-virtual {v5, v4, v2}, Lr4/vz3;->o(IZ)Z

    goto :goto_0
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 3

    iget-object p2, p0, Lr4/a54;->b:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lr4/b04;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Lr4/a54;->b:Lr4/xb;

    invoke-virtual {p2, v0}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/a54;->b:Lr4/xb;

    invoke-virtual {p2, p1}, Lr4/xb;->n(I)V

    iget-boolean p1, p0, Lr4/a54;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lr4/a54;->a:Lr4/b54;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lr4/b54;->d(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/a54;->c:Z

    :cond_1
    iget-object p1, p0, Lr4/a54;->a:Lr4/b54;

    iget-object p2, p0, Lr4/a54;->b:Lr4/xb;

    invoke-virtual {p1, p2}, Lr4/b54;->b(Lr4/xb;)V

    return v0
.end method

.method public final h(Lr4/d04;)V
    .locals 5

    iget-object v0, p0, Lr4/a54;->a:Lr4/b54;

    new-instance v1, Lr4/z64;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lr4/z64;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Lr4/b54;->a(Lr4/d04;Lr4/z64;)V

    invoke-interface {p1}, Lr4/d04;->y()V

    new-instance v0, Lr4/y04;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/y04;-><init>(JJ)V

    invoke-interface {p1, v0}, Lr4/d04;->j(Lr4/z04;)V

    return-void
.end method

.method public final i(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/a54;->c:Z

    iget-object p1, p0, Lr4/a54;->a:Lr4/b54;

    invoke-virtual {p1}, Lr4/b54;->zza()V

    return-void
.end method
