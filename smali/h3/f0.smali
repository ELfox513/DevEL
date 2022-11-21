.class public final Lh3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lh3/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh3/g0;


# direct methods
.method public constructor <init>(Lh3/g0;)V
    .locals 0

    iput-object p1, p0, Lh3/f0;->a:Lh3/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "SignalGeneratorImpl.initializeWebViewForSignalCollection"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lh3/f0;->a:Lh3/g0;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sgf"

    const-string v3, "sgf_reason"

    invoke-static {v0, v2, v3, v1}, Lh3/g0;->I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Failed to initialize webview for loading SDKCore. "

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lh3/j;

    const-string p1, "Initialized webview successfully for SDKCore."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method
