.class public final Lr4/a72;
.super Lr4/o11;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/c72;Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4, p5}, Lr4/o11;-><init>(Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/util/Set;)Lr4/w81;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;>;)",
            "Lr4/w81;"
        }
    .end annotation

    new-instance p1, Lr4/w81;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lr4/w81;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
