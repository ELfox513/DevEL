.class public final Lr4/oj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lr4/id;",
        ">;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(Lr4/pj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/id;

    check-cast p2, Lr4/id;

    iget p2, p2, Lr4/id;->b:I

    iget p1, p1, Lr4/id;->b:I

    sub-int/2addr p2, p1

    return p2
.end method
