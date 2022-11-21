.class public final Lr4/qk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/pk1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/rp1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fo1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/zz0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mj1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/rp1;",
            ">;",
            "Lr4/is3<",
            "Lr4/fo1;",
            ">;",
            "Lr4/is3<",
            "Lr4/zz0;",
            ">;",
            "Lr4/is3<",
            "Lr4/mj1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qk1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/qk1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/qk1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/qk1;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/qk1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/rp1;

    iget-object v1, p0, Lr4/qk1;->b:Lr4/is3;

    check-cast v1, Lr4/ki1;

    invoke-virtual {v1}, Lr4/ki1;->b()Lr4/fo1;

    move-result-object v1

    iget-object v2, p0, Lr4/qk1;->c:Lr4/is3;

    invoke-interface {v2}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/zz0;

    iget-object v3, p0, Lr4/qk1;->d:Lr4/is3;

    check-cast v3, Lr4/ji1;

    invoke-virtual {v3}, Lr4/ji1;->b()Lr4/mj1;

    move-result-object v3

    new-instance v4, Lr4/pk1;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/pk1;-><init>(Lr4/rp1;Lr4/fo1;Lr4/zz0;Lr4/mj1;)V

    return-object v4
.end method
