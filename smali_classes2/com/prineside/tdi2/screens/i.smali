.class public final synthetic Lcom/prineside/tdi2/screens/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$22;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/i;->a:Lcom/prineside/tdi2/screens/AccountScreen$22;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/i;->a:Lcom/prineside/tdi2/screens/AccountScreen$22;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->b(Lcom/prineside/tdi2/screens/AccountScreen$22;Ljava/lang/Boolean;)V

    return-void
.end method
