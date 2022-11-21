.class public final Lz4/m0$b;
.super Lz4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lz4/m0<",
        "TT;*>;>",
        "Lz4/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lz4/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz4/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz4/e;-><init>()V

    iput-object p1, p0, Lz4/m0$b;->b:Lz4/m0;

    return-void
.end method
