.class public final Lr4/wr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/vr1;",
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
            "Lr4/vp2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ls1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/c12;",
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
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/vp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/ls1;",
            ">;",
            "Lr4/is3<",
            "Lr4/bp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/c12;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wr1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/wr1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/wr1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/wr1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/wr1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/wr1;->f:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lr4/wr1;->a:Lr4/is3;

    check-cast v0, Lr4/mq2;

    invoke-virtual {v0}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lr4/wr1;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr4/vp2;

    iget-object v0, p0, Lr4/wr1;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/ls1;

    iget-object v0, p0, Lr4/wr1;->d:Lr4/is3;

    check-cast v0, Lr4/b41;

    invoke-virtual {v0}, Lr4/b41;->b()Lr4/bp2;

    move-result-object v5

    iget-object v0, p0, Lr4/wr1;->e:Lr4/is3;

    check-cast v0, Lr4/y31;

    invoke-virtual {v0}, Lr4/y31;->b()Lr4/no2;

    move-result-object v6

    iget-object v0, p0, Lr4/wr1;->f:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr4/c12;

    new-instance v0, Lr4/vr1;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lr4/vr1;-><init>(Landroid/content/Context;Lr4/vp2;Lr4/ls1;Lr4/bp2;Lr4/no2;Lr4/c12;)V

    return-object v0
.end method
