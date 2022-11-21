.class public abstract Lr4/da3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyProtoT::",
        "Lr4/ao3;",
        "PublicKeyProtoT::",
        "Lr4/ao3;",
        ">",
        "Lr4/q93<",
        "TKeyProtoT;>;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Lr4/p93;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPublicKeyProtoT;>;[",
            "Lr4/p93<",
            "*TKeyProtoT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-direct {p0, p1, p3}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method
