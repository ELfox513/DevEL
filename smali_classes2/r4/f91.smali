.class public final Lr4/f91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/e91;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/cx2;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/cx2;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f91;->a:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/f91;->a:Lr4/is3;

    check-cast v0, Lr4/gs3;

    invoke-virtual {v0}, Lr4/gs3;->c()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lr4/e91;

    invoke-direct {v1, v0}, Lr4/e91;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
