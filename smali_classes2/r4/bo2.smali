.class public final Lr4/bo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ao2;",
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
            "Lr4/bu0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/am2<",
            "Lr4/ap1;",
            "Lr4/uo1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/qn2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fp2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/cp2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
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
            "Lr4/bu0;",
            ">;",
            "Lr4/is3<",
            "Lr4/am2<",
            "Lr4/ap1;",
            "Lr4/uo1;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/qn2;",
            ">;",
            "Lr4/is3<",
            "Lr4/fp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/cp2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bo2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/bo2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/bo2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/bo2;->d:Lr4/is3;

    iput-object p5, p0, Lr4/bo2;->e:Lr4/is3;

    iput-object p6, p0, Lr4/bo2;->f:Lr4/is3;

    iput-object p7, p0, Lr4/bo2;->g:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lr4/bo2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lr4/bo2;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lr4/bo2;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/bu0;

    iget-object v0, p0, Lr4/bo2;->d:Lr4/is3;

    check-cast v0, Lr4/fm2;

    invoke-virtual {v0}, Lr4/fm2;->b()Lr4/am2;

    move-result-object v5

    iget-object v0, p0, Lr4/bo2;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/qn2;

    new-instance v7, Lr4/fp2;

    invoke-direct {v7}, Lr4/fp2;-><init>()V

    iget-object v0, p0, Lr4/bo2;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lr4/cp2;

    new-instance v0, Lr4/ao2;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lr4/ao2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/bu0;Lr4/am2;Lr4/qn2;Lr4/fp2;Lr4/cp2;)V

    return-object v0
.end method
