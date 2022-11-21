.class public final Lr4/dp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/qp;",
        ">;"
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


# direct methods
.method public constructor <init>(Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dp1;->a:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/dp1;->a:Lr4/is3;

    check-cast v0, Lr4/z61;

    invoke-virtual {v0}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v0

    iget-object v0, v0, Lr4/hp2;->o:Lr4/xo2;

    iget v0, v0, Lr4/xo2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lr4/qp;->x:Lr4/qp;

    goto :goto_0

    :cond_0
    sget-object v0, Lr4/qp;->t:Lr4/qp;

    :goto_0
    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
