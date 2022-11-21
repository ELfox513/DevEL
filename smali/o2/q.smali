.class public final Lo2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lo2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Landroid/content/Context;",
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
            "Lp2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/v;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lq2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lr7/a<",
            "Lj2/e;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lo2/v;",
            ">;",
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr7/a<",
            "Lq2/b;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/q;->a:Lr7/a;

    iput-object p2, p0, Lo2/q;->b:Lr7/a;

    iput-object p3, p0, Lo2/q;->c:Lr7/a;

    iput-object p4, p0, Lo2/q;->d:Lr7/a;

    iput-object p5, p0, Lo2/q;->e:Lr7/a;

    iput-object p6, p0, Lo2/q;->f:Lr7/a;

    iput-object p7, p0, Lo2/q;->g:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lo2/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lr7/a<",
            "Lj2/e;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lo2/v;",
            ">;",
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr7/a<",
            "Lq2/b;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;)",
            "Lo2/q;"
        }
    .end annotation

    new-instance v8, Lo2/q;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo2/q;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v8
.end method

.method public static c(Landroid/content/Context;Lj2/e;Lp2/c;Lo2/v;Ljava/util/concurrent/Executor;Lq2/b;Lr2/a;)Lo2/p;
    .locals 9

    new-instance v8, Lo2/p;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo2/p;-><init>(Landroid/content/Context;Lj2/e;Lp2/c;Lo2/v;Ljava/util/concurrent/Executor;Lq2/b;Lr2/a;)V

    return-object v8
.end method


# virtual methods
.method public b()Lo2/p;
    .locals 8

    iget-object v0, p0, Lo2/q;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lo2/q;->b:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lj2/e;

    iget-object v0, p0, Lo2/q;->c:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lp2/c;

    iget-object v0, p0, Lo2/q;->d:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo2/v;

    iget-object v0, p0, Lo2/q;->e:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo2/q;->f:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lq2/b;

    iget-object v0, p0, Lo2/q;->g:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr2/a;

    invoke-static/range {v1 .. v7}, Lo2/q;->c(Landroid/content/Context;Lj2/e;Lp2/c;Lo2/v;Ljava/util/concurrent/Executor;Lq2/b;Lr2/a;)Lo2/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/q;->b()Lo2/p;

    move-result-object v0

    return-object v0
.end method
