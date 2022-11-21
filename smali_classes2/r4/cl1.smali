.class public final Lr4/cl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/bl1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ej1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/jj1;",
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
            "Lr4/ej1;",
            ">;",
            "Lr4/is3<",
            "Lr4/jj1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cl1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/cl1;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/cl1;->a:Lr4/is3;

    check-cast v0, Lr4/xj1;

    invoke-virtual {v0}, Lr4/xj1;->b()Lr4/ej1;

    move-result-object v0

    iget-object v1, p0, Lr4/cl1;->b:Lr4/is3;

    check-cast v1, Lr4/ii1;

    invoke-virtual {v1}, Lr4/ii1;->b()Lr4/jj1;

    move-result-object v1

    new-instance v2, Lr4/bl1;

    invoke-direct {v2, v0, v1}, Lr4/bl1;-><init>(Lr4/ej1;Lr4/jj1;)V

    return-object v2
.end method
