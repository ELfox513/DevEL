.class public final Lr4/yd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/dg2<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/mo2;


# direct methods
.method public constructor <init>(Lr4/mo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yd2;->a:Lr4/mo2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lr4/yd2;->a:Lr4/mo2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/mo2;->b()Z

    move-result v0

    const-string v1, "render_in_browser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lr4/yd2;->a:Lr4/mo2;

    invoke-virtual {v0}, Lr4/mo2;->c()Z

    move-result v0

    const-string v1, "disable_ml"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
