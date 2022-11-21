.class public final Lr4/qn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lr4/wn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/sn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lr4/wn;

    check-cast p2, Lr4/wn;

    iget v0, p1, Lr4/wn;->c:I

    iget v1, p2, Lr4/wn;->c:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p1, Lr4/wn;->a:J

    iget-wide p1, p2, Lr4/wn;->a:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
