.class public Lz1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/v;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/k;->a:Lz1/v;

    return-void
.end method

.method public static synthetic a(Lz1/k;Lz1/l;)I
    .locals 0

    invoke-virtual {p0, p1}, Lz1/k;->c(Lz1/l;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lz1/k;)Lz1/v;
    .locals 0

    iget-object p0, p0, Lz1/k;->a:Lz1/v;

    return-object p0
.end method

.method public static d(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/k;

    invoke-direct {v0, p0}, Lz1/k;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/k;->e()V

    return-void
.end method


# virtual methods
.method public final c(Lz1/l;)I
    .locals 0

    invoke-virtual {p1}, Lz1/l;->o()Lw1/h;

    move-result-object p1

    check-cast p1, Lw1/d;

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/p;

    invoke-virtual {p1}, Lx1/p;->B()I

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lz1/k;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->t()I

    move-result v0

    new-array v0, v0, [Lw1/q;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lz1/k;->a:Lz1/v;

    new-instance v3, Lz1/k$a;

    invoke-direct {v3, p0, v0, v1}, Lz1/k$a;-><init>(Lz1/k;[Lw1/q;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lz1/v;->l(Lz1/u$a;)V

    iget-object v0, p0, Lz1/k;->a:Lz1/v;

    invoke-virtual {v0, v1}, Lz1/v;->i(Ljava/util/Set;)V

    return-void
.end method
