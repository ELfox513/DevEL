.class Lcom/prineside/tdi2/managers/ReplayManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ReplayManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/utils/ObjectPair;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ReplayManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ReplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$3;->a:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/utils/ObjectPair;Lcom/prineside/tdi2/utils/ObjectPair;)I
    .locals 3

    iget-object p2, p2, Lcom/prineside/tdi2/utils/ObjectPair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Lcom/prineside/tdi2/utils/ObjectPair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v2, v0, p1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/utils/ObjectPair;

    check-cast p2, Lcom/prineside/tdi2/utils/ObjectPair;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/ReplayManager$3;->compare(Lcom/prineside/tdi2/utils/ObjectPair;Lcom/prineside/tdi2/utils/ObjectPair;)I

    move-result p1

    return p1
.end method
