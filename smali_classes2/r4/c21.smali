.class public final Lr4/c21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ve1<",
        "Lr4/dc1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o11;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/aa1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/o11;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o11;",
            "Lr4/is3<",
            "Lr4/aa1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c21;->a:Lr4/o11;

    iput-object p2, p0, Lr4/c21;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/c21;->b:Lr4/is3;

    check-cast v0, Lr4/d31;

    invoke-virtual {v0}, Lr4/d31;->b()Lr4/aa1;

    move-result-object v0

    new-instance v1, Lr4/ve1;

    new-instance v2, Lr4/n11;

    invoke-direct {v2, v0}, Lr4/n11;-><init>(Lr4/aa1;)V

    sget-object v0, Lr4/qm0;->f:Lr4/i83;

    invoke-direct {v1, v2, v0}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
