.class public final Lr4/ho1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/do1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lz2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/os0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/c12;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pu2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ls1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/xt2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Lr4/u;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lz2/a;",
            ">;",
            "Lr4/is3<",
            "Lr4/os0;",
            ">;",
            "Lr4/is3<",
            "Lr4/c12;",
            ">;",
            "Lr4/is3<",
            "Lr4/pu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/ls1;",
            ">;",
            "Lr4/is3<",
            "Lr4/xt2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ho1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/ho1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/ho1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/ho1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/ho1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/ho1;->f:Lr4/is3;

    iput-object p7, p0, Lr4/ho1;->g:Lr4/is3;

    iput-object p8, p0, Lr4/ho1;->h:Lr4/is3;

    iput-object p9, p0, Lr4/ho1;->i:Lr4/is3;

    iput-object p10, p0, Lr4/ho1;->j:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lr4/ho1;->a:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lr4/ho1;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lr4/ho1;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/u;

    iget-object v0, p0, Lr4/ho1;->d:Lr4/is3;

    check-cast v0, Lr4/pu0;

    invoke-virtual {v0}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v5

    invoke-static {}, Lr4/qw0;->a()Lz2/a;

    move-result-object v6

    new-instance v7, Lr4/os0;

    invoke-direct {v7}, Lr4/os0;-><init>()V

    iget-object v0, p0, Lr4/ho1;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lr4/c12;

    iget-object v0, p0, Lr4/ho1;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lr4/pu2;

    iget-object v0, p0, Lr4/ho1;->i:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lr4/ls1;

    iget-object v0, p0, Lr4/ho1;->j:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lr4/xt2;

    new-instance v0, Lr4/do1;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lr4/do1;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/u;Lr4/im0;Lz2/a;Lr4/os0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;)V

    return-object v0
.end method
