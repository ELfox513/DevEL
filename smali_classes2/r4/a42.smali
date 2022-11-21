.class public final Lr4/a42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/z32;",
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
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/vg1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
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
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lr4/vg1;",
            ">;",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/a42;->a:Lr4/is3;

    iput-object p2, p0, Lr4/a42;->b:Lr4/is3;

    iput-object p3, p0, Lr4/a42;->c:Lr4/is3;

    iput-object p4, p0, Lr4/a42;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/a42;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lr4/a42;->b:Lr4/is3;

    check-cast v1, Lr4/pu0;

    invoke-virtual {v1}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v1

    iget-object v2, p0, Lr4/a42;->c:Lr4/is3;

    invoke-interface {v2}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/vg1;

    sget-object v3, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v3}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lr4/z32;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/z32;-><init>(Landroid/content/Context;Lr4/im0;Lr4/vg1;Ljava/util/concurrent/Executor;)V

    return-object v4
.end method
