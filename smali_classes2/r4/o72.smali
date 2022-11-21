.class public final Lr4/o72;
.super Lr4/bg1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/q72;Lr4/dh1;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lr4/bg1;-><init>(Lr4/dh1;Lr4/cs0;)V

    return-void
.end method


# virtual methods
.method public final e(Lr4/i61;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i61;",
            ")",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/j71;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lr4/i61;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i61;",
            ")",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/me1;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
