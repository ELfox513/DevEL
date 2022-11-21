.class public final Li2/d;
.super Li2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/d$b;
    }
.end annotation


# instance fields
.field public a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lr7/a;

.field public k:Lr7/a;

.field public p:Lr7/a;

.field public q:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lp2/b0;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/g;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/v;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Ln2/c;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/p;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/t;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Li2/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Li2/s;-><init>()V

    invoke-virtual {p0, p1}, Li2/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Li2/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Li2/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static e()Li2/s$a;
    .locals 2

    new-instance v0, Li2/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li2/d$b;-><init>(Li2/d$a;)V

    return-object v0
.end method


# virtual methods
.method public c()Lp2/c;
    .locals 1

    iget-object v0, p0, Li2/d;->q:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/c;

    return-object v0
.end method

.method public d()Li2/r;
    .locals 1

    iget-object v0, p0, Li2/d;->w:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li2/r;

    return-object v0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Li2/j;->a()Li2/j;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->a(Lr7/a;)Lr7/a;

    move-result-object v0

    iput-object v0, p0, Li2/d;->a:Lr7/a;

    invoke-static {p1}, Lk2/c;->a(Ljava/lang/Object;)Lk2/b;

    move-result-object p1

    iput-object p1, p0, Li2/d;->b:Lr7/a;

    invoke-static {}, Lr2/c;->a()Lr2/c;

    move-result-object v0

    invoke-static {}, Lr2/d;->a()Lr2/d;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lj2/j;->a(Lr7/a;Lr7/a;Lr7/a;)Lj2/j;

    move-result-object p1

    iput-object p1, p0, Li2/d;->d:Lr7/a;

    iget-object v0, p0, Li2/d;->b:Lr7/a;

    invoke-static {v0, p1}, Lj2/l;->a(Lr7/a;Lr7/a;)Lj2/l;

    move-result-object p1

    invoke-static {p1}, Lk2/a;->a(Lr7/a;)Lr7/a;

    move-result-object p1

    iput-object p1, p0, Li2/d;->k:Lr7/a;

    iget-object p1, p0, Li2/d;->b:Lr7/a;

    invoke-static {}, Lp2/f;->a()Lp2/f;

    move-result-object v0

    invoke-static {}, Lp2/g;->a()Lp2/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lp2/i0;->a(Lr7/a;Lr7/a;Lr7/a;)Lp2/i0;

    move-result-object p1

    iput-object p1, p0, Li2/d;->p:Lr7/a;

    invoke-static {}, Lr2/c;->a()Lr2/c;

    move-result-object p1

    invoke-static {}, Lr2/d;->a()Lr2/d;

    move-result-object v0

    invoke-static {}, Lp2/h;->a()Lp2/h;

    move-result-object v1

    iget-object v2, p0, Li2/d;->p:Lr7/a;

    invoke-static {p1, v0, v1, v2}, Lp2/c0;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lp2/c0;

    move-result-object p1

    invoke-static {p1}, Lk2/a;->a(Lr7/a;)Lr7/a;

    move-result-object p1

    iput-object p1, p0, Li2/d;->q:Lr7/a;

    invoke-static {}, Lr2/c;->a()Lr2/c;

    move-result-object p1

    invoke-static {p1}, Ln2/g;->b(Lr7/a;)Ln2/g;

    move-result-object p1

    iput-object p1, p0, Li2/d;->r:Lr7/a;

    iget-object v0, p0, Li2/d;->b:Lr7/a;

    iget-object v1, p0, Li2/d;->q:Lr7/a;

    invoke-static {}, Lr2/d;->a()Lr2/d;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Ln2/i;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Ln2/i;

    move-result-object p1

    iput-object p1, p0, Li2/d;->s:Lr7/a;

    iget-object v0, p0, Li2/d;->a:Lr7/a;

    iget-object v1, p0, Li2/d;->k:Lr7/a;

    iget-object v2, p0, Li2/d;->q:Lr7/a;

    invoke-static {v0, v1, p1, v2, v2}, Ln2/d;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Ln2/d;

    move-result-object p1

    iput-object p1, p0, Li2/d;->t:Lr7/a;

    iget-object v0, p0, Li2/d;->b:Lr7/a;

    iget-object v1, p0, Li2/d;->k:Lr7/a;

    iget-object v5, p0, Li2/d;->q:Lr7/a;

    iget-object v3, p0, Li2/d;->s:Lr7/a;

    iget-object v4, p0, Li2/d;->a:Lr7/a;

    invoke-static {}, Lr2/c;->a()Lr2/c;

    move-result-object v6

    move-object v2, v5

    invoke-static/range {v0 .. v6}, Lo2/q;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lo2/q;

    move-result-object p1

    iput-object p1, p0, Li2/d;->u:Lr7/a;

    iget-object p1, p0, Li2/d;->a:Lr7/a;

    iget-object v0, p0, Li2/d;->q:Lr7/a;

    iget-object v1, p0, Li2/d;->s:Lr7/a;

    invoke-static {p1, v0, v1, v0}, Lo2/u;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lo2/u;

    move-result-object p1

    iput-object p1, p0, Li2/d;->v:Lr7/a;

    invoke-static {}, Lr2/c;->a()Lr2/c;

    move-result-object p1

    invoke-static {}, Lr2/d;->a()Lr2/d;

    move-result-object v0

    iget-object v1, p0, Li2/d;->t:Lr7/a;

    iget-object v2, p0, Li2/d;->u:Lr7/a;

    iget-object v3, p0, Li2/d;->v:Lr7/a;

    invoke-static {p1, v0, v1, v2, v3}, Li2/t;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Li2/t;

    move-result-object p1

    invoke-static {p1}, Lk2/a;->a(Lr7/a;)Lr7/a;

    move-result-object p1

    iput-object p1, p0, Li2/d;->w:Lr7/a;

    return-void
.end method
