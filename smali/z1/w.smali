.class public Lz1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/w$b;
    }
.end annotation


# instance fields
.field public final a:Lz1/v;

.field public b:I

.field public final d:I

.field public k:I

.field public final p:[[Lw1/q;

.field public final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw1/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result v0

    iput v0, p0, Lz1/w;->d:I

    iput-object p1, p0, Lz1/w;->a:Lz1/v;

    iput v0, p0, Lz1/w;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lz1/w;->k:I

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[Lw1/q;

    iput-object v2, p0, Lz1/w;->p:[[Lw1/q;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lz1/w;->q:Ljava/util/ArrayList;

    new-array v0, v0, [Lw1/q;

    :goto_0
    iget v2, p0, Lz1/w;->d:I

    if-ge v1, v2, :cond_0

    sget-object v2, Ly1/c;->B:Ly1/c;

    invoke-static {v1, v2}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz1/w;->p:[[Lw1/q;

    invoke-virtual {p1}, Lz1/v;->p()I

    move-result p1

    aput-object v0, v1, p1

    return-void
.end method

.method public constructor <init>(Lz1/v;I)V
    .locals 0

    invoke-direct {p0, p1}, Lz1/w;-><init>(Lz1/v;)V

    iput p2, p0, Lz1/w;->k:I

    return-void
.end method

.method public static synthetic a(Lz1/w;)[[Lw1/q;
    .locals 0

    iget-object p0, p0, Lz1/w;->p:[[Lw1/q;

    return-object p0
.end method

.method public static synthetic b(Lz1/w;)I
    .locals 0

    iget p0, p0, Lz1/w;->b:I

    return p0
.end method

.method public static synthetic c(Lz1/w;)I
    .locals 2

    iget v0, p0, Lz1/w;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz1/w;->b:I

    return v0
.end method

.method public static synthetic d(Lz1/w;)Lz1/v;
    .locals 0

    iget-object p0, p0, Lz1/w;->a:Lz1/v;

    return-object p0
.end method

.method public static synthetic e([Lw1/q;)[Lw1/q;
    .locals 0

    invoke-static {p0}, Lz1/w;->l([Lw1/q;)[Lw1/q;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lz1/w;Lw1/q;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/w;->q(Lw1/q;)V

    return-void
.end method

.method public static synthetic g(Lz1/w;I)Lw1/k;
    .locals 0

    invoke-virtual {p0, p1}, Lz1/w;->n(I)Lw1/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lz1/w;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lz1/w;)I
    .locals 0

    iget p0, p0, Lz1/w;->k:I

    return p0
.end method

.method public static synthetic j(Lz1/w;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lz1/w;->o(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lz1/w;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lz1/w;->p(I)Z

    move-result p0

    return p0
.end method

.method public static l([Lw1/q;)[Lw1/q;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lw1/q;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final n(I)Lw1/k;
    .locals 1

    iget-object v0, p0, Lz1/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lz1/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/k;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final o(I)Z
    .locals 1

    iget v0, p0, Lz1/w;->k:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(I)Z
    .locals 1

    iget v0, p0, Lz1/w;->d:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(Lw1/q;)V
    .locals 3

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p1}, Lw1/q;->z()Lw1/k;

    move-result-object p1

    iget-object v1, p0, Lz1/w;->q:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v1, p0, Lz1/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lz1/w;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz1/w;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lz1/w;->a:Lz1/v;

    new-instance v1, Lz1/w$a;

    invoke-direct {v1, p0}, Lz1/w$a;-><init>(Lz1/w;)V

    invoke-virtual {v0, v1}, Lz1/v;->k(Lz1/s$b;)V

    iget-object v0, p0, Lz1/w;->a:Lz1/v;

    iget v1, p0, Lz1/w;->b:I

    invoke-virtual {v0, v1}, Lz1/v;->M(I)V

    iget-object v0, p0, Lz1/w;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->G()V

    return-void
.end method
