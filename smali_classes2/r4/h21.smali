.class public final Lr4/h21;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/z42;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/v62<",
            "Lr4/h11;",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;>;"
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
            "Ljava/lang/Boolean;",
            ">;",
            "Lr4/is3<",
            "Lr4/z42;",
            ">;",
            "Lr4/is3<",
            "Lr4/v62<",
            "Lr4/h11;",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h21;->a:Lr4/is3;

    iput-object p2, p0, Lr4/h21;->b:Lr4/is3;

    iput-object p3, p0, Lr4/h21;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/h21;->a:Lr4/is3;

    check-cast v0, Lr4/n21;

    invoke-virtual {v0}, Lr4/n21;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lr4/h21;->b:Lr4/is3;

    check-cast v1, Lr4/a52;

    invoke-virtual {v1}, Lr4/a52;->b()Lr4/z42;

    move-result-object v1

    iget-object v2, p0, Lr4/h21;->c:Lr4/is3;

    check-cast v2, Lr4/w62;

    invoke-virtual {v2}, Lr4/w62;->b()Lr4/v62;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    return-object v2

    :cond_0
    return-object v1
.end method
