.class public final Lr4/c02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/b02;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/xz1;",
            ">;"
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


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/xz1;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c02;->a:Lr4/is3;

    iput-object p2, p0, Lr4/c02;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/c02;->b()Lr4/b02;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/b02;
    .locals 3

    iget-object v0, p0, Lr4/c02;->a:Lr4/is3;

    check-cast v0, Lr4/yz1;

    invoke-virtual {v0}, Lr4/yz1;->b()Lr4/xz1;

    move-result-object v0

    iget-object v1, p0, Lr4/c02;->b:Lr4/is3;

    invoke-interface {v1}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/i83;

    new-instance v2, Lr4/b02;

    invoke-direct {v2, v0, v1}, Lr4/b02;-><init>(Lr4/xz1;Lr4/i83;)V

    return-object v2
.end method
