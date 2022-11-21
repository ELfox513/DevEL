.class public final Lr4/lv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/iv1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pv1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/rv1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/tu1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/cv1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/pv1;",
            ">;",
            "Lr4/is3<",
            "Lr4/rv1;",
            ">;",
            "Lr4/is3<",
            "Lr4/tu1;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lr4/cv1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lv1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/lv1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/lv1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/lv1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/lv1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/lv1;->f:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lr4/lv1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/pv1;

    iget-object v0, p0, Lr4/lv1;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr4/rv1;

    iget-object v0, p0, Lr4/lv1;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/tu1;

    iget-object v0, p0, Lr4/lv1;->d:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lr4/lv1;->e:Lr4/is3;

    check-cast v0, Lr4/pu0;

    invoke-virtual {v0}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v6

    iget-object v0, p0, Lr4/lv1;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr4/cv1;

    new-instance v0, Lr4/iv1;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lr4/iv1;-><init>(Lr4/pv1;Lr4/rv1;Lr4/tu1;Landroid/content/Context;Lr4/im0;Lr4/cv1;)V

    return-object v0
.end method
