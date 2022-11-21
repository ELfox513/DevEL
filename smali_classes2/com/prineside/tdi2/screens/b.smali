.class public final synthetic Lcom/prineside/tdi2/screens/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/b;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/b;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/b;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;->a(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
