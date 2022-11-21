.class public final Lz1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/s$a;,
        Lz1/s$b;
    }
.end annotation


# static fields
.field public static final n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/BitSet;

.field public c:Ljava/util/BitSet;

.field public d:Lb2/j;

.field public e:I

.field public final f:I

.field public final g:Lz1/v;

.field public final h:I

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:Lb2/k;

.field public m:Lb2/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/s$a;

    invoke-direct {v0}, Lz1/s$a;-><init>()V

    sput-object v0, Lz1/s;->n:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILz1/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz1/s;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lz1/s;->j:I

    iput v0, p0, Lz1/s;->k:I

    iput-object p3, p0, Lz1/s;->g:Lz1/v;

    iput p1, p0, Lz1/s;->h:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/s;->a:Ljava/util/ArrayList;

    iput p2, p0, Lz1/s;->f:I

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {p3}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lz1/s;->b:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {p3}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lz1/s;->c:Ljava/util/BitSet;

    new-instance p1, Lb2/j;

    invoke-direct {p1}, Lb2/j;-><init>()V

    iput-object p1, p0, Lz1/s;->d:Lb2/j;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/s;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public static G(Lw1/u;ILz1/v;)Lz1/s;
    .locals 7

    invoke-virtual {p0}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw1/c;->F(I)Lw1/b;

    move-result-object v1

    new-instance v2, Lz1/s;

    invoke-virtual {v1}, Lw1/b;->a()I

    move-result v3

    invoke-direct {v2, p1, v3, p2}, Lz1/s;-><init>(IILz1/v;)V

    invoke-virtual {v1}, Lw1/b;->d()Lw1/i;

    move-result-object p1

    iget-object p2, v2, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    iget-object v4, v2, Lz1/s;->a:Ljava/util/ArrayList;

    new-instance v5, Lz1/l;

    invoke-virtual {p1, v3}, Lw1/i;->A(I)Lw1/h;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lw1/b;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lw1/u;->d(I)Lb2/j;

    move-result-object p0

    invoke-static {v0, p0}, Lz1/v;->c(Lw1/c;Lb2/j;)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, v2, Lz1/s;->b:Ljava/util/BitSet;

    invoke-virtual {v1}, Lw1/b;->h()Lb2/j;

    move-result-object p0

    invoke-static {v0, p0}, Lz1/v;->c(Lw1/c;Lb2/j;)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, v2, Lz1/s;->c:Ljava/util/BitSet;

    invoke-virtual {v1}, Lw1/b;->h()Lb2/j;

    move-result-object p0

    invoke-static {v0, p0}, Lz1/v;->x(Lw1/c;Lb2/j;)Lb2/j;

    move-result-object p0

    iput-object p0, v2, Lz1/s;->d:Lb2/j;

    invoke-virtual {p0}, Lb2/j;->size()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lw1/b;->f()I

    move-result p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Lb2/m;->A(I)I

    move-result p0

    :goto_1
    iput p0, v2, Lz1/s;->e:I

    :cond_2
    return-object v2
.end method

.method public static N(Ljava/util/BitSet;Lw1/q;)V
    .locals 2

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lz1/s;)I
    .locals 0

    iget p0, p0, Lz1/s;->f:I

    return p0
.end method

.method public static j(Ljava/util/BitSet;Lw1/q;)Z
    .locals 3

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public A()Lb2/j;
    .locals 5

    new-instance v0, Lb2/j;

    iget-object v1, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb2/j;-><init>(I)V

    iget-object v1, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lz1/s;->g:Lz1/v;

    iget-object v4, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v4, v2}, Lb2/j;->B(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lz1/v;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lb2/j;->x(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public B()Lb2/j;
    .locals 1

    iget-object v0, p0, Lz1/s;->d:Lb2/j;

    return-object v0
.end method

.method public C()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    return-object v0
.end method

.method public D()Lz1/s;
    .locals 5

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->A()Lz1/s;

    move-result-object v0

    iget-object v1, p0, Lz1/s;->b:Ljava/util/BitSet;

    iput-object v1, v0, Lz1/s;->b:Ljava/util/BitSet;

    iget-object v1, v0, Lz1/s;->c:Ljava/util/BitSet;

    iget v2, p0, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lz1/s;->d:Lb2/j;

    iget v2, p0, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Lb2/j;->x(I)V

    iget v1, p0, Lz1/s;->h:I

    iput v1, v0, Lz1/s;->e:I

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lz1/s;->b:Ljava/util/BitSet;

    iget v2, v0, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lz1/s;->b:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    iget v3, p0, Lz1/s;->h:I

    iget v4, v0, Lz1/s;->h:I

    invoke-virtual {v2, v3, v4}, Lz1/s;->K(II)V

    iget-object v2, v0, Lz1/s;->b:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public E(Lz1/s;)Lz1/s;
    .locals 4

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->A()Lz1/s;

    move-result-object v0

    iget-object v1, p0, Lz1/s;->c:Ljava/util/BitSet;

    iget v2, p1, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lz1/s;->b:Ljava/util/BitSet;

    iget v2, p0, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lz1/s;->c:Ljava/util/BitSet;

    iget v2, p1, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lz1/s;->d:Lb2/j;

    iget v2, p1, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Lb2/j;->x(I)V

    iget v1, p1, Lz1/s;->h:I

    iput v1, v0, Lz1/s;->e:I

    iget-object v1, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v2, v1}, Lb2/j;->B(I)I

    move-result v2

    iget v3, p1, Lz1/s;->h:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lz1/s;->d:Lb2/j;

    iget v3, v0, Lz1/s;->h:I

    invoke-virtual {v2, v1, v3}, Lb2/j;->L(II)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lz1/s;->e:I

    iget v2, p1, Lz1/s;->h:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Lz1/s;->h:I

    iput v1, p0, Lz1/s;->e:I

    :cond_2
    iget-object v1, p0, Lz1/s;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v1, p0, Lz1/s;->c:Ljava/util/BitSet;

    iget v2, v0, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p1, Lz1/s;->b:Ljava/util/BitSet;

    iget v2, v0, Lz1/s;->h:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p1, Lz1/s;->b:Ljava/util/BitSet;

    iget v2, p0, Lz1/s;->h:I

    iget-object v3, p0, Lz1/s;->c:Ljava/util/BitSet;

    iget p1, p1, Lz1/s;->h:I

    invoke-virtual {v3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz1/s;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not successor of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz1/s;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public F()Z
    .locals 2

    iget v0, p0, Lz1/s;->h:I

    iget-object v1, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->r()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()V
    .locals 3

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lz1/s;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public I(I)V
    .locals 3

    iget-object v0, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v2, v0}, Lb2/j;->B(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v2, v0}, Lb2/j;->B(I)I

    move-result v2

    iput v2, p0, Lz1/s;->e:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v0, v1}, Lb2/j;->K(I)V

    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    iget-object p1, p1, Lz1/s;->b:Ljava/util/BitSet;

    iget v0, p0, Lz1/s;->h:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public J(Lw1/h;)V
    .locals 4

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    invoke-static {p1, p0}, Lz1/u;->D(Lw1/h;Lz1/s;)Lz1/u;

    move-result-object p1

    iget-object v2, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v1, v0}, Lz1/v;->F(Lz1/u;)V

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0, p1}, Lz1/v;->E(Lz1/u;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "last insn must branch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    iget v0, p0, Lz1/s;->e:I

    if-ne v0, p1, :cond_1

    iput p2, p0, Lz1/s;->e:I

    :cond_1
    iget-object v0, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v1, v0}, Lb2/j;->B(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v1, v0, p2}, Lb2/j;->L(II)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz1/s;

    iget-object p2, p2, Lz1/s;->b:Ljava/util/BitSet;

    iget v0, p0, Lz1/s;->h:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p2, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {p2}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    iget-object p1, p1, Lz1/s;->b:Ljava/util/BitSet;

    iget p2, p0, Lz1/s;->h:I

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public L()V
    .locals 4

    iget v0, p0, Lz1/s;->k:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v2, p0, Lz1/s;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz1/s;->M(Ljava/util/List;)V

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    iget v2, p0, Lz1/s;->k:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    invoke-virtual {v0}, Lz1/u;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lz1/s;->j:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lz1/s;->j:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz1/s;->M(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->K()V

    return-void
.end method

.method public final M(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz1/u;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->u()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->u()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz1/u;

    invoke-virtual {v6}, Lz1/u;->u()Lw1/r;

    move-result-object v6

    invoke-virtual {v6, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    invoke-static {v0, v6}, Lz1/s;->N(Ljava/util/BitSet;Lw1/q;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz1/u;

    invoke-virtual {v6}, Lz1/u;->t()Lw1/q;

    move-result-object v6

    invoke-static {v1, v6}, Lz1/s;->N(Ljava/util/BitSet;Lw1/q;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v4

    move v6, v5

    :goto_2
    if-ge v5, v2, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz1/u;

    invoke-virtual {v7}, Lz1/u;->t()Lw1/q;

    move-result-object v7

    invoke-static {v0, v7}, Lz1/s;->j(Ljava/util/BitSet;Lw1/q;)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    invoke-static {p1, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    if-ne v4, v6, :cond_5

    const/4 v4, 0x0

    move v5, v6

    :goto_3
    if-ge v5, v2, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz1/u;

    invoke-virtual {v7}, Lz1/u;->t()Lw1/q;

    move-result-object v8

    invoke-static {v0, v8}, Lz1/s;->j(Ljava/util/BitSet;Lw1/q;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lz1/u;->u()Lw1/r;

    move-result-object v8

    invoke-virtual {v8, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v8

    invoke-static {v1, v8}, Lz1/s;->j(Ljava/util/BitSet;Lw1/q;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p1, v6, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move-object v4, v7

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v4}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    iget-object v5, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v2}, Lw1/q;->x()I

    move-result v7

    invoke-virtual {v5, v7}, Lz1/v;->e(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lw1/q;->S(I)Lw1/q;

    move-result-object v5

    new-instance v7, Lz1/l;

    new-instance v8, Lw1/o;

    invoke-virtual {v2}, Lw1/q;->getType()Ly1/c;

    move-result-object v9

    invoke-static {v9}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v9

    sget-object v10, Lw1/w;->d:Lw1/w;

    invoke-virtual {v4}, Lz1/u;->u()Lw1/r;

    move-result-object v4

    invoke-direct {v8, v9, v10, v5, v4}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-direct {v7, v8, p0}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    add-int/lit8 v4, v6, 0x1

    invoke-interface {p1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v5}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v5

    new-instance v6, Lz1/l;

    new-instance v7, Lw1/o;

    invoke-virtual {v2}, Lw1/q;->getType()Ly1/c;

    move-result-object v8

    invoke-static {v8}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v8

    invoke-direct {v7, v8, v10, v2, v5}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-direct {v6, v7, p0}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    invoke-interface {p1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5

    :cond_5
    move v4, v6

    :goto_5
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public b(Lz1/s;)V
    .locals 1

    iget-object v0, p0, Lz1/s;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lw1/h;)V
    .locals 2

    invoke-static {p1, p0}, Lz1/u;->D(Lw1/h;Lz1/s;)Lz1/u;

    move-result-object p1

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lz1/s;->n()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0, p1}, Lz1/v;->E(Lz1/u;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lz1/s;->l:Lb2/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    invoke-static {v0}, Lz1/r;->c(I)Lb2/k;

    move-result-object v0

    iput-object v0, p0, Lz1/s;->l:Lb2/k;

    :cond_0
    iget-object v0, p0, Lz1/s;->l:Lb2/k;

    invoke-interface {v0, p1}, Lb2/k;->add(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lz1/s;->m:Lb2/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    invoke-static {v0}, Lz1/r;->c(I)Lb2/k;

    move-result-object v0

    iput-object v0, p0, Lz1/s;->m:Lb2/k;

    :cond_0
    iget-object v0, p0, Lz1/s;->m:Lb2/k;

    invoke-interface {v0, p1}, Lb2/k;->add(I)V

    return-void
.end method

.method public f(Lw1/q;Lw1/q;)V
    .locals 4

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object p2

    new-instance v0, Lz1/l;

    new-instance v1, Lw1/o;

    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object v2

    invoke-static {v2}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v2

    sget-object v3, Lw1/w;->d:Lw1/w;

    invoke-direct {v1, v2, v3, p1, p2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-direct {v0, v1, p0}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    iget-object p1, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lz1/s;->n()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Lz1/s;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz1/s;->k:I

    return-void
.end method

.method public g(Lw1/q;Lw1/q;)V
    .locals 5

    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/l;

    invoke-virtual {v0}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lz1/l;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object p2

    new-instance v0, Lz1/l;

    new-instance v2, Lw1/o;

    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object v3

    invoke-static {v3}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v3

    sget-object v4, Lw1/w;->d:Lw1/w;

    invoke-direct {v2, v3, v4, p1, p2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-direct {v0, v2, p0}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    iget-object p1, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Lz1/s;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lz1/s;->j:I

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1, p1, p2}, Lz1/s;->f(Lw1/q;Lw1/q;)V

    iget-object v1, p0, Lz1/s;->c:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Inserting a move to a block with multiple successors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    new-instance v1, Lz1/n;

    invoke-direct {v1, p1, p0}, Lz1/n;-><init>(ILz1/s;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public i(Lw1/q;)V
    .locals 2

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    new-instance v1, Lz1/n;

    invoke-direct {v1, p1, p0}, Lz1/n;-><init>(Lw1/q;Lz1/s;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public k(Lz1/s;)V
    .locals 2

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz1/s;->d:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz1/s;->c:Ljava/util/BitSet;

    iget v1, p1, Lz1/s;->h:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lz1/s;->d:Lb2/j;

    iget v1, p1, Lz1/s;->h:I

    invoke-virtual {v0, v1}, Lb2/j;->x(I)V

    iget v0, p1, Lz1/s;->h:I

    iput v0, p0, Lz1/s;->e:I

    iget-object p1, p1, Lz1/s;->b:Ljava/util/BitSet;

    iget v0, p0, Lz1/s;->h:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_1
    return-void
.end method

.method public l(Lz1/u$a;)V
    .locals 3

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    invoke-virtual {v2, p1}, Lz1/u;->a(Lz1/u$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Lz1/n$b;)V
    .locals 4

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    instance-of v3, v2, Lz1/n;

    if-eqz v3, :cond_0

    check-cast v2, Lz1/n;

    invoke-interface {p1, v2}, Lz1/n$b;->a(Lz1/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()I
    .locals 3

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    instance-of v2, v2, Lz1/n;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/s;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lz1/s;->h:I

    return v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()Lb2/k;
    .locals 1

    iget-object v0, p0, Lz1/s;->m:Lb2/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    invoke-static {v0}, Lz1/r;->c(I)Lb2/k;

    move-result-object v0

    iput-object v0, p0, Lz1/s;->m:Lb2/k;

    :cond_0
    iget-object v0, p0, Lz1/s;->m:Lb2/k;

    return-object v0
.end method

.method public s()Lz1/v;
    .locals 1

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz1/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/s;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lz1/s;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz1/s;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz1/s;->f:I

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lz1/s;->b:Ljava/util/BitSet;

    return-object v0
.end method

.method public v()Lz1/s;
    .locals 2

    iget v0, p0, Lz1/s;->e:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lz1/s;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lz1/s;->e:I

    return v0
.end method

.method public x()I
    .locals 2

    iget-object v0, p0, Lz1/s;->g:Lz1/v;

    iget v1, p0, Lz1/s;->e:I

    invoke-virtual {v0, v1}, Lz1/v;->d(I)I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lz1/s;->f:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lz1/s;->f:I

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
