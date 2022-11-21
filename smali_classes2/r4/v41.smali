.class public final Lr4/v41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/gl0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lc4/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/rl0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
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
            "Lc4/f;",
            ">;",
            "Lr4/is3<",
            "Lr4/rl0;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v41;->a:Lr4/is3;

    iput-object p2, p0, Lr4/v41;->b:Lr4/is3;

    iput-object p3, p0, Lr4/v41;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/v41;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc4/f;

    iget-object v1, p0, Lr4/v41;->b:Lr4/is3;

    check-cast v1, Lr4/nq2;

    invoke-virtual {v1}, Lr4/nq2;->b()Lr4/rl0;

    move-result-object v1

    iget-object v2, p0, Lr4/v41;->c:Lr4/is3;

    check-cast v2, Lr4/z61;

    invoke-virtual {v2}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v2

    iget-object v2, v2, Lr4/hp2;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lr4/rl0;->h(Lc4/f;Ljava/lang/String;)Lr4/gl0;

    move-result-object v0

    return-object v0
.end method
