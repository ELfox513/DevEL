.class public final Lr4/hr2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/uq2;

.field public final b:Lr4/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/qr2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/uq2;Lr4/qr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/uq2;",
            "Lr4/qr2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hr2;->a:Lr4/uq2;

    iput-object p2, p0, Lr4/hr2;->b:Lr4/qr2;

    return-void
.end method
