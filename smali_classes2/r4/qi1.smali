.class public final Lr4/qi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/pi1;",
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


# direct methods
.method public constructor <init>(Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/ej1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qi1;->a:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/qi1;->b()Lr4/pi1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/pi1;
    .locals 2

    iget-object v0, p0, Lr4/qi1;->a:Lr4/is3;

    check-cast v0, Lr4/xj1;

    invoke-virtual {v0}, Lr4/xj1;->b()Lr4/ej1;

    move-result-object v0

    new-instance v1, Lr4/pi1;

    invoke-direct {v1, v0}, Lr4/pi1;-><init>(Lr4/ej1;)V

    return-object v1
.end method
