.class public final Lb3/p0;
.super Lr4/w94;
.source "SourceFile"


# instance fields
.field public final synthetic A:Ljava/util/Map;

.field public final synthetic B:Lr4/bm0;

.field public final synthetic z:[B


# direct methods
.method public constructor <init>(Lb3/v0;ILjava/lang/String;Lr4/v84;Lr4/u84;[BLjava/util/Map;Lr4/bm0;)V
    .locals 0

    iput-object p6, p0, Lb3/p0;->z:[B

    iput-object p7, p0, Lb3/p0;->A:Ljava/util/Map;

    iput-object p8, p0, Lb3/p0;->B:Lr4/bm0;

    invoke-direct {p0, p2, p3, p4, p5}, Lr4/w94;-><init>(ILjava/lang/String;Lr4/v84;Lr4/u84;)V

    return-void
.end method


# virtual methods
.method public final B()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb3/p0;->A:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final C()[B
    .locals 1

    iget-object v0, p0, Lb3/p0;->z:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic I(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr4/w94;->O(Ljava/lang/String;)V

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb3/p0;->B:Lr4/bm0;

    invoke-virtual {v0, p1}, Lr4/bm0;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lr4/w94;->O(Ljava/lang/String;)V

    return-void
.end method
