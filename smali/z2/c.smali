.class public abstract Lz2/c;
.super Lx3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lx3/c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILx3/c$a;Lx3/c$b;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lx3/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILx3/c$a;Lx3/c$b;Ljava/lang/String;)V

    return-void
.end method
