.class public final Lr4/lu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ku2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hu2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fu2;",
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
            "Lr4/hu2;",
            ">;",
            "Lr4/is3<",
            "Lr4/fu2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lu2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/lu2;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/hu2;

    invoke-direct {v0}, Lr4/hu2;-><init>()V

    iget-object v1, p0, Lr4/lu2;->b:Lr4/is3;

    check-cast v1, Lr4/gu2;

    invoke-virtual {v1}, Lr4/gu2;->b()Lr4/fu2;

    move-result-object v1

    new-instance v2, Lr4/ku2;

    invoke-direct {v2, v0, v1}, Lr4/ku2;-><init>(Lr4/hu2;Lr4/fu2;)V

    return-object v2
.end method
