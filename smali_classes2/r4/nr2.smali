.class public final Lr4/nr2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lr4/r61<",
        "TA;>;A:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/dr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/dr2<",
            "TU;TA;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/pr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/pr2<",
            "TU;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/dr2;Lr4/pr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/dr2<",
            "TU;TA;>;",
            "Lr4/pr2<",
            "TU;TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/nr2;->a:Lr4/dr2;

    iput-object p2, p0, Lr4/nr2;->b:Lr4/pr2;

    return-void
.end method
