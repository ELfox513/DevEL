.class public final Lr4/ts1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/qs1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hm0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fu2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hu2;",
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Lr4/hm0;",
            ">;",
            "Lr4/is3<",
            "Lr4/fu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/hu2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ts1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/ts1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/ts1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/ts1;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr4/ts1;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/hm0;

    iget-object v2, p0, Lr4/ts1;->c:Lr4/is3;

    check-cast v2, Lr4/gu2;

    invoke-virtual {v2}, Lr4/gu2;->b()Lr4/fu2;

    move-result-object v2

    new-instance v3, Lr4/hu2;

    invoke-direct {v3}, Lr4/hu2;-><init>()V

    new-instance v4, Lr4/qs1;

    invoke-direct {v4, v0, v1, v2, v3}, Lr4/qs1;-><init>(Ljava/util/concurrent/Executor;Lr4/hm0;Lr4/fu2;Lr4/hu2;)V

    return-object v4
.end method
