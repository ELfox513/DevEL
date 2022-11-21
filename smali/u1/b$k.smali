.class public Lu1/b$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lu1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    iput v0, p0, Lu1/b$k;->a:I

    invoke-static {p1}, Lu1/b;->h(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->a:I

    invoke-static {p1}, Lu1/b;->e(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->b:I

    invoke-static {p1}, Lu1/b;->i(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->c:I

    invoke-static {p1}, Lu1/b;->f(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->d:I

    invoke-static {p1}, Lu1/b;->j(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->e:I

    invoke-static {p1}, Lu1/b;->k(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->f:I

    invoke-static {p1}, Lu1/b;->d(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->g:I

    invoke-static {p1}, Lu1/b;->l(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->h:I

    invoke-static {p1}, Lu1/b;->m(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->i:I

    invoke-static {p1}, Lu1/b;->n(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->j:I

    invoke-static {p1}, Lu1/b;->o(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->k:I

    invoke-static {p1}, Lu1/b;->p(Lu1/b;)Lk1/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lk1/f$g;->U()I

    move-result v0

    iput v0, p0, Lu1/b$k;->l:I

    invoke-static {p1}, Lu1/b;->g(Lu1/b;)Lk1/f$g;

    move-result-object p1

    invoke-virtual {p1}, Lk1/f$g;->U()I

    move-result p1

    iput p1, p0, Lu1/b$k;->m:I

    invoke-virtual {p0}, Lu1/b$k;->o()V

    return-void
.end method

.method public constructor <init>([Lk1/f;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    iput v0, p0, Lu1/b$k;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lk1/f;->n()Lk1/s;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lu1/b$k;->p(Lk1/s;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu1/b$k;->o()V

    return-void
.end method

.method public static synthetic a(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->a:I

    return p0
.end method

.method public static synthetic b(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->b:I

    return p0
.end method

.method public static synthetic c(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->m:I

    return p0
.end method

.method public static synthetic d(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->i:I

    return p0
.end method

.method public static synthetic e(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->j:I

    return p0
.end method

.method public static synthetic f(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->c:I

    return p0
.end method

.method public static synthetic g(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->d:I

    return p0
.end method

.method public static synthetic h(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->l:I

    return p0
.end method

.method public static synthetic i(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->k:I

    return p0
.end method

.method public static synthetic j(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->e:I

    return p0
.end method

.method public static synthetic k(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->f:I

    return p0
.end method

.method public static synthetic l(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->g:I

    return p0
.end method

.method public static synthetic m(Lu1/b$k;)I
    .locals 0

    iget p0, p0, Lu1/b$k;->h:I

    return p0
.end method

.method public static n(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, -0x4

    return p0
.end method


# virtual methods
.method public final o()V
    .locals 1

    iget v0, p0, Lu1/b$k;->a:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->a:I

    iget v0, p0, Lu1/b$k;->b:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->b:I

    iget v0, p0, Lu1/b$k;->c:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->c:I

    iget v0, p0, Lu1/b$k;->d:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->d:I

    iget v0, p0, Lu1/b$k;->e:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->e:I

    iget v0, p0, Lu1/b$k;->f:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->f:I

    iget v0, p0, Lu1/b$k;->g:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->g:I

    iget v0, p0, Lu1/b$k;->h:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->h:I

    iget v0, p0, Lu1/b$k;->i:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->i:I

    iget v0, p0, Lu1/b$k;->j:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->j:I

    iget v0, p0, Lu1/b$k;->k:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->k:I

    iget v0, p0, Lu1/b$k;->l:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->l:I

    iget v0, p0, Lu1/b$k;->m:I

    invoke-static {v0}, Lu1/b$k;->n(I)I

    move-result v0

    iput v0, p0, Lu1/b$k;->m:I

    return-void
.end method

.method public final p(Lk1/s;Z)V
    .locals 4

    iget v0, p0, Lu1/b$k;->b:I

    iget-object v1, p1, Lk1/s;->b:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->b:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p1, Lk1/s;->c:Lk1/s$a;

    iget v2, v2, Lk1/s$a;->b:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-object v2, p1, Lk1/s;->d:Lk1/s$a;

    iget v2, v2, Lk1/s$a;->b:I

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    iget-object v2, p1, Lk1/s;->e:Lk1/s$a;

    iget v2, v2, Lk1/s$a;->b:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p1, Lk1/s;->f:Lk1/s$a;

    iget v2, v2, Lk1/s$a;->b:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p1, Lk1/s;->g:Lk1/s$a;

    iget v2, v2, Lk1/s$a;->b:I

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lu1/b$k;->b:I

    iget-object v0, p1, Lk1/s;->u:[Lk1/s$a;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lu1/b$k;->c:I

    iget v0, p0, Lu1/b$k;->d:I

    iget-object v1, p1, Lk1/s;->k:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->k:I

    invoke-static {v1}, Lu1/b$k;->n(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lu1/b$k;->d:I

    iget v0, p0, Lu1/b$k;->g:I

    iget-object v1, p1, Lk1/s;->p:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lu1/b$k;->g:I

    iget v0, p0, Lu1/b$k;->j:I

    iget-object v1, p1, Lk1/s;->t:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lu1/b$k;->j:I

    iget v0, p0, Lu1/b$k;->k:I

    iget-object v1, p1, Lk1/s;->m:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lu1/b$k;->k:I

    iget v0, p0, Lu1/b$k;->l:I

    iget-object v1, p1, Lk1/s;->l:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lu1/b$k;->l:I

    if-eqz p2, :cond_0

    iget p2, p0, Lu1/b$k;->f:I

    iget-object v0, p1, Lk1/s;->o:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->f:I

    iget p2, p0, Lu1/b$k;->e:I

    iget-object v0, p1, Lk1/s;->n:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->e:I

    iget p2, p0, Lu1/b$k;->i:I

    iget-object v0, p1, Lk1/s;->s:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->i:I

    iget p2, p0, Lu1/b$k;->m:I

    iget-object v0, p1, Lk1/s;->r:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->m:I

    iget p2, p0, Lu1/b$k;->h:I

    iget-object p1, p1, Lk1/s;->q:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Lu1/b$k;->h:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lu1/b$k;->f:I

    iget-object v0, p1, Lk1/s;->o:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->f:I

    iget p2, p0, Lu1/b$k;->e:I

    iget-object v0, p1, Lk1/s;->n:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    int-to-double v0, v0

    const-wide v2, 0x3ffab851eb851eb8L    # 1.67

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->e:I

    iget p2, p0, Lu1/b$k;->i:I

    iget-object v0, p1, Lk1/s;->s:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->i:I

    iget p2, p0, Lu1/b$k;->m:I

    iget-object v0, p1, Lk1/s;->r:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->k:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p0, Lu1/b$k;->m:I

    iget p2, p0, Lu1/b$k;->h:I

    iget-object p1, p1, Lk1/s;->q:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->k:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x8

    add-int/2addr p2, p1

    iput p2, p0, Lu1/b$k;->h:I

    :goto_0
    return-void
.end method

.method public q()I
    .locals 2

    iget v0, p0, Lu1/b$k;->a:I

    iget v1, p0, Lu1/b$k;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/b$k;->m:I

    add-int/2addr v0, v1

    return v0
.end method
