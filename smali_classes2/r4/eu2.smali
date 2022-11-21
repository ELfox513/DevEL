.class public final Lr4/eu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/du2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/tt2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hu2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fu2;",
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
            "Lr4/tt2;",
            ">;",
            "Lr4/is3<",
            "Lr4/hu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/fu2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/eu2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/eu2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/eu2;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/eu2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/tt2;

    new-instance v1, Lr4/hu2;

    invoke-direct {v1}, Lr4/hu2;-><init>()V

    iget-object v2, p0, Lr4/eu2;->c:Lr4/is3;

    check-cast v2, Lr4/gu2;

    invoke-virtual {v2}, Lr4/gu2;->b()Lr4/fu2;

    move-result-object v2

    new-instance v3, Lr4/du2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lr4/du2;-><init>(Lr4/tt2;Lr4/hu2;Lr4/fu2;[B)V

    return-object v3
.end method
