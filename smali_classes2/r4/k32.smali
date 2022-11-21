.class public final Lr4/k32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/l32;


# direct methods
.method public constructor <init>(Lr4/l32;)V
    .locals 0

    iput-object p1, p0, Lr4/k32;->a:Lr4/l32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lr4/k32;->a:Lr4/l32;

    invoke-static {v0}, Lr4/l32;->c(Lr4/l32;)Lr4/f21;

    move-result-object v0

    invoke-virtual {v0}, Lr4/f21;->b()Lr4/m41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/m41;->h(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v0

    iget-object v1, p0, Lr4/k32;->a:Lr4/l32;

    invoke-static {v1}, Lr4/l32;->d(Lr4/l32;)Lr4/l71;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/l71;->B(Lr4/lt;)V

    iget v0, v0, Lr4/lt;->a:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lr4/yp2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr4/h11;

    invoke-virtual {p1}, Lr4/i31;->a()V

    return-void
.end method
