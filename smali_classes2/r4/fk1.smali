.class public final Lr4/fk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ek1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lb3/y1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/jj1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ej1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pk1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/yk1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bj1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lb3/y1;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/jj1;",
            ">;",
            "Lr4/is3<",
            "Lr4/ej1;",
            ">;",
            "Lr4/is3<",
            "Lr4/pk1;",
            ">;",
            "Lr4/is3<",
            "Lr4/yk1;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Lr4/bj1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fk1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/fk1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/fk1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/fk1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/fk1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/fk1;->f:Lr4/is3;

    iput-object p7, p0, Lr4/fk1;->g:Lr4/is3;

    iput-object p8, p0, Lr4/fk1;->h:Lr4/is3;

    iput-object p9, p0, Lr4/fk1;->i:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/fk1;->b()Lr4/ek1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/ek1;
    .locals 11

    iget-object v0, p0, Lr4/fk1;->a:Lr4/is3;

    check-cast v0, Lr4/lq2;

    invoke-virtual {v0}, Lr4/lq2;->b()Lb3/y1;

    move-result-object v2

    iget-object v0, p0, Lr4/fk1;->b:Lr4/is3;

    check-cast v0, Lr4/z61;

    invoke-virtual {v0}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v3

    iget-object v0, p0, Lr4/fk1;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/jj1;

    iget-object v0, p0, Lr4/fk1;->d:Lr4/is3;

    check-cast v0, Lr4/xj1;

    invoke-virtual {v0}, Lr4/xj1;->b()Lr4/ej1;

    move-result-object v5

    iget-object v0, p0, Lr4/fk1;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/pk1;

    iget-object v0, p0, Lr4/fk1;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr4/yk1;

    iget-object v0, p0, Lr4/fk1;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    sget-object v9, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v9}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/fk1;->i:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lr4/bj1;

    new-instance v0, Lr4/ek1;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lr4/ek1;-><init>(Lb3/y1;Lr4/hp2;Lr4/jj1;Lr4/ej1;Lr4/pk1;Lr4/yk1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lr4/bj1;)V

    return-object v0
.end method
