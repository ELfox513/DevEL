.class public final Lr4/wx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/vx1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/is3<",
            "Lr4/xx1;",
            ">;>;>;"
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
            "Lr4/ea1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/is3<",
            "Lr4/xx1;",
            ">;>;>;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Lr4/ea1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wx1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/wx1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/wx1;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/wx1;->b()Lr4/vx1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/vx1;
    .locals 4

    iget-object v0, p0, Lr4/wx1;->a:Lr4/is3;

    check-cast v0, Lr4/cs3;

    invoke-virtual {v0}, Lr4/cs3;->d()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v1}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr4/wx1;->c:Lr4/is3;

    check-cast v2, Lr4/fa1;

    invoke-virtual {v2}, Lr4/fa1;->b()Lr4/ea1;

    move-result-object v2

    new-instance v3, Lr4/vx1;

    invoke-direct {v3, v0, v1, v2}, Lr4/vx1;-><init>(Ljava/util/Map;Lr4/i83;Lr4/ea1;)V

    return-object v3
.end method
