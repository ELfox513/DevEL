.class public final Lo2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lo2/t;",
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
            "Lp2/c;",
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
            "Lq2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lo2/v;",
            ">;",
            "Lr7/a<",
            "Lq2/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/u;->a:Lr7/a;

    iput-object p2, p0, Lo2/u;->b:Lr7/a;

    iput-object p3, p0, Lo2/u;->c:Lr7/a;

    iput-object p4, p0, Lo2/u;->d:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lo2/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lo2/v;",
            ">;",
            "Lr7/a<",
            "Lq2/b;",
            ">;)",
            "Lo2/u;"
        }
    .end annotation

    new-instance v0, Lo2/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lo2/u;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lp2/c;Lo2/v;Lq2/b;)Lo2/t;
    .locals 1

    new-instance v0, Lo2/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lo2/t;-><init>(Ljava/util/concurrent/Executor;Lp2/c;Lo2/v;Lq2/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Lo2/t;
    .locals 4

    iget-object v0, p0, Lo2/u;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo2/u;->b:Lr7/a;

    invoke-interface {v1}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/c;

    iget-object v2, p0, Lo2/u;->c:Lr7/a;

    invoke-interface {v2}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/v;

    iget-object v3, p0, Lo2/u;->d:Lr7/a;

    invoke-interface {v3}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2/b;

    invoke-static {v0, v1, v2, v3}, Lo2/u;->c(Ljava/util/concurrent/Executor;Lp2/c;Lo2/v;Lq2/b;)Lo2/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/u;->b()Lo2/t;

    move-result-object v0

    return-object v0
.end method
