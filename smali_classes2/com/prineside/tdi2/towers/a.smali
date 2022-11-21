.class public final synthetic Lcom/prineside/tdi2/towers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/Enemy;

    invoke-static {p1}, Lcom/prineside/tdi2/towers/CrusherTower;->f(Lcom/prineside/tdi2/Enemy;)Z

    move-result p1

    return p1
.end method
