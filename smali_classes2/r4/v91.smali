.class public final Lr4/v91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/u91;",
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
            "Lr4/w91;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
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
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/w91;",
            ">;>;>;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v91;->a:Lr4/is3;

    iput-object p2, p0, Lr4/v91;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/v91;->a:Lr4/is3;

    check-cast v0, Lr4/gs3;

    invoke-virtual {v0}, Lr4/gs3;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lr4/v91;->b:Lr4/is3;

    check-cast v1, Lr4/y31;

    invoke-virtual {v1}, Lr4/y31;->b()Lr4/no2;

    move-result-object v1

    new-instance v2, Lr4/u91;

    invoke-direct {v2, v0, v1}, Lr4/u91;-><init>(Ljava/util/Set;Lr4/no2;)V

    return-object v2
.end method
