.class public final Lr4/el1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/dl1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/qb0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/rb0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ub0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/b81;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h71;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/af1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
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
            "Lr4/qb0;",
            ">;",
            "Lr4/is3<",
            "Lr4/rb0;",
            ">;",
            "Lr4/is3<",
            "Lr4/ub0;",
            ">;",
            "Lr4/is3<",
            "Lr4/b81;",
            ">;",
            "Lr4/is3<",
            "Lr4/h71;",
            ">;",
            "Lr4/is3<",
            "Lr4/af1;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/el1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/el1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/el1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/el1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/el1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/el1;->f:Lr4/is3;

    iput-object p7, p0, Lr4/el1;->g:Lr4/is3;

    iput-object p8, p0, Lr4/el1;->h:Lr4/is3;

    iput-object p9, p0, Lr4/el1;->i:Lr4/is3;

    iput-object p10, p0, Lr4/el1;->j:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lr4/el1;->a:Lr4/is3;

    check-cast v0, Lr4/hl1;

    invoke-virtual {v0}, Lr4/hl1;->b()Lr4/qb0;

    move-result-object v2

    iget-object v0, p0, Lr4/el1;->b:Lr4/is3;

    check-cast v0, Lr4/il1;

    invoke-virtual {v0}, Lr4/il1;->b()Lr4/rb0;

    move-result-object v3

    iget-object v0, p0, Lr4/el1;->c:Lr4/is3;

    check-cast v0, Lr4/ll1;

    invoke-virtual {v0}, Lr4/ll1;->b()Lr4/ub0;

    move-result-object v4

    iget-object v0, p0, Lr4/el1;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/b81;

    iget-object v0, p0, Lr4/el1;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/h71;

    iget-object v0, p0, Lr4/el1;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr4/af1;

    iget-object v0, p0, Lr4/el1;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    iget-object v0, p0, Lr4/el1;->h:Lr4/is3;

    check-cast v0, Lr4/y31;

    invoke-virtual {v0}, Lr4/y31;->b()Lr4/no2;

    move-result-object v9

    iget-object v0, p0, Lr4/el1;->i:Lr4/is3;

    check-cast v0, Lr4/pu0;

    invoke-virtual {v0}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v10

    iget-object v0, p0, Lr4/el1;->j:Lr4/is3;

    check-cast v0, Lr4/z61;

    invoke-virtual {v0}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v11

    new-instance v0, Lr4/dl1;

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lr4/dl1;-><init>(Lr4/qb0;Lr4/rb0;Lr4/ub0;Lr4/b81;Lr4/h71;Lr4/af1;Landroid/content/Context;Lr4/no2;Lr4/im0;Lr4/hp2;[B)V

    return-object v0
.end method
