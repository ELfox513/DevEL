.class public final Lr4/l11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/k11;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h31;",
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
            "Lr4/qo2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/g31;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pj1;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ef1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/d82;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
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
            "Lr4/h31;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/qo2;",
            ">;",
            "Lr4/is3<",
            "Landroid/view/View;",
            ">;",
            "Lr4/is3<",
            "Lr4/cs0;",
            ">;",
            "Lr4/is3<",
            "Lr4/g31;",
            ">;",
            "Lr4/is3<",
            "Lr4/pj1;",
            ">;",
            "Lr4/is3<",
            "Lr4/ef1;",
            ">;",
            "Lr4/is3<",
            "Lr4/d82;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l11;->a:Lr4/is3;

    iput-object p2, p0, Lr4/l11;->b:Lr4/is3;

    iput-object p3, p0, Lr4/l11;->c:Lr4/is3;

    iput-object p4, p0, Lr4/l11;->d:Lr4/is3;

    iput-object p5, p0, Lr4/l11;->e:Lr4/is3;

    iput-object p6, p0, Lr4/l11;->f:Lr4/is3;

    iput-object p7, p0, Lr4/l11;->g:Lr4/is3;

    iput-object p8, p0, Lr4/l11;->h:Lr4/is3;

    iput-object p9, p0, Lr4/l11;->i:Lr4/is3;

    iput-object p10, p0, Lr4/l11;->j:Lr4/is3;

    return-void
.end method

.method public static c(Lr4/h31;Landroid/content/Context;Lr4/qo2;Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/pj1;Lr4/ef1;Lr4/or3;Ljava/util/concurrent/Executor;)Lr4/k11;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h31;",
            "Landroid/content/Context;",
            "Lr4/qo2;",
            "Landroid/view/View;",
            "Lr4/cs0;",
            "Lr4/g31;",
            "Lr4/pj1;",
            "Lr4/ef1;",
            "Lr4/or3<",
            "Lr4/d82;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/k11;"
        }
    .end annotation

    new-instance v11, Lr4/k11;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lr4/k11;-><init>(Lr4/h31;Landroid/content/Context;Lr4/qo2;Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/pj1;Lr4/ef1;Lr4/or3;Ljava/util/concurrent/Executor;)V

    return-object v11
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/l11;->b()Lr4/k11;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/k11;
    .locals 12

    iget-object v0, p0, Lr4/l11;->a:Lr4/is3;

    check-cast v0, Lr4/f51;

    invoke-virtual {v0}, Lr4/f51;->b()Lr4/h31;

    move-result-object v2

    iget-object v0, p0, Lr4/l11;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Lr4/l11;->c:Lr4/is3;

    check-cast v0, Lr4/r11;

    invoke-virtual {v0}, Lr4/r11;->b()Lr4/qo2;

    move-result-object v4

    iget-object v0, p0, Lr4/l11;->d:Lr4/is3;

    check-cast v0, Lr4/q11;

    invoke-virtual {v0}, Lr4/q11;->b()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lr4/l11;->e:Lr4/is3;

    check-cast v0, Lr4/d21;

    invoke-virtual {v0}, Lr4/d21;->b()Lr4/cs0;

    move-result-object v6

    iget-object v0, p0, Lr4/l11;->f:Lr4/is3;

    check-cast v0, Lr4/s11;

    invoke-virtual {v0}, Lr4/s11;->b()Lr4/g31;

    move-result-object v7

    iget-object v0, p0, Lr4/l11;->g:Lr4/is3;

    check-cast v0, Lr4/ph1;

    invoke-virtual {v0}, Lr4/ph1;->b()Lr4/pj1;

    move-result-object v8

    iget-object v0, p0, Lr4/l11;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lr4/ef1;

    iget-object v0, p0, Lr4/l11;->i:Lr4/is3;

    invoke-static {v0}, Lr4/tr3;->c(Lr4/is3;)Lr4/or3;

    move-result-object v10

    iget-object v0, p0, Lr4/l11;->j:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/concurrent/Executor;

    new-instance v0, Lr4/k11;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lr4/k11;-><init>(Lr4/h31;Landroid/content/Context;Lr4/qo2;Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/pj1;Lr4/ef1;Lr4/or3;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
