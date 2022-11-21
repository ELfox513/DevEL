.class public final Lr4/dx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/cx1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ea1;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ia1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Lr4/ea1;",
            ">;",
            "Lr4/is3<",
            "Lr4/ia1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dx1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/dx1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/dx1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/dx1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/dx1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/dx1;->f:Lr4/is3;

    iput-object p7, p0, Lr4/dx1;->g:Lr4/is3;

    iput-object p8, p0, Lr4/dx1;->h:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/dx1;->b()Lr4/cx1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/cx1;
    .locals 10

    iget-object v0, p0, Lr4/dx1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/bu0;

    iget-object v0, p0, Lr4/dx1;->b:Lr4/is3;

    check-cast v0, Lr4/mq2;

    invoke-virtual {v0}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lr4/dx1;->c:Lr4/is3;

    check-cast v0, Lr4/pu0;

    invoke-virtual {v0}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v4

    iget-object v0, p0, Lr4/dx1;->d:Lr4/is3;

    check-cast v0, Lr4/z61;

    invoke-virtual {v0}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v5

    sget-object v6, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v6}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/dx1;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lr4/dx1;->g:Lr4/is3;

    check-cast v0, Lr4/fa1;

    invoke-virtual {v0}, Lr4/fa1;->b()Lr4/ea1;

    move-result-object v8

    iget-object v0, p0, Lr4/dx1;->h:Lr4/is3;

    check-cast v0, Lr4/ka1;

    invoke-virtual {v0}, Lr4/ka1;->b()Lr4/ia1;

    move-result-object v9

    new-instance v0, Lr4/cx1;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lr4/cx1;-><init>(Lr4/bu0;Landroid/content/Context;Lr4/im0;Lr4/hp2;Ljava/util/concurrent/Executor;Ljava/lang/String;Lr4/ea1;Lr4/ia1;)V

    return-object v0
.end method
