.class public final Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/b$k;,
        Lu1/b$j;
    }
.end annotation


# instance fields
.field public final a:[Lk1/f;

.field public final b:[Lu1/c;

.field public final c:Lu1/a;

.field public final d:Lcom/android/dx/command/dexer/DxContext;

.field public final e:Lu1/b$k;

.field public final f:Lk1/f;

.field public final g:Lk1/f$g;

.field public final h:Lk1/f$g;

.field public final i:Lk1/f$g;

.field public final j:Lk1/f$g;

.field public final k:Lk1/f$g;

.field public final l:Lk1/f$g;

.field public final m:Lk1/f$g;

.field public final n:Lk1/f$g;

.field public final o:Lk1/f$g;

.field public final p:Lk1/f$g;

.field public final q:Lk1/f$g;

.field public final r:Lk1/f$g;

.field public final s:Lk1/f$g;

.field public final t:Lk1/s;

.field public final u:Lu1/d;

.field public v:I


# direct methods
.method public constructor <init>([Lk1/f;Lu1/a;Lcom/android/dx/command/dexer/DxContext;)V
    .locals 1

    new-instance v0, Lu1/b$k;

    invoke-direct {v0, p1}, Lu1/b$k;-><init>([Lk1/f;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lu1/b;-><init>([Lk1/f;Lu1/a;Lcom/android/dx/command/dexer/DxContext;Lu1/b$k;)V

    return-void
.end method

.method public constructor <init>([Lk1/f;Lu1/a;Lcom/android/dx/command/dexer/DxContext;Lu1/b$k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x100000

    iput v0, p0, Lu1/b;->v:I

    iput-object p1, p0, Lu1/b;->a:[Lk1/f;

    iput-object p2, p0, Lu1/b;->c:Lu1/a;

    iput-object p3, p0, Lu1/b;->d:Lcom/android/dx/command/dexer/DxContext;

    iput-object p4, p0, Lu1/b;->e:Lu1/b$k;

    new-instance p2, Lk1/f;

    invoke-virtual {p4}, Lu1/b$k;->q()I

    move-result p3

    invoke-direct {p2, p3}, Lk1/f;-><init>(I)V

    iput-object p2, p0, Lu1/b;->f:Lk1/f;

    array-length p2, p1

    new-array p2, p2, [Lu1/c;

    iput-object p2, p0, Lu1/b;->b:[Lu1/c;

    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lu1/b;->b:[Lu1/c;

    new-instance v0, Lu1/c;

    iget-object v1, p0, Lu1/b;->f:Lk1/f;

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lk1/f;->n()Lk1/s;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu1/c;-><init>(Lk1/f;Lk1/s;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lu1/d;

    invoke-direct {p1}, Lu1/d;-><init>()V

    iput-object p1, p0, Lu1/b;->u:Lu1/d;

    iget-object p1, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->a(Lu1/b$k;)I

    move-result p2

    const-string p3, "header"

    invoke-virtual {p1, p2, p3}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p1

    iput-object p1, p0, Lu1/b;->g:Lk1/f$g;

    iget-object p1, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->b(Lu1/b$k;)I

    move-result p2

    const-string p3, "ids defs"

    invoke-virtual {p1, p2, p3}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p1

    iput-object p1, p0, Lu1/b;->h:Lk1/f$g;

    iget-object p1, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p1}, Lk1/f;->n()Lk1/s;

    move-result-object p1

    iput-object p1, p0, Lu1/b;->t:Lk1/s;

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p2}, Lk1/f;->m()I

    move-result p2

    iput p2, p1, Lk1/s;->C:I

    iget-object p2, p1, Lk1/s;->j:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p1, Lk1/s;->j:Lk1/s$a;

    const/4 p3, 0x1

    iput p3, p2, Lk1/s$a;->b:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->f(Lu1/b$k;)I

    move-result p3

    const-string v0, "map list"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->i:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->k:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->g(Lu1/b$k;)I

    move-result p3

    const-string v0, "type list"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->j:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->l:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->h(Lu1/b$k;)I

    move-result p3

    const-string v0, "annotation set ref list"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->r:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->m:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->i(Lu1/b$k;)I

    move-result p3

    const-string v0, "annotation sets"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->q:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->n:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->j(Lu1/b$k;)I

    move-result p3

    const-string v0, "class data"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->k:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->o:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->k(Lu1/b$k;)I

    move-result p3

    const-string v0, "code"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->l:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->p:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->l(Lu1/b$k;)I

    move-result p3

    const-string v0, "string data"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->m:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->q:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->m(Lu1/b$k;)I

    move-result p3

    const-string v0, "debug info"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->n:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->r:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->c(Lu1/b$k;)I

    move-result p3

    const-string v0, "annotation"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->s:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->s:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->d(Lu1/b$k;)I

    move-result p3

    const-string v0, "encoded array"

    invoke-virtual {p2, p3, v0}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->o:Lk1/f$g;

    iget-object p2, p1, Lk1/s;->t:Lk1/s$a;

    iget-object p3, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p3}, Lk1/f;->m()I

    move-result p3

    iput p3, p2, Lk1/s$a;->d:I

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-static {p4}, Lu1/b$k;->e(Lu1/b$k;)I

    move-result p3

    const-string p4, "annotations directory"

    invoke-virtual {p2, p3, p4}, Lk1/f;->d(ILjava/lang/String;)Lk1/f$g;

    move-result-object p2

    iput-object p2, p0, Lu1/b;->p:Lk1/f$g;

    iget-object p2, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {p2}, Lk1/f;->m()I

    move-result p2

    iget p3, p1, Lk1/s;->C:I

    sub-int/2addr p2, p3

    iput p2, p1, Lk1/s;->B:I

    return-void
.end method

.method public static synthetic a(Lu1/b;)[Lk1/f;
    .locals 0

    iget-object p0, p0, Lu1/b;->a:[Lk1/f;

    return-object p0
.end method

.method public static synthetic b(Lu1/b;)[Lu1/c;
    .locals 0

    iget-object p0, p0, Lu1/b;->b:[Lu1/c;

    return-object p0
.end method

.method public static synthetic c(Lu1/b;)Lk1/s;
    .locals 0

    iget-object p0, p0, Lu1/b;->t:Lk1/s;

    return-object p0
.end method

.method public static synthetic d(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->m:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic e(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->h:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic f(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->j:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic g(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->s:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic h(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->g:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic i(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->i:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic j(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->k:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic k(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->l:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic l(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->n:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic m(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->o:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic n(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->p:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic o(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->q:Lk1/f$g;

    return-object p0
.end method

.method public static synthetic p(Lu1/b;)Lk1/f$g;
    .locals 0

    iget-object p0, p0, Lu1/b;->r:Lk1/f$g;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    new-instance v0, Lu1/b$d;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$d;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->b()V

    return-void
.end method

.method public final B()V
    .locals 2

    new-instance v0, Lu1/b$a;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$a;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->b()V

    return-void
.end method

.method public final C()V
    .locals 2

    new-instance v0, Lu1/b$b;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$b;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->b()V

    return-void
.end method

.method public final D()V
    .locals 2

    new-instance v0, Lu1/b$c;

    iget-object v1, p0, Lu1/b;->j:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$c;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->c()V

    return-void
.end method

.method public final E([Lu1/e;Lk1/f;Lu1/c;)V
    .locals 5

    invoke-virtual {p2}, Lk1/f;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk1/d;

    new-instance v2, Lu1/e;

    invoke-direct {v2, p2, p3, v1}, Lu1/e;-><init>(Lk1/f;Lu1/c;Lk1/d;)V

    invoke-virtual {p3, v2}, Lu1/c;->h(Lu1/e;)Lu1/e;

    move-result-object v2

    invoke-virtual {v2}, Lu1/e;->e()I

    move-result v3

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    aput-object v2, p1, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lu1/b;->c:Lu1/a;

    sget-object v3, Lu1/a;->a:Lu1/a;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lk1/g;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple dex files define "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lk1/f;->w()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1}, Lk1/d;->j()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final F(Lk1/f;Lu1/c;)V
    .locals 3

    invoke-virtual {p1}, Lk1/f;->n()Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->t:Lk1/s$a;

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lk1/s$a;->d:I

    invoke-virtual {p1, v1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lk1/s$a;->b:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lu1/b;->G(Lk1/f$g;Lu1/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G(Lk1/f$g;Lu1/c;)V
    .locals 7

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->t:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    iget-object v0, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->q()V

    invoke-virtual {p1}, Lk1/f$g;->t()I

    move-result v0

    iget-object v1, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lu1/c;->x(II)V

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v0

    invoke-virtual {p2, v0}, Lu1/c;->k(I)I

    move-result v0

    iget-object v1, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v0

    iget-object v1, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v1

    iget-object v2, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {v2, v1}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v2

    iget-object v3, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {v3, v2}, Lk1/f$g;->writeInt(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v6

    invoke-virtual {p2, v6}, Lu1/c;->p(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lk1/f$g;->writeInt(I)V

    iget-object v5, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v6

    invoke-virtual {p2, v6}, Lu1/c;->k(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lk1/f$g;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v5

    invoke-virtual {p2, v5}, Lu1/c;->q(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lk1/f$g;->writeInt(I)V

    iget-object v4, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v5

    invoke-virtual {p2, v5}, Lu1/c;->k(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lk1/f$g;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v0, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v1

    invoke-virtual {p2, v1}, Lu1/c;->q(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    iget-object v0, p0, Lu1/b;->p:Lk1/f$g;

    invoke-virtual {p1}, Lk1/f$g;->F()I

    move-result v1

    invoke-virtual {p2, v1}, Lu1/c;->l(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final H(Lu1/c;Lk1/f$g;)V
    .locals 4

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->m:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    iget-object v0, p0, Lu1/b;->q:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->q()V

    invoke-virtual {p2}, Lk1/f$g;->t()I

    move-result v0

    iget-object v1, p0, Lu1/b;->q:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lu1/c;->z(II)V

    invoke-virtual {p2}, Lk1/f$g;->F()I

    move-result v0

    iget-object v1, p0, Lu1/b;->q:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lu1/b;->q:Lk1/f$g;

    invoke-virtual {p2}, Lk1/f$g;->F()I

    move-result v3

    invoke-virtual {p1, v3}, Lu1/c;->i(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lk1/f$g;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(Lu1/c;Lk1/f$g;)V
    .locals 4

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->l:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    iget-object v0, p0, Lu1/b;->r:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->q()V

    invoke-virtual {p2}, Lk1/f$g;->t()I

    move-result v0

    iget-object v1, p0, Lu1/b;->r:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lu1/c;->A(II)V

    invoke-virtual {p2}, Lk1/f$g;->F()I

    move-result v0

    iget-object v1, p0, Lu1/b;->r:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lu1/b;->r:Lk1/f$g;

    invoke-virtual {p2}, Lk1/f$g;->F()I

    move-result v3

    invoke-virtual {p1, v3}, Lu1/c;->k(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lk1/f$g;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J(Lk1/f;Lu1/c;)V
    .locals 3

    invoke-virtual {p1}, Lk1/f;->n()Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->l:Lk1/s$a;

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lk1/s$a;->d:I

    invoke-virtual {p1, v1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lk1/s$a;->b:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p2, p1}, Lu1/b;->I(Lu1/c;Lk1/f$g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final K(Lk1/f;Lu1/c;)V
    .locals 3

    invoke-virtual {p1}, Lk1/f;->n()Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->m:Lk1/s$a;

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lk1/s$a;->d:I

    invoke-virtual {p1, v1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lk1/s$a;->b:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p2, p1}, Lu1/b;->H(Lu1/c;Lk1/f$g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final L(Lu1/c;[Lk1/e$a;)[I
    .locals 4

    iget-object v0, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->t()I

    move-result v0

    iget-object v1, p0, Lu1/b;->l:Lk1/f$g;

    array-length v2, p2

    invoke-virtual {v1, v2}, Lk1/f$g;->a0(I)V

    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {v3}, Lk1/f$g;->t()I

    move-result v3

    sub-int/2addr v3, v0

    aput v3, v1, v2

    aget-object v3, p2, v2

    invoke-virtual {p0, v3, p1}, Lu1/b;->Q(Lk1/e$a;Lu1/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final M(Lk1/f;Lk1/c;Lu1/c;)V
    .locals 5

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->n:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    invoke-virtual {p2}, Lk1/c;->c()[Lk1/c$a;

    move-result-object v0

    invoke-virtual {p2}, Lk1/c;->b()[Lk1/c$a;

    move-result-object v1

    invoke-virtual {p2}, Lk1/c;->a()[Lk1/c$b;

    move-result-object v2

    invoke-virtual {p2}, Lk1/c;->d()[Lk1/c$b;

    move-result-object p2

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    array-length v4, v0

    invoke-virtual {v3, v4}, Lk1/f$g;->a0(I)V

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    array-length v4, v1

    invoke-virtual {v3, v4}, Lk1/f$g;->a0(I)V

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lk1/f$g;->a0(I)V

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    array-length v4, p2

    invoke-virtual {v3, v4}, Lk1/f$g;->a0(I)V

    invoke-virtual {p0, p3, v0}, Lu1/b;->R(Lu1/c;[Lk1/c$a;)V

    invoke-virtual {p0, p3, v1}, Lu1/b;->R(Lu1/c;[Lk1/c$a;)V

    invoke-virtual {p0, p1, p3, v2}, Lu1/b;->S(Lk1/f;Lu1/c;[Lk1/c$b;)V

    invoke-virtual {p0, p1, p3, p2}, Lu1/b;->S(Lk1/f;Lu1/c;[Lk1/c$b;)V

    return-void
.end method

.method public final N(Lk1/f;Lk1/d;Lu1/c;)V
    .locals 2

    iget-object v0, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->q()V

    iget-object v0, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {p2}, Lk1/d;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    iget-object v0, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {p2}, Lk1/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    iget-object v0, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {p2}, Lk1/d;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    iget-object v0, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {p2}, Lk1/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p2}, Lk1/d;->g()I

    move-result v0

    invoke-virtual {p3, v0}, Lu1/c;->t(I)I

    move-result v0

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p2}, Lk1/d;->b()I

    move-result v0

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {p3, v0}, Lu1/c;->j(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p2}, Lk1/d;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lu1/b;->h:Lk1/f$g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk1/f$g;->writeInt(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu1/b;->h:Lk1/f$g;

    iget-object v1, p0, Lu1/b;->k:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p1, p2}, Lk1/f;->s(Lk1/d;)Lk1/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lu1/b;->M(Lk1/f;Lk1/c;Lu1/c;)V

    :goto_0
    invoke-virtual {p2}, Lk1/d;->h()I

    move-result p1

    iget-object p2, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {p3, p1}, Lu1/c;->n(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lk1/f$g;->writeInt(I)V

    return-void
.end method

.method public final O(Lk1/f;Lk1/e;Lu1/c;)V
    .locals 7

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->o:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk1/s$a;->b:I

    iget-object v0, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->q()V

    iget-object v0, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p2}, Lk1/e;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->c0(I)V

    iget-object v0, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p2}, Lk1/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->c0(I)V

    iget-object v0, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p2}, Lk1/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->c0(I)V

    invoke-virtual {p2}, Lk1/e;->g()[Lk1/e$b;

    move-result-object v0

    invoke-virtual {p2}, Lk1/e;->a()[Lk1/e$a;

    move-result-object v1

    iget-object v3, p0, Lu1/b;->l:Lk1/f$g;

    array-length v4, v0

    invoke-virtual {v3, v4}, Lk1/f$g;->c0(I)V

    invoke-virtual {p2}, Lk1/e;->b()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lu1/b;->l:Lk1/f$g;

    iget-object v6, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v6}, Lk1/f$g;->t()I

    move-result v6

    invoke-virtual {v5, v6}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {p1, v3}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lu1/b;->P(Lk1/f$g;Lu1/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p1, v4}, Lk1/f$g;->writeInt(I)V

    :goto_0
    invoke-virtual {p2}, Lk1/e;->d()[S

    move-result-object p1

    iget-object p2, p0, Lu1/b;->u:Lu1/d;

    invoke-virtual {p2, p3, p1}, Lu1/d;->f(Lu1/c;[S)[S

    move-result-object p1

    iget-object p2, p0, Lu1/b;->l:Lk1/f$g;

    array-length v3, p1

    invoke-virtual {p2, v3}, Lk1/f$g;->writeInt(I)V

    iget-object p2, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p2, p1}, Lk1/f$g;->V([S)V

    array-length p2, v0

    if-lez p2, :cond_2

    array-length p1, p1

    rem-int/lit8 p1, p1, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p1, v4}, Lk1/f$g;->W(S)V

    :cond_1
    iget-object p1, p0, Lu1/b;->f:Lk1/f;

    iget-object p2, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p2}, Lk1/f$g;->t()I

    move-result p2

    invoke-virtual {p1, p2}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    iget-object p2, p0, Lu1/b;->l:Lk1/f$g;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {p2, v2}, Lk1/f$g;->T(I)V

    invoke-virtual {p0, p3, v1}, Lu1/b;->L(Lu1/c;[Lk1/e$a;)[I

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lu1/b;->V(Lk1/f$g;[Lk1/e$b;[I)V

    :cond_2
    return-void
.end method

.method public final P(Lk1/f$g;Lu1/c;)V
    .locals 4

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->q:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    invoke-virtual {p1}, Lk1/f$g;->Q()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->a0(I)V

    invoke-virtual {p1}, Lk1/f$g;->Q()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->a0(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Lk1/f$g;->R()I

    move-result v2

    iget-object v3, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {p2, v2}, Lu1/c;->t(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lk1/f$g;->b0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lk1/f$g;->readByte()B

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->writeByte(I)V

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lk1/f$g;->Q()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->a0(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lk1/f$g;->Q()I

    move-result v1

    iget-object v2, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v2, v1}, Lk1/f$g;->a0(I)V

    invoke-virtual {p1}, Lk1/f$g;->R()I

    move-result v1

    iget-object v2, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {p2, v1}, Lu1/c;->t(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lk1/f$g;->b0(I)V

    invoke-virtual {p1}, Lk1/f$g;->R()I

    move-result v1

    iget-object v2, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {p2, v1}, Lu1/c;->u(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lk1/f$g;->b0(I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lk1/f$g;->R()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {p2, v0}, Lu1/c;->t(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lk1/f$g;->b0(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lk1/f$g;->M()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->X(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lk1/f$g;->Q()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {v1, v0}, Lk1/f$g;->a0(I)V

    goto :goto_1

    :pswitch_4
    return-void

    :cond_1
    invoke-virtual {p1}, Lk1/f$g;->R()I

    move-result v0

    iget-object v1, p0, Lu1/b;->n:Lk1/f$g;

    invoke-virtual {p2, v0}, Lu1/c;->t(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lk1/f$g;->b0(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final Q(Lk1/e$a;Lu1/c;)V
    .locals 6

    invoke-virtual {p1}, Lk1/e$a;->b()I

    move-result v0

    invoke-virtual {p1}, Lk1/e$a;->d()[I

    move-result-object v1

    invoke-virtual {p1}, Lk1/e$a;->a()[I

    move-result-object p1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lu1/b;->l:Lk1/f$g;

    array-length v4, v1

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lk1/f$g;->X(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lu1/b;->l:Lk1/f$g;

    array-length v4, v1

    invoke-virtual {v3, v4}, Lk1/f$g;->X(I)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lu1/b;->l:Lk1/f$g;

    aget v5, v1, v3

    invoke-virtual {p2, v5}, Lu1/c;->u(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lk1/f$g;->a0(I)V

    iget-object v4, p0, Lu1/b;->l:Lk1/f$g;

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Lk1/f$g;->a0(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {p1, v0}, Lk1/f$g;->a0(I)V

    :cond_2
    return-void
.end method

.method public final R(Lu1/c;[Lk1/c$a;)V
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lk1/c$a;->b()I

    move-result v4

    invoke-virtual {p1, v4}, Lu1/c;->p(I)I

    move-result v4

    iget-object v5, p0, Lu1/b;->k:Lk1/f$g;

    sub-int v2, v4, v2

    invoke-virtual {v5, v2}, Lk1/f$g;->a0(I)V

    iget-object v2, p0, Lu1/b;->k:Lk1/f$g;

    invoke-virtual {v3}, Lk1/c$a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lk1/f$g;->a0(I)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final S(Lk1/f;Lu1/c;[Lk1/c$b;)V
    .locals 7

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p3, v2

    invoke-virtual {v4}, Lk1/c$b;->c()I

    move-result v5

    invoke-virtual {p2, v5}, Lu1/c;->q(I)I

    move-result v5

    iget-object v6, p0, Lu1/b;->k:Lk1/f$g;

    sub-int v3, v5, v3

    invoke-virtual {v6, v3}, Lk1/f$g;->a0(I)V

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    invoke-virtual {v4}, Lk1/c$b;->a()I

    move-result v6

    invoke-virtual {v3, v6}, Lk1/f$g;->a0(I)V

    invoke-virtual {v4}, Lk1/c$b;->b()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    invoke-virtual {v3, v1}, Lk1/f$g;->a0(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {v3}, Lk1/f$g;->p()V

    iget-object v3, p0, Lu1/b;->k:Lk1/f$g;

    iget-object v6, p0, Lu1/b;->l:Lk1/f$g;

    invoke-virtual {v6}, Lk1/f$g;->t()I

    move-result v6

    invoke-virtual {v3, v6}, Lk1/f$g;->a0(I)V

    invoke-virtual {p1, v4}, Lk1/f;->t(Lk1/c$b;)Lk1/e;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p2}, Lu1/b;->O(Lk1/f;Lk1/e;Lu1/c;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final T(Lk1/f$g;Lu1/c;)V
    .locals 2

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->s:Lk1/s$a;

    iget v1, v0, Lk1/s$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk1/s$a;->b:I

    invoke-virtual {p1}, Lk1/f$g;->t()I

    move-result v0

    iget-object v1, p0, Lu1/b;->o:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lu1/c;->B(II)V

    invoke-virtual {p1}, Lk1/f$g;->C()Lk1/j;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu1/c;->o(Lk1/j;)Lk1/j;

    move-result-object p1

    iget-object p2, p0, Lu1/b;->o:Lk1/f$g;

    invoke-virtual {p1, p2}, Lk1/j;->f(Lk1/f$g;)V

    return-void
.end method

.method public final U(Lk1/f;Lu1/c;)V
    .locals 3

    invoke-virtual {p1}, Lk1/f;->n()Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->s:Lk1/s$a;

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lk1/s$a;->d:I

    invoke-virtual {p1, v1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lk1/s$a;->b:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lu1/b;->T(Lk1/f$g;Lu1/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final V(Lk1/f$g;[Lk1/e$b;[I)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lk1/e$b;->c()I

    move-result v3

    invoke-virtual {p1, v3}, Lk1/f$g;->writeInt(I)V

    invoke-virtual {v2}, Lk1/e$b;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Lk1/f$g;->c0(I)V

    invoke-virtual {v2}, Lk1/e$b;->a()I

    move-result v2

    aget v2, p3, v2

    invoke-virtual {p1, v2}, Lk1/f$g;->c0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final W()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lu1/b;->a:[Lk1/f;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, p0, Lu1/b;->b:[Lu1/c;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lu1/b;->K(Lk1/f;Lu1/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lu1/b;->a:[Lk1/f;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-object v3, p0, Lu1/b;->b:[Lu1/c;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lu1/b;->J(Lk1/f;Lu1/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lu1/b;->a:[Lk1/f;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget-object v3, p0, Lu1/b;->b:[Lu1/c;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lu1/b;->F(Lk1/f;Lu1/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v1, p0, Lu1/b;->a:[Lk1/f;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    iget-object v2, p0, Lu1/b;->b:[Lu1/c;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lu1/b;->U(Lk1/f;Lu1/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final q()[Lu1/e;
    .locals 7

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->c:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->b:I

    new-array v1, v0, [Lu1/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lu1/b;->a:[Lk1/f;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    iget-object v5, p0, Lu1/b;->b:[Lu1/c;

    aget-object v5, v5, v3

    invoke-virtual {p0, v1, v4, v5}, Lu1/b;->E([Lu1/e;Lk1/f;Lu1/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lu1/e;->f()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v1}, Lu1/e;->g([Lu1/e;)Z

    move-result v5

    and-int/2addr v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_0

    sget-object v0, Lu1/e;->e:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Lu1/e;

    :cond_3
    return-object v1
.end method

.method public r()Lk1/f;
    .locals 13

    iget-object v0, p0, Lu1/b;->a:[Lk1/f;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    return-object v0

    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lu1/b;->w()Lk1/f;

    move-result-object v4

    new-instance v5, Lu1/b$k;

    invoke-direct {v5, p0}, Lu1/b$k;-><init>(Lu1/b;)V

    iget-object v6, p0, Lu1/b;->e:Lu1/b$k;

    invoke-virtual {v6}, Lu1/b$k;->q()I

    move-result v6

    invoke-virtual {v5}, Lu1/b$k;->q()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lu1/b;->v:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v10, 0x44800000    # 1024.0f

    if-le v6, v7, :cond_2

    new-instance v4, Lu1/b;

    new-array v7, v9, [Lk1/f;

    iget-object v11, p0, Lu1/b;->f:Lk1/f;

    aput-object v11, v7, v3

    new-instance v11, Lk1/f;

    invoke-direct {v11, v3}, Lk1/f;-><init>(I)V

    aput-object v11, v7, v2

    sget-object v11, Lu1/a;->b:Lu1/a;

    iget-object v12, p0, Lu1/b;->d:Lcom/android/dx/command/dexer/DxContext;

    invoke-direct {v4, v7, v11, v12, v5}, Lu1/b;-><init>([Lk1/f;Lu1/a;Lcom/android/dx/command/dexer/DxContext;Lu1/b$k;)V

    invoke-virtual {v4}, Lu1/b;->w()Lk1/f;

    move-result-object v4

    iget-object v5, p0, Lu1/b;->d:Lcom/android/dx/command/dexer/DxContext;

    iget-object v5, v5, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v11, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {v11}, Lk1/f;->l()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v3

    invoke-virtual {v4}, Lk1/f;->l()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v2

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v7, v9

    const-string v6, "Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n"

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lu1/b;->a:[Lk1/f;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lu1/b;->d:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-array v7, v8, [Ljava/lang/Object;

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v3

    iget-object v12, p0, Lu1/b;->a:[Lk1/f;

    aget-object v12, v12, v0

    invoke-virtual {v12}, Lk1/f;->n()Lk1/s;

    move-result-object v12

    iget-object v12, v12, Lk1/s;->g:Lk1/s$a;

    iget v12, v12, Lk1/s$a;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v2

    iget-object v12, p0, Lu1/b;->a:[Lk1/f;

    aget-object v0, v12, v0

    invoke-virtual {v0}, Lk1/f;->l()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v9

    const-string v0, "Merged dex #%d (%d defs/%.1fKiB)%n"

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v0, v11

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lu1/b;->d:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lk1/f;->n()Lk1/s;

    move-result-object v7

    iget-object v7, v7, Lk1/s;->g:Lk1/s$a;

    iget v7, v7, Lk1/s$a;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-virtual {v4}, Lk1/f;->l()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    long-to-float v2, v5

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "Result is %d defs/%.1fKiB. Took %.1fs%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-object v4
.end method

.method public final s()V
    .locals 2

    new-instance v0, Lu1/b$i;

    iget-object v1, p0, Lu1/b;->s:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$i;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->c()V

    return-void
.end method

.method public final t()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lu1/b;->a:[Lk1/f;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lk1/f;->n()Lk1/s;

    move-result-object v2

    iget v2, v2, Lk1/s;->v:I

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final u()V
    .locals 2

    new-instance v0, Lu1/b$e;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$e;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->b()V

    return-void
.end method

.method public final v()V
    .locals 6

    invoke-virtual {p0}, Lu1/b;->q()[Lu1/e;

    move-result-object v0

    iget-object v1, p0, Lu1/b;->t:Lk1/s;

    iget-object v1, v1, Lk1/s;->g:Lk1/s$a;

    iget-object v2, p0, Lu1/b;->h:Lk1/f$g;

    invoke-virtual {v2}, Lk1/f$g;->t()I

    move-result v2

    iput v2, v1, Lk1/s$a;->d:I

    iget-object v1, p0, Lu1/b;->t:Lk1/s;

    iget-object v1, v1, Lk1/s;->g:Lk1/s$a;

    array-length v2, v0

    iput v2, v1, Lk1/s$a;->b:I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lu1/e;->c()Lk1/f;

    move-result-object v4

    invoke-virtual {v3}, Lu1/e;->b()Lk1/d;

    move-result-object v5

    invoke-virtual {v3}, Lu1/e;->d()Lu1/c;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lu1/b;->N(Lk1/f;Lk1/d;Lu1/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()Lk1/f;
    .locals 3

    invoke-virtual {p0}, Lu1/b;->B()V

    invoke-virtual {p0}, Lu1/b;->C()V

    invoke-virtual {p0}, Lu1/b;->D()V

    invoke-virtual {p0}, Lu1/b;->A()V

    invoke-virtual {p0}, Lu1/b;->x()V

    invoke-virtual {p0}, Lu1/b;->z()V

    invoke-virtual {p0}, Lu1/b;->y()V

    invoke-virtual {p0}, Lu1/b;->s()V

    invoke-virtual {p0}, Lu1/b;->W()V

    invoke-virtual {p0}, Lu1/b;->u()V

    invoke-virtual {p0}, Lu1/b;->v()V

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v0, v0, Lk1/s;->u:[Lk1/s$a;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v1, v0, Lk1/s;->a:Lk1/s$a;

    const/4 v2, 0x0

    iput v2, v1, Lk1/s$a;->d:I

    const/4 v2, 0x1

    iput v2, v1, Lk1/s$a;->b:I

    iget-object v1, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {v1}, Lk1/f;->l()I

    move-result v1

    iput v1, v0, Lk1/s;->y:I

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    invoke-virtual {v0}, Lk1/s;->a()V

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v1, p0, Lu1/b;->g:Lk1/f$g;

    invoke-virtual {p0}, Lu1/b;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lk1/s;->f(Lk1/f$g;I)V

    iget-object v0, p0, Lu1/b;->t:Lk1/s;

    iget-object v1, p0, Lu1/b;->i:Lk1/f$g;

    invoke-virtual {v0, v1}, Lk1/s;->g(Lk1/f$g;)V

    iget-object v0, p0, Lu1/b;->f:Lk1/f;

    invoke-virtual {v0}, Lk1/f;->x()V

    iget-object v0, p0, Lu1/b;->f:Lk1/f;

    return-object v0
.end method

.method public final x()V
    .locals 2

    new-instance v0, Lu1/b$g;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$g;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->b()V

    return-void
.end method

.method public final y()V
    .locals 2

    new-instance v0, Lu1/b$f;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$f;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->c()V

    return-void
.end method

.method public final z()V
    .locals 2

    new-instance v0, Lu1/b$h;

    iget-object v1, p0, Lu1/b;->h:Lk1/f$g;

    invoke-direct {v0, p0, v1}, Lu1/b$h;-><init>(Lu1/b;Lk1/f$g;)V

    invoke-virtual {v0}, Lu1/b$j;->b()V

    return-void
.end method
