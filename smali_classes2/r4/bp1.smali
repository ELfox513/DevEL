.class public final Lr4/bp1;
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
        "Lr4/uo1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/v62<",
            "Lr4/uo1;",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/v62<",
            "Lr4/uo1;",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;>;"
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
            "Lr4/v62<",
            "Lr4/uo1;",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/v62<",
            "Lr4/uo1;",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bp1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/bp1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/bp1;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/bp1;->a:Lr4/is3;

    iget-object v1, p0, Lr4/bp1;->b:Lr4/is3;

    iget-object v2, p0, Lr4/bp1;->c:Lr4/is3;

    check-cast v2, Lr4/z61;

    invoke-virtual {v2}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v2

    iget-object v2, v2, Lr4/hp2;->o:Lr4/xo2;

    iget v2, v2, Lr4/xo2;->a:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    check-cast v1, Lr4/w62;

    invoke-virtual {v1}, Lr4/w62;->b()Lr4/v62;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lr4/w62;

    invoke-virtual {v0}, Lr4/w62;->b()Lr4/v62;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method
