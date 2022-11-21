.class public final Lr4/rt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/qt1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/o60;",
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
            "Lr4/o60;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rt1;->a:Lr4/is3;

    return-void
.end method

.method public static c(Lr4/o60;)Lr4/qt1;
    .locals 1

    new-instance v0, Lr4/qt1;

    invoke-direct {v0, p0}, Lr4/qt1;-><init>(Lr4/o60;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/rt1;->b()Lr4/qt1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/qt1;
    .locals 2

    iget-object v0, p0, Lr4/rt1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/o60;

    new-instance v1, Lr4/qt1;

    invoke-direct {v1, v0}, Lr4/qt1;-><init>(Lr4/o60;)V

    return-object v1
.end method
