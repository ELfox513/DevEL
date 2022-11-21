.class public final Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Ln2/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lj2/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/v;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lp2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lq2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr7/a<",
            "Lj2/e;",
            ">;",
            "Lr7/a<",
            "Lo2/v;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lq2/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/d;->a:Lr7/a;

    iput-object p2, p0, Ln2/d;->b:Lr7/a;

    iput-object p3, p0, Ln2/d;->c:Lr7/a;

    iput-object p4, p0, Ln2/d;->d:Lr7/a;

    iput-object p5, p0, Ln2/d;->e:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Ln2/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr7/a<",
            "Lj2/e;",
            ">;",
            "Lr7/a<",
            "Lo2/v;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lq2/b;",
            ">;)",
            "Ln2/d;"
        }
    .end annotation

    new-instance v6, Ln2/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln2/d;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lj2/e;Lo2/v;Lp2/c;Lq2/b;)Ln2/c;
    .locals 7

    new-instance v6, Ln2/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln2/c;-><init>(Ljava/util/concurrent/Executor;Lj2/e;Lo2/v;Lp2/c;Lq2/b;)V

    return-object v6
.end method


# virtual methods
.method public b()Ln2/c;
    .locals 5

    iget-object v0, p0, Ln2/d;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ln2/d;->b:Lr7/a;

    invoke-interface {v1}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj2/e;

    iget-object v2, p0, Ln2/d;->c:Lr7/a;

    invoke-interface {v2}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/v;

    iget-object v3, p0, Ln2/d;->d:Lr7/a;

    invoke-interface {v3}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/c;

    iget-object v4, p0, Ln2/d;->e:Lr7/a;

    invoke-interface {v4}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq2/b;

    invoke-static {v0, v1, v2, v3, v4}, Ln2/d;->c(Ljava/util/concurrent/Executor;Lj2/e;Lo2/v;Lp2/c;Lq2/b;)Ln2/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln2/d;->b()Ln2/c;

    move-result-object v0

    return-object v0
.end method
