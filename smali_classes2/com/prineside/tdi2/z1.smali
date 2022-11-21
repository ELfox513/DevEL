.class public final synthetic Lcom/prineside/tdi2/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Tower;

.field public final synthetic b:Lcom/prineside/tdi2/utils/ObjectFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/z1;->a:Lcom/prineside/tdi2/Tower;

    iput-object p2, p0, Lcom/prineside/tdi2/z1;->b:Lcom/prineside/tdi2/utils/ObjectFilter;

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/z1;->a:Lcom/prineside/tdi2/Tower;

    iget-object v1, p0, Lcom/prineside/tdi2/z1;->b:Lcom/prineside/tdi2/utils/ObjectFilter;

    check-cast p1, Lcom/prineside/tdi2/Enemy;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Tower;->a(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/Enemy;)Z

    move-result p1

    return p1
.end method
