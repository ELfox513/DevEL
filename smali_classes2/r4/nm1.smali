.class public final Lr4/nm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/mm1;",
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
            "Lr4/hm1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lr4/is3<",
            "Lr4/hm1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/nm1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/nm1;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/nm1;->b()Lr4/mm1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/mm1;
    .locals 3

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr4/nm1;->b:Lr4/is3;

    check-cast v1, Lr4/im1;

    invoke-virtual {v1}, Lr4/im1;->b()Lr4/hm1;

    move-result-object v1

    new-instance v2, Lr4/mm1;

    invoke-direct {v2, v0, v1}, Lr4/mm1;-><init>(Ljava/util/concurrent/Executor;Lr4/hm1;)V

    return-object v2
.end method
