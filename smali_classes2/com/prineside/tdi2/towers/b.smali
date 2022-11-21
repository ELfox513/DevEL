.class public final synthetic Lcom/prineside/tdi2/towers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/towers/MissileTower;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/MissileTower;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/towers/b;->a:Lcom/prineside/tdi2/towers/MissileTower;

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/b;->a:Lcom/prineside/tdi2/towers/MissileTower;

    check-cast p1, Lcom/prineside/tdi2/Enemy;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/towers/MissileTower;->f(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/Enemy;)Z

    move-result p1

    return p1
.end method
