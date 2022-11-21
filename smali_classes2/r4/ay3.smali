.class public final Lr4/ay3;
.super Lr4/d23;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lr4/e33;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr4/d23;-><init>(Ljava/lang/Throwable;Lr4/e33;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-void
.end method
