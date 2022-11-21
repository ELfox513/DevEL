.class public final synthetic Lcom/prineside/tdi2/screens/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/utils/IntPair;

    check-cast p2, Lcom/prineside/tdi2/utils/IntPair;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/SettingsScreen;->g(Lcom/prineside/tdi2/utils/IntPair;Lcom/prineside/tdi2/utils/IntPair;)I

    move-result p1

    return p1
.end method
