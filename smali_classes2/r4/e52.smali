.class public final Lr4/e52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/d52;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/s61;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bd1;",
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
            "Lr4/bu0;",
            ">;",
            "Lr4/is3<",
            "Lr4/s61;",
            ">;",
            "Lr4/is3<",
            "Lr4/bd1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/e52;->a:Lr4/is3;

    iput-object p2, p0, Lr4/e52;->b:Lr4/is3;

    iput-object p3, p0, Lr4/e52;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/e52;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/bu0;

    iget-object v1, p0, Lr4/e52;->b:Lr4/is3;

    check-cast v1, Lr4/a71;

    invoke-virtual {v1}, Lr4/a71;->b()Lr4/s61;

    move-result-object v1

    iget-object v2, p0, Lr4/e52;->c:Lr4/is3;

    check-cast v2, Lr4/vd1;

    invoke-virtual {v2}, Lr4/vd1;->b()Lr4/bd1;

    move-result-object v2

    new-instance v3, Lr4/d52;

    invoke-direct {v3, v0, v1, v2}, Lr4/d52;-><init>(Lr4/bu0;Lr4/s61;Lr4/bd1;)V

    return-object v3
.end method
