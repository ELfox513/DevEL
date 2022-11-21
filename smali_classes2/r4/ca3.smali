.class public final Lr4/ca3;
.super Lr4/k93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lr4/ao3;",
        "PublicKeyProtoT::",
        "Lr4/ao3;",
        ">",
        "Lr4/k93<",
        "TPrimitiveT;TKeyProtoT;>;"
    }
.end annotation


# instance fields
.field public final c:Lr4/da3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/da3<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field public final d:Lr4/q93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/q93<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/da3;Lr4/q93;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/da3<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lr4/q93<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lr4/k93;-><init>(Lr4/q93;Ljava/lang/Class;)V

    iput-object p1, p0, Lr4/ca3;->c:Lr4/da3;

    iput-object p2, p0, Lr4/ca3;->d:Lr4/q93;

    return-void
.end method
