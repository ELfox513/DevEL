.class public final Lr4/g21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/q12<",
        "Lr4/h11;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l32;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/s22;",
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
            "Lr4/hp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/l32;",
            ">;",
            "Lr4/is3<",
            "Lr4/s22;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g21;->a:Lr4/is3;

    iput-object p2, p0, Lr4/g21;->b:Lr4/is3;

    iput-object p3, p0, Lr4/g21;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/g21;->a:Lr4/is3;

    check-cast v0, Lr4/z61;

    invoke-virtual {v0}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v0

    iget-object v1, p0, Lr4/g21;->b:Lr4/is3;

    check-cast v1, Lr4/m32;

    invoke-virtual {v1}, Lr4/m32;->b()Lr4/l32;

    move-result-object v1

    iget-object v2, p0, Lr4/g21;->c:Lr4/is3;

    check-cast v2, Lr4/t22;

    invoke-virtual {v2}, Lr4/t22;->b()Lr4/s22;

    move-result-object v2

    invoke-virtual {v0}, Lr4/hp2;->a()Lr4/d40;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v1
.end method
