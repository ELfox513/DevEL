.class public final Lr4/pq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ip;",
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
            "Ljava/lang/String;",
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
            "Lr4/qp;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lr4/qp;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pq1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/pq1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/pq1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/pq1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/pq1;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/pq1;->a:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lr4/pq1;->b:Lr4/is3;

    check-cast v1, Lr4/lw1;

    invoke-virtual {v1}, Lr4/lw1;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lr4/pq1;->c:Lr4/is3;

    check-cast v2, Lr4/pu0;

    invoke-virtual {v2}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v2

    iget-object v3, p0, Lr4/pq1;->d:Lr4/is3;

    invoke-interface {v3}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/qp;

    iget-object v4, p0, Lr4/pq1;->e:Lr4/is3;

    invoke-interface {v4}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lr4/ip;

    new-instance v6, Lr4/mp;

    invoke-direct {v6, v0}, Lr4/mp;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lr4/ip;-><init>(Lr4/mp;)V

    invoke-static {}, Lr4/js;->C()Lr4/is;

    move-result-object v0

    iget v6, v2, Lr4/im0;->b:I

    invoke-virtual {v0, v6}, Lr4/is;->v(I)Lr4/is;

    iget v6, v2, Lr4/im0;->d:I

    invoke-virtual {v0, v6}, Lr4/is;->x(I)Lr4/is;

    iget-boolean v2, v2, Lr4/im0;->k:Z

    const/4 v6, 0x1

    if-eq v6, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lr4/is;->z(I)Lr4/is;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v0

    check-cast v0, Lr4/js;

    new-instance v2, Lr4/oq1;

    invoke-direct {v2, v3, v1, v0, v4}, Lr4/oq1;-><init>(Lr4/qp;Ljava/lang/String;Lr4/js;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lr4/ip;->b(Lr4/hp;)V

    return-object v5
.end method
