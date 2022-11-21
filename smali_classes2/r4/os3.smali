.class public final Lr4/os3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/ht3;

.field public final b:Lr4/gt3;

.field public final c:Lr4/ns3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ns3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/ht3;Lr4/gt3;Lr4/ns3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ht3;",
            "Lr4/gt3;",
            "Lr4/ns3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/os3;->a:Lr4/ht3;

    iput-object p2, p0, Lr4/os3;->b:Lr4/gt3;

    iput-object p3, p0, Lr4/os3;->c:Lr4/ns3;

    return-void
.end method
