.class public final Lr4/xo;
.super Lr4/vm0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/vm0<",
        "Lr4/fp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/dp;


# direct methods
.method public constructor <init>(Lr4/dp;)V
    .locals 0

    iput-object p1, p0, Lr4/xo;->b:Lr4/dp;

    invoke-direct {p0}, Lr4/vm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lr4/xo;->b:Lr4/dp;

    invoke-static {v0}, Lr4/dp;->f(Lr4/dp;)V

    invoke-super {p0, p1}, Lr4/vm0;->cancel(Z)Z

    move-result p1

    return p1
.end method
