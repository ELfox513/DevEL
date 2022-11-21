.class public final Lr4/x51;
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
        "Lr4/y81;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i51;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l61;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/i51;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i51;",
            "Lr4/is3<",
            "Lr4/l61;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x51;->a:Lr4/i51;

    iput-object p2, p0, Lr4/x51;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/x51;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/l61;

    new-instance v1, Lr4/ve1;

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-direct {v1, v0, v2}, Lr4/ve1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
