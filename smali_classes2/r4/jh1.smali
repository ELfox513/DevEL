.class public final Lr4/jh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ih1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pj0;",
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
            "Lr4/ik0;",
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
            "Lr4/qp;",
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
            "Lr4/pj0;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/ik0;",
            ">;",
            "Lr4/is3<",
            "Landroid/view/View;",
            ">;",
            "Lr4/is3<",
            "Lr4/qp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jh1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/jh1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/jh1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/jh1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/jh1;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/jh1;->a:Lr4/is3;

    check-cast v0, Lr4/kg1;

    invoke-virtual {v0}, Lr4/kg1;->b()Lr4/pj0;

    move-result-object v2

    iget-object v0, p0, Lr4/jh1;->b:Lr4/is3;

    check-cast v0, Lr4/mq2;

    invoke-virtual {v0}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lr4/jh1;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/ik0;

    iget-object v0, p0, Lr4/jh1;->d:Lr4/is3;

    check-cast v0, Lr4/dg1;

    invoke-virtual {v0}, Lr4/dg1;->b()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lr4/jh1;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/qp;

    new-instance v0, Lr4/ih1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/ih1;-><init>(Lr4/pj0;Landroid/content/Context;Lr4/ik0;Landroid/view/View;Lr4/qp;)V

    return-object v0
.end method
