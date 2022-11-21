.class public final Li2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Li2/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Ln2/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/t;",
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
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Ln2/e;",
            ">;",
            "Lr7/a<",
            "Lo2/p;",
            ">;",
            "Lr7/a<",
            "Lo2/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/t;->a:Lr7/a;

    iput-object p2, p0, Li2/t;->b:Lr7/a;

    iput-object p3, p0, Li2/t;->c:Lr7/a;

    iput-object p4, p0, Li2/t;->d:Lr7/a;

    iput-object p5, p0, Li2/t;->e:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Li2/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Ln2/e;",
            ">;",
            "Lr7/a<",
            "Lo2/p;",
            ">;",
            "Lr7/a<",
            "Lo2/t;",
            ">;)",
            "Li2/t;"
        }
    .end annotation

    new-instance v6, Li2/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Li2/t;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v6
.end method

.method public static c(Lr2/a;Lr2/a;Ln2/e;Lo2/p;Lo2/t;)Li2/r;
    .locals 7

    new-instance v6, Li2/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Li2/r;-><init>(Lr2/a;Lr2/a;Ln2/e;Lo2/p;Lo2/t;)V

    return-object v6
.end method


# virtual methods
.method public b()Li2/r;
    .locals 5

    iget-object v0, p0, Li2/t;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    iget-object v1, p0, Li2/t;->b:Lr7/a;

    invoke-interface {v1}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/a;

    iget-object v2, p0, Li2/t;->c:Lr7/a;

    invoke-interface {v2}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln2/e;

    iget-object v3, p0, Li2/t;->d:Lr7/a;

    invoke-interface {v3}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/p;

    iget-object v4, p0, Li2/t;->e:Lr7/a;

    invoke-interface {v4}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/t;

    invoke-static {v0, v1, v2, v3, v4}, Li2/t;->c(Lr2/a;Lr2/a;Ln2/e;Lo2/p;Lo2/t;)Li2/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li2/t;->b()Li2/r;

    move-result-object v0

    return-object v0
.end method
