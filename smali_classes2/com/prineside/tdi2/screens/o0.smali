.class public final synthetic Lcom/prineside/tdi2/screens/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/SettingsScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/o0;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/o0;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->d(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/Boolean;)V

    return-void
.end method
