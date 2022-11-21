.class public final Ly4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/u;


# instance fields
.field public final a:Ly4/k;

.field public final b:Ly4/j;

.field public final c:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ly4/n1;

.field public final g:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ly4/k;Ly4/e0;Ly4/g;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ly4/j;->b:Ly4/j;

    iput-object p1, p0, Ly4/j;->a:Ly4/k;

    invoke-static {p1}, Ly4/k;->e(Ly4/k;)Ly4/n1;

    move-result-object p3

    new-instance v0, Ly4/l0;

    invoke-direct {v0, p3}, Ly4/l0;-><init>(Ly4/n1;)V

    invoke-static {v0}, Ly4/j1;->b(Ly4/n1;)Ly4/n1;

    move-result-object p3

    iput-object p3, p0, Ly4/j;->c:Ly4/n1;

    invoke-static {p2}, Ly4/l1;->b(Ljava/lang/Object;)Ly4/k1;

    move-result-object p2

    iput-object p2, p0, Ly4/j;->d:Ly4/n1;

    new-instance v0, Ly4/i1;

    invoke-direct {v0}, Ly4/i1;-><init>()V

    iput-object v0, p0, Ly4/j;->e:Ly4/n1;

    invoke-static {p1}, Ly4/k;->e(Ly4/k;)Ly4/n1;

    move-result-object v2

    invoke-static {}, Ly4/p;->a()Ly4/q;

    move-result-object v4

    invoke-static {}, Ly4/r;->a()Ly4/s;

    move-result-object v5

    invoke-static {p1}, Ly4/k;->f(Ly4/k;)Ly4/n1;

    move-result-object v6

    invoke-static {p1}, Ly4/k;->g(Ly4/k;)Ly4/n1;

    move-result-object v7

    invoke-static {p1}, Ly4/k;->h(Ly4/k;)Ly4/n1;

    move-result-object v9

    new-instance v10, Ly4/p0;

    move-object v1, v10

    move-object v3, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Ly4/p0;-><init>(Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;)V

    iput-object v10, p0, Ly4/j;->f:Ly4/n1;

    invoke-static {}, Ly4/p;->a()Ly4/q;

    move-result-object v1

    new-instance v7, Ly4/j0;

    invoke-direct {v7, p3, v1, v10}, Ly4/j0;-><init>(Ly4/n1;Ly4/n1;Ly4/n1;)V

    iput-object v7, p0, Ly4/j;->g:Ly4/n1;

    invoke-static {p1}, Ly4/k;->e(Ly4/k;)Ly4/n1;

    move-result-object v2

    invoke-static {p1}, Ly4/k;->i(Ly4/k;)Ly4/n1;

    move-result-object v3

    invoke-static {p1}, Ly4/k;->h(Ly4/k;)Ly4/n1;

    move-result-object v5

    new-instance p1, Ly4/a0;

    move-object v1, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Ly4/a0;-><init>(Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;)V

    invoke-static {p1}, Ly4/j1;->b(Ly4/n1;)Ly4/n1;

    move-result-object p1

    invoke-static {v0, p1}, Ly4/i1;->b(Ly4/n1;Ly4/n1;)V

    return-void
.end method


# virtual methods
.method public final zza()Ly4/z;
    .locals 1

    iget-object v0, p0, Ly4/j;->e:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/z;

    return-object v0
.end method
