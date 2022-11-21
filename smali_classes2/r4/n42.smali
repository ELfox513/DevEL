.class public final Lr4/n42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/m42;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/sh1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/tl1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/lo1;",
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
            "Lr4/sh1;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Lr4/tl1;",
            ">;",
            "Lr4/is3<",
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/lo1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n42;->a:Lr4/is3;

    iput-object p2, p0, Lr4/n42;->b:Lr4/is3;

    iput-object p3, p0, Lr4/n42;->c:Lr4/is3;

    iput-object p4, p0, Lr4/n42;->d:Lr4/is3;

    iput-object p5, p0, Lr4/n42;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/n42;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/sh1;

    sget-object v3, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v3}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/n42;->c:Lr4/is3;

    check-cast v0, Lr4/ul1;

    invoke-virtual {v0}, Lr4/ul1;->b()Lr4/tl1;

    move-result-object v4

    iget-object v0, p0, Lr4/n42;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/aq2;

    iget-object v0, p0, Lr4/n42;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/lo1;

    new-instance v0, Lr4/m42;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/m42;-><init>(Lr4/sh1;Lr4/i83;Lr4/tl1;Lr4/aq2;Lr4/lo1;)V

    return-object v0
.end method
